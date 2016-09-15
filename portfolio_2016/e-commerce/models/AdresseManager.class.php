<?php
class AdresseManager
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
	    $query = "SELECT * FROM adresses";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Adresse", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        

        public function getByIdUser($id_user)
	{
            $id_user=mysqli_real_escape_string($this->link,$id_user);
	    $query="SELECT * FROM adresses WHERE id_user='".$id_user."' 
                    ORDER BY id DESC LIMIT 0,1";
	    $res=mysqli_query($this->link,$query);
	    $adresse=mysqli_fetch_object($res,"Adresse", [$this->link]);
	    return $adresse;
        }

        

	//fonction pour créer un utilisateur
	public function create($data,$id_user)
	{
            $adresse = new Adresse($this->link);
            
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
               
           
                $adresse->setIdUser($id_user);
                $adresse->setNom($data['nom']);
                $adresse->setPrenom($data['prenom']);
                $adresse->setAdresse($data['adresse']);
                $adresse->setCodePostal($data['code_postal']);
                $adresse->setVille($data['ville']);
                
                $id_user= mysqli_real_escape_string($this->link,$adresse->getIdUser());
		$nom= mysqli_real_escape_string($this->link,$adresse->getNom());
                $code_postal= mysqli_real_escape_string($this->link,$adresse->getCodePostal());
                $ville= mysqli_real_escape_string($this->link,$adresse->getVille());
                $prenom= mysqli_real_escape_string($this->link,$adresse->getPrenom());
                $adresse= mysqli_real_escape_string($this->link,$adresse->getAdresse());
                
                
                
		
		$query="INSERT INTO adresses
                        (id_user,nom,prenom,adresse,code_postal,ville) 
			VALUES ('".$id_user."','".$nom."', '".$prenom."','".$adresse."',
                                '".$code_postal."','".$ville."'
                             )";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}
        
}
