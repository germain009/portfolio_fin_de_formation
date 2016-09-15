<?php
class UserManager
{
    private $link;

        public function __construct($link)
	{
	    $this->link = $link;
	}
	//retourne toutes les infos de la table users
        public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM users";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        //retourne les infos des membres connectés
        public function getAllConnecte()
	{
            $list = [];
	    $query = "SELECT * FROM users
                      WHERE connecte = 1 ";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        public function getByPseudo($pseudo)
	{
            $pseudo=mysqli_real_escape_string($this->link,$pseudo);
	    $query="SELECT * FROM users WHERE pseudo='".$pseudo."'";
	    $res=mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"User", [$this->link]);
	    return $user;
        }

        

	//fonction pour créer un utilisateur
	public function create($data)
	{
            $user = new User($this->link);
            
            if (!isset($data['nom'])) 
	    {
	        throw new Exception("Paramètre manquant:nom");
	    }
            if (!isset($data['prenom'])) 
	    {
	        throw new Exception("Paramètre manquant:prenom");
	    }
            if (!isset($data['adresse'])) 
	    {
	        throw new Exception("Paramètre manquant:adresse");
	    }
            if (!isset($data['code_postal'])) 
	    {
	        throw new Exception("Paramètre manquant:code postal");
	    }
            if (!isset($data['ville'])) 
	    {
	        throw new Exception("Paramètre manquant:ville");
	    }
	    if (!isset($data['pseudo'])) 
	    {
	        throw new Exception("Paramètre manquant:pseudo");
	    }
            if (!isset($data["password"],$data["passwordBis"]))
	    {
	        throw new Exception("Paramètre manquant: password");
	    }
	    if ($data['password']!= $data['passwordBis'])
	    {
	        throw new Exception("Les passwords ne correspondent pas");			
            }
            
           
                $user->setNom($data['nom']);
                $user->setPrenom($data['prenom']);
                $user->setAdresse($data['adresse']);
                $user->setCodePostal($data['code_postal']);
                $user->setVille($data['ville']);
                $user->setPseudo($data['pseudo']);
                $user->setPassword($data['password']);
                
		$nom= mysqli_real_escape_string($this->link,$user->getNom());
                $prenom= mysqli_real_escape_string($this->link,$user->getPrenom());
                $adresse= mysqli_real_escape_string($this->link,$user->getAdresse());
                $code_postal= mysqli_real_escape_string($this->link,$user->getCodePostal());
                $ville= mysqli_real_escape_string($this->link,$user->getVille());
		$pseudo= mysqli_real_escape_string($this->link,$user->getPseudo());
		$password= mysqli_real_escape_string($this->link,$user->getPassword());
                
		$query="INSERT INTO users 
                        (nom,prenom,adresse,code_postal,ville,pseudo,password) 
			VALUES ('".$nom."', '".$prenom."','".$adresse."','".$code_postal."'
                              , '".$ville."','".$pseudo."', '".$password."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}
        //fonction pour que l'utilisateur modifie ses données
        public function update(User $user)
	{
            $id=$user->getId();
	    $situation= mysqli_real_escape_string($this->link,$user->getSituation());
	    $email= mysqli_real_escape_string($this->link,$user->getEmail());
	    $apropos= mysqli_real_escape_string($this->link,$user->getApropos());
		
            $query="UPDATE users SET
		    situation='".$situation."',
		    email='".$email."',
		    apropos='".$apropos."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
        }
        //pour identifier l'utilisateur comme conneté
        public function connecte(User $user)
	{
            $id=$user->getId();
	    $connecte= mysqli_real_escape_string($this->link,$user->getConnecte());
		
            $query="UPDATE users SET
		    connecte='".$connecte."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
            var_dump($res);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }
        
        
        


}
