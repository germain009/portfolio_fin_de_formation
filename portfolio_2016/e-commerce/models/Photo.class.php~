<?php
class Photo
{
	//propriétés
	private $id;
	private $pseudo;
        private $photo;
	
        
       
	
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
	public function getPseudo()
	{
		return $this->pseudo;
	}
	public function getPhoto()
	{
		return $this->photo;
	}
	
	








	

	public function setPseudo($pseudo)
	{
		
		$this->pseudo = $pseudo;
	}
        public function setPhoto($photo)
        {

         $path = pathinfo($photo);

         $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
 
         if ( in_array($path['extension'], $extension_valide))//recupere l'extension pour la comparer
         {
             $this->photo = $photo;
         }
         else
         {
             throw new Exception("erreur format fichier");
         }
      }
        

}
