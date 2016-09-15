<?php
class Recuperation
{
	//propriétés
	private $id;
	private $email;
	private $code;
        private $valide;
       
        
       
	
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
	public function getEmail()
	{
		return $this->email;
	}
	
	public function getCode()
	{
		return $this->code;
	}
        public function getValide()
	{
		return $this->valide;
	}
        




        public function setEmail($email)
	{
		
		$this->email = $email;
	}



	public function setCode($code)
	{
		
		
		$this->code = $code;
	}

        public function setValide($valide)
	{
		
		
		$this->valide = $valide;
	}
        
        
}
