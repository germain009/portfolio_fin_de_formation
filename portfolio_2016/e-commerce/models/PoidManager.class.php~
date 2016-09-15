<?php
class PoidManager
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
	    $query = "SELECT * FROM poids";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Poid", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        public function getByPoid($poid)
	{
            $poid=mysqli_real_escape_string($this->link,$poid);
	    $query="SELECT * FROM poids WHERE poid='".$poid."'";
	    $res=mysqli_query($this->link,$query);
	    $infos=mysqli_fetch_object($res,"Poid", [$this->link]);
	    return $infos;
        }
        //fonction qui recherche la fourchette de prix en fonction du poids
        public function getForFishing($poid)
	{
            $poid=mysqli_real_escape_string($this->link,$poid);
	    $query="SELECT * FROM poids WHERE poid <= '".$poid."'
                    ORDER BY poid DESC LIMIT 0,1";
	    $res=mysqli_query($this->link,$query);
	    $info=mysqli_fetch_object($res,"Poid", [$this->link]);
	    return $info;
        }

        public function update(Poid $poid)
	{
            $id=$poid->getId();
	    $poid_modif= mysqli_real_escape_string($this->link,$poid->getPoid());
	    $prix= mysqli_real_escape_string($this->link,$poid->getPrix());
		
            $query="UPDATE poids SET
		    poid='".$poid_modif."',
		    prix='".$prix."'
                    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
        }     
        


}
