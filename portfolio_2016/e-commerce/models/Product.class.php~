<?php
class Product
{
	//propriétés
	private $id;
	private $titre;
        private $description;
        private $prix;
        private $stock;
        private $img;
        private $id_category;
        private $id_sous_category;
        private $tva;
        private $poid;
        private $shipping;
        
       
	
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
	public function getTitre()
	{
		return $this->titre;
	}
	
	
	public function getDescription()
	{
		return $this->description;
	}
        public function getPrix()
	{
		return $this->prix;
	}
        public function getStock()
	{
		return $this->stock;
	}
        public function getImg()
	{
		return $this->img;
	}
        public function getIdCategory()
	{
		return $this->id_category;
	}
        public function getIdSousCategory()
	{
		return $this->id_sous_category;
	}
        public function getTva()
	{
		return $this->tva;
	}
        public function getPoid()
	{
		return $this->poid;
	}
        public function getShipping()
	{
		return $this->shipping;
	}
       
       
        
        
        















	

	
        public function setTitre($titre)
        {
            
		if (strlen($titre)<2)
		{
			throw new Exception("Titre trop court (<2)");
		}
		else if (strlen($titre)>150)
		{
			throw new Exception("Titre trop long (>150)");
		}
	
		$this->titre = $titre;
	}

        

	public function setDescription($description)
	{
		if(strlen($description)<5)
		{
			throw new Exception("Description trop courte  (<5)");
		}
		// on va mettre dans l'objet le hash du pass en utilisant la méthode Password_bcrypt, avec le tableau d'options où on définit l'option Coût.
		$this->description = $description;
		// UPDATE
	}

        
        public function setPrix($prix)
        {
            if (!is_numeric($prix))
		{
			throw new Exception("Veuillez entrer un chiffre");
		}
           $this->prix = $prix;
        } 
        public function setStock($stock)
        {
            if (!is_numeric($stock))
		{
			throw new Exception("Veuillez entrer un chiffre");
		}
           $this->stock = $stock;
        } 
        public function setImg($img)
        {

         $path = pathinfo($img);

         $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
 
             if ( in_array($path['extension'], $extension_valide) == true )//recupere l'extension pour la comparer
             {
                 $this->img = $img ;
             }
             else
             {
                 throw new Exception("erreur format fichier");
             }
        }
        public function setIdCategory($id_category)
	{
		
                $this->id_category = $id_category;
        }

        public function setIdSousCategory($id_sous_category)
	{
		
                $this->id_sous_category = $id_sous_category;
        }

        public function setTva($tva)
	{
		if(!is_numeric($tva))
		{
			throw new Exception("Veuillez entrer un chiffre");
		}
		
		$this->tva = $tva;
	}
        public function setPoid($poid)
	{
	
		$this->poid = $poid;
	}
        public function setShipping($shipping)
	{
	
		$this->shipping = $shipping;
	}
}
