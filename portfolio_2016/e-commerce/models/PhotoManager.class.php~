<?php
class PhotoManager
{
    private $link;

        public function __construct($link)
	{
            $this->link = $link;
	}
        //function qui retourne l'ensemble des données de la table messages
	public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM photos";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Photo", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        public function getById($id)
	{
            $photo=mysqli_real_escape_string($this->link,$id);
	    $query="SELECT * FROM photos WHERE id='".$id."'";
	    $res=mysqli_query($this->link,$query);
	    $photo=mysqli_fetch_object($res,"Photo", [$this->link]);
           
	    return $photo;
        }

        public function getByPseudo($pseudo)
	{
            $list = [];
            $pseudo=mysqli_real_escape_string($this->link,$pseudo);
	    $query="SELECT * FROM photos WHERE pseudo='".$pseudo."'";
	    $res=mysqli_query($this->link,$query);
	    while($photos=mysqli_fetch_object($res,"Photo", [$this->link]))
            $list[] = $photos;
	    return $list;
        }
       
        //fonction qui enregistre une photo
	public function create($pseudo,$photo_ajout)
	{
            $photo = new Photo($this->link);
	    
                if (!isset($photo_ajout))
		{
		    throw new Exception("Paramètre manquant:photo"); 
		}
               

                
                $photo->setPseudo($pseudo);
                $photo->setPhoto($photo_ajout);
           
               
		$pseudo= mysqli_real_escape_string($this->link,$photo->getPseudo());
		$photo_insert= mysqli_real_escape_string($this->link,$photo->getPhoto());
             
                $query="INSERT INTO photos 
                        (pseudo,photo)
                         VALUES ('".$pseudo."','".$photo_insert."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
		    throw new Exception("Erreur interne");
		}
	}

        public function delete(Photo $photo)
          {
              $id = $photo->getId();
              $query = "DELETE FROM photos WHERE id = '".$id."'";
                        
		$res = mysqli_query($this->link, $query);
          }

        


}
