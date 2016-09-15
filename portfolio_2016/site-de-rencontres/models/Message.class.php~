<?php
class Message
{
	//propriétés
	private $id;
	private $a;
        private $de;
	private $sujet;
	private $message;
        private $date;
        private $date_vue;
        
       
	
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
	public function getA()
	{
		return $this->a;
	}
	public function getDe()
	{
		return $this->de;
	}
	
	public function getSujet()
	{
		return $this->sujet;
	}
	public function getMessage()
	{
		return $this->message;
	}
        
        public function getDate()
	{
		return $this->date;
	}
        public function getDateVue()
	{
		return $this->date_vue;
	}
        










	

	public function setA($a)
	{
		
		$this->a = $a;
	}
        public function setDe($de)
	{
		
		$this->de = $de;
	}


	public function setSujet($sujet)
	{
             if (strlen($sujet)<4)
		{
			throw new Exception("Sujet trop court (<4)");
		}
		else if (strlen($sujet)>50)
		{
			throw new Exception("Sujet trop long (>45)");
		}
	
		$this->sujet = $sujet;
		
		
		
	}

        public function setMessage($message)
        {
            
		if (strlen($message)<15)
		{
			throw new Exception("Message trop court (<15)");
		}
		else if (strlen($message)>475)
		{
			throw new Exception("Message trop long (>475)");
		}
	
		$this->message = $message;
	}

        public function setDate($date)
	{
		
		
		$this->date = $date;
	}
        public function setDateVue($date_vue)
	{
		
		
		$this->date_vue = $date_vue;
	}

        



        

}
