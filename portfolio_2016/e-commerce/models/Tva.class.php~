<?php
class Tva
{
	//propriétés
	private $id;
	private $value;
       
        
	
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
	public function getValue()
	{
		return $this->value;
	}
        
	
	public function setPoid($tva)
        {
            if (!is_numeric($tva))
	    {
	        throw new Exception("Veuillez entrer un chiffre ");
	    }
	     $this->tva = $tva;
	}

}
