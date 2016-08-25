<?php
class User
{
	//propriétés
	private $id;
	private $sexe;
	private $situation;
	private $pseudo;
        private $password;
        private $email;
        private $apropos;
        private $avatar;
       
	
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
	public function getSexe()
	{
		return $this->sexe;
	}
	
	public function getSituation()
	{
		return $this->situation;
	}
	public function getPseudo()
	{
		return $this->pseudo;
	}
        public function getPassword()
	{
		return $this->password;
	}
        public function getEmail()
	{
		return $this->email;
	}
        public function getApropos()
	{
		return $this->apropos;
	}
        public function getAvatar()
	{
		return $this->avatar;
	}
        















	

	public function setSexe($sexe)
	{
		
		$this->sexe = $sexe;
	}



	public function setSituation($situation)
	{
		
		
		$this->situation = $situation;
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

        public function setEmail($email)
        {
            if (filter_var($email, FILTER_VALIDATE_EMAIL) == false)
		{
			throw new Exception("Ce n'est pas une adresse mail");
		}
                
                     $this->email = $email ;
        }

        public function setApropos($apropos)
        {
            
		if (strlen($apropos)<2)
		{
			throw new Exception("Texte trop court (<2)");
		}
		else if (strlen($apropos)>450)
		{
			throw new Exception("Texte trop long (>450)");
		}
	
		$this->apropos = $apropos;
	}
        public function setAvatar($avatar)
        {

         $path = pathinfo($avatar);

         $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
 
         if ( in_array($path['extension'], $extension_valide))
         {
             $this->avatar = $avatar ;
         }
         else
         {
             throw new Exception("erreur format fichier");
         }
      }
}
