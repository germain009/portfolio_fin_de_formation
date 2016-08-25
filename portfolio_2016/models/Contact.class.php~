<?php
class Contact
{
	
	private $id;
	private $nom;
	private $email;
	private $message;
	
	private $link;

	
	public function __construct($link)
   	{
    	$this->link = $link;
   	}
	
	public function getId()
	{
		return $this->id;
	}
	public function getNom()
	{
		return $this->nom;
	}
	
	public function getEmail()
	{
		return $this->email;
	}
	public function getMessage()
	{
		return $this->message;
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



	public function setEmail($email)
	{
		if (filter_var($email, FILTER_VALIDATE_EMAIL) == false)
		{
			throw new Exception("Ce n'est pas une adresse mail");
		}
		
		$this->email = $email;
	}

        public function setMessage($message)
	{
		if (strlen($message)<2)
		{
			throw new Exception("Message trop court (<2)");
		}
		else if (strlen($message)>500)
		{
			throw new Exception("Message trop long (>450)");
		}
	
		$this->message = $message;
	}


	

}
