<?php
class CommandeManager
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
      
        public function getByIdUser($id_user)
	{
            $id_user=mysqli_real_escape_string($this->link,$id_user);
	    $query="SELECT * FROM commandes WHERE id_user='".$id_user."'
                    ORDER BY id DESC LIMIT 0,1";
	    $res=mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"Commande", [$this->link]);
	    return $user;
        }
        
        
        public function getHistoriqueByIdUser($id_user)
	{
		$id_user = intval($id_user);
		$list = [];
		$query = "SELECT * FROM commandes WHERE id_user='".$id_user."'
                          AND reglee = 1 ";
		$res = mysqli_query($this->link, $query);
		while ($commande = mysqli_fetch_object($res, "Commande", [$this->link]))
			$list[] = $commande;
		return $list;
	}
        

        public function create($id_user,$id_produits,$nbr_produits)
	{
            $commande = new Commande($this->link);
          
                $date = new dateTime();
                $date_commande = $date->format('Y-m-d H:i:s');
                $commande->setDate($date_commande);
                $commande->setIdUser($id_user);
                $commande->setIdProduits($id_produits);
                $commande->setNbrProduits($nbr_produits);
                
                
		$date_cmd = mysqli_real_escape_string($this->link,$commande->getDate());
		$id_user = mysqli_real_escape_string($this->link,$commande->getIdUser());
                $id_produits = mysqli_real_escape_string($this->link,$commande->getIdProduits());
                $nbr_produits = mysqli_real_escape_string($this->link,$commande->getNbrProduits());
		
		$query="INSERT INTO commandes
                        (date,id_user,id_produits,nbr_produits) 
			VALUES ('".$date_cmd."','".$id_user."','".$id_produits."','".$nbr_produits."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}

        
        public function createDiferenteAdresse($id_user,$id_produits,$nbr_produits,$id_adresse)
	{
            $commande = new Commande($this->link);
                  
                $date = new dateTime();
                $date_commande = $date->format('Y-m-d H:i:s');
                $commande->setDate($date_commande);
                $commande->setIdUser($id_user);
                $commande->setIdProduits($id_produits);
                $commande->setNbrProduits($nbr_produits);
                $commande->setIdAdresse($id_adresse);
                
                
		$date_cmd = mysqli_real_escape_string($this->link,$commande->getDate());
		$id_user = mysqli_real_escape_string($this->link,$commande->getIdUser());
                $id_produits = mysqli_real_escape_string($this->link,$commande->getIdProduits());
                $nbr_produits = mysqli_real_escape_string($this->link,$commande->getNbrProduits());
                $id_adresse = mysqli_real_escape_string($this->link,$commande->getIdAdresse());
		
		$query="INSERT INTO commandes
                        (date,id_user,id_produits,nbr_produits,id_adresse) 
			VALUES ('".$date_cmd."','".$id_user."','".$id_produits."','".$nbr_produits."',
                                '".$id_adresse."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}

        public function updateReglee(Commande $commande)
	{
            $id=$commande->getId();
	    $reglee= mysqli_real_escape_string($this->link,$commande->getReglee());
	    $query="UPDATE commandes SET
		    reglee= 1 
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
            var_dump($res);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }
       
        
        


}
