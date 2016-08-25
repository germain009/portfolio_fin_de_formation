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
        //retourne les infos de la personne connectée
        public function getMembres()
	{
            $list = [];
	    $query = "SELECT * FROM users WHERE pseudo != '{$_SESSION['pseudo']}'";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        
	//ci-dessous, on récupère un user par l'email
	public function getByEmail($email)
	{
	
	    $query="SELECT * FROM users WHERE email = '".$email."'";
            $res= mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"User", [$this->link]);
	    return $user;
	}
        //on recupere les infos d'un user avec son pseudo
        public function getByPseudo($pseudo)
	{
            $pseudo=mysqli_real_escape_string($this->link,$pseudo);
	    $query="SELECT * FROM users WHERE pseudo='".$pseudo."'";
	    $res=mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"User", [$this->link]);
	    return $user;
        }

        //fonction pour verifier si un pseudo est deja utilisé
        public function pseudoIncorect()
        {
            $query="SELECT pseudo FROM users
                    WHERE pseudo = '{$_GET['pseudo']}' 
                    AND pseudo != '{$_SESSION['pseudo']}'";
	    $res= mysqli_query($this->link,$query);
	    $info =mysqli_fetch_object($res,"User", [$this->link]);
            return $info;
         }

	//fonction pour créer un utilisateur
	public function create($data)
	{
            $user = new User($this->link);
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
            if (!isset($data['email']))
	    {
	    throw new Exception("Paramètre manquant: email");
	    }
            if (!isset($data['apropos']))
	    {
                throw new Exception("Paramètre manquant: A propos");
	    }
                $user->setSexe($data['sexe']);
                $user->setSituation($data['situation']);
		$user->setPseudo($data['pseudo']);
		$user->setPassword($data['password']);
                $user->setEmail($data['email']);
                $user->setApropos($data['apropos']);
		
		$sexe= mysqli_real_escape_string($this->link,$user->getSexe());
		$situation= mysqli_real_escape_string($this->link,$user->getSituation());
                $pseudo= mysqli_real_escape_string($this->link,$user->getPseudo());
		$password= mysqli_real_escape_string($this->link,$user->getPassword());
                $email= mysqli_real_escape_string($this->link,$user->getEmail());
                $apropos= mysqli_real_escape_string($this->link,$user->getApropos());
		
		$query="INSERT INTO users 
                        (sexe,situation,pseudo,
                        password,email,apropos,avatar) 
			VALUES ('".$sexe."', '".$situation."',
                                '".$pseudo."', '".$password."',
                                '".$email."','".$apropos."',
                                'default.jpg')";
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
        //fonction pour modifier l'avatar 
        public function updateAvatar(User $user)
	{
            $id=$user->getId();
	    $avatar= mysqli_real_escape_string($this->link,$user->getAvatar());
		
            $query="UPDATE users SET
		    avatar='".$avatar."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }


}
