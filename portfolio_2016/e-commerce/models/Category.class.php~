<?php
class Category
{
	//propriétés
	private $id;
	private $name;
        
	
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
	public function getName()
	{
		return $this->name;
	}
	
	











	

	
        public function setName($name)
        {
            
		if (strlen($name)<2)
		{
			throw new Exception("Nom trop court (<2)");
		}
		else if (strlen($titre)>70)
		{
			throw new Exception("Nom trop long (>70)");
		}
	
		$this->name = $name;
	}

        

}
