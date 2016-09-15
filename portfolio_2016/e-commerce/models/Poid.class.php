<?php
class Poid
{
	//propriétés
	private $id;
	private $poid;
        private $prix;
        
	
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
	public function getPoid()
	{
		return $this->poid;
	}
        public function getPrix()
	{
		return $this->prix;
	}
	
	











	

	
        public function setPoid($poid)
        {
            
		if (!is_numeric($poid))
		{
			throw new Exception("Veuillez entrer un nombre (poids)");
		}
	
		$this->poid = $poid;
	}

        public function setPrix($prix)
        {
            
		if (!is_numeric($prix))
		{
			throw new Exception("Veuillez entrer un nombre (prix)");
		}
	
		$this->prix = $prix;
	}

        

}
