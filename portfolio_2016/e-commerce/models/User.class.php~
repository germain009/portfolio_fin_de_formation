<?php
class User
{
	//propriétés
	private $id;
        private $nom;
        private $prenom;
        private $adresse;
        private $code_postal;
        private $ville;
	private $pseudo;
        private $password;
        private $connecte;
        
       
	
	private $link;

	
	public function __construct($link)
   	{
    	$this->link = $link;
   	}
	//méthodes
	//fonction suivante: lorsque appelée, va sortir l'Id de cet objet
	public function getId()
	{
		return $this->id;
	}
	public function getNom()
	{
		return $this->nom;
	}
        public function getPrenom()
	{
		return $this->prenom;
	}
        public function getAdresse()
	{
		return $this->adresse;
	}
        public function getCodePostal()
	{
		return $this->code_postal;
	}
        public function getVille()
	{
		return $this->ville;
	}
	
	
	public function getPseudo()
	{
		return $this->pseudo;
	}
        public function getPassword()
	{
		return $this->password;
	}
        
        public function getConnecte()
	{
		return $this->connecte;
	}
       
        















        public function setNom($nom)
        {
            
		if (strlen($nom)<2)
		{
			throw new Exception("Nom trop court (<2)");
		}
		else if (strlen($nom)>25)
		{
			throw new Exception("Nom trop long (>25)");
		}
	
		$this->nom = $nom;
	}

        public function setPrenom($prenom)
        {
            
		if (strlen($prenom)<2)
		{
			throw new Exception("Prenom trop court (<2)");
		}
		else if (strlen($prenom)>25)
		{
			throw new Exception("Prenom trop long (>25)");
		}
	
		$this->prenom = $prenom;
	}

        public function setAdresse($adresse)
        {
            
		if (strlen($adresse)<2)
		{
			throw new Exception("Adresse trop courte (<2)");
		}
		else if (strlen($adresse)>50)
		{
			throw new Exception("Pseudo trop long (>50)");
		}
	
		$this->adresse = $adresse;
	}

        public function setCodePostal($code_postal)
	{
		if (!preg_match("#[0-9]{5}$#", $code_postal))
			throw new Exception("Ce n'est pas un code postal");
		$this->code_postal = $code_postal;
	}

        public function setVille($ville)
        {
            
		if (strlen($ville)<2)
		{
			throw new Exception("Ville trop courte (<2)");
		}
		else if (strlen($ville)>35)
		{
			throw new Exception("Pseudo trop long (>35)");
		}
	
		$this->ville = $ville;
	}


        


	

	
        public function setPseudo($pseudo)
        {
            
		if (strlen($pseudo)<2)
		{
			throw new Exception("Pseudo trop court (<2)");
		}
		else if (strlen($pseudo)>15)
		{
			throw new Exception("Pseudo trop long (>15)");
		}
	
		$this->pseudo = $pseudo;
	}

        

	public function setPassword($password)
	{
		if(strlen($password)<5)
		{
			throw new Exception("Mot de passe trop court (<5)");
		}
		// on va mettre dans l'objet le hash du pass en utilisant la méthode Password_bcrypt, avec le tableau d'options où on définit l'option Coût.
		$this->password= password_hash($password,PASSWORD_BCRYPT, array("cost"=>8));
		// UPDATE
	}

        
        public function setConnecte($connecte)
        {
           $this->connecte = $connecte;
        }
}
