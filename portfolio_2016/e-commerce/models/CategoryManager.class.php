<?php
class CategoryManager
{
    private $link;

        public function __construct($link)
	{
	    $this->link = $link;
	}
	//retourne toutes les infos de la table categories
        public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM categories";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Category", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        
        //retourne category en fonction de l'id
      
        public function getById($id)
	{
            $pseudo=mysqli_real_escape_string($this->link,$id);
	    $query="SELECT * FROM categories WHERE id='".$id."'";
	    $res=mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"Category", [$this->link]);
	    return $user;
        }
        //retourne category en fonction du name
        public function getByName($name)
	{
            $pseudo=mysqli_real_escape_string($this->link,$titre);
	    $query="SELECT * FROM categories WHERE name ='".$name."'";
	    $res=mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"Product", [$this->link]);
	    return $user;
        }
       
        


}
