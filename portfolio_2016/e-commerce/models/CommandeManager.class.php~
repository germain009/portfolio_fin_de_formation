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
        

        public function create($id_user,$id_produits,$nbr_produits)
	{
            $commande = new Commande($this->link);
          
                $commande->setIdUser($id_user);
                $commande->setIdProduits($id_produits);
                $commande->setNbrProduits($nbr_produits);
                
                
		
		$id_user = mysqli_real_escape_string($this->link,$commande->getIdUser());
                $id_produits = mysqli_real_escape_string($this->link,$commande->getIdProduits());
                $nbr_produits = mysqli_real_escape_string($this->link,$commande->getNbrProduits());
		
		$query="INSERT INTO commandes
                        (id_user,id_produits,nbr_produits) 
			VALUES ('".$id_user."','".$id_produits."','".$nbr_produits."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}

        
        public function createDiferenteAdresse($id_user,$id_produits,$nbr_produits,$id_adresse)
	{
            $commande = new Commande($this->link);
          
                $commande->setIdUser($id_user);
                $commande->setIdProduits($id_produits);
                $commande->setNbrProduits($nbr_produits);
                $commande->setIdAdresse($id_adresse);
                
                
		
		$id_user = mysqli_real_escape_string($this->link,$commande->getIdUser());
                $id_produits = mysqli_real_escape_string($this->link,$commande->getIdProduits());
                $nbr_produits = mysqli_real_escape_string($this->link,$commande->getNbrProduits());
                $id_adresse = mysqli_real_escape_string($this->link,$commande->getIdAdresse());
		
		$query="INSERT INTO commandes
                        (id_user,id_produits,nbr_produits,id_adresse) 
			VALUES ('".$id_user."','".$id_produits."','".$nbr_produits."',
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
