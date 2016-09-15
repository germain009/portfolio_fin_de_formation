<?php
class TvaManager
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
	    $query = "SELECT * FROM tva";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Tva", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

       

       
}
