<?php
class ProductManager
{
    private $link;

        public function __construct($link)
	{
	    $this->link = $link;
	}
	//retourne toutes les infos de la table users
        public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM products";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Product", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        //retourne les deux derniers articles
        /*public function get2Derniers()
	{
            $list = [];
	    $query = "SELECT * FROM products ORDER BY id DESC LIMIT 0,2";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Product", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        //retourne les infos des membres connectés*/
      
        public function getById($id)
	{
            $id=mysqli_real_escape_string($this->link,$id);
	    $query="SELECT * FROM products WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    $product=mysqli_fetch_object($res,"Product", [$this->link]);
	    return $product;
        }
        public function getPrices($tbl)
        {
            $req='';
            
            for($i=0;$i<count($tbl);$i++)
            {
                $count = 0 ;
                while($count<count($tbl))
                {
                    $req .= "OR id =".$tbl[$i].' ';
                    $count ++;
                }
             }
            
           /* $res = substr($req,0,-1);*/
            
           
            $list = [];
            
            
            
	    $query = "SELECT prix,tva FROM products
                      WHERE id =".$tbl[0].' '.$req;
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Product", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
    


        public function getInfosProduct($tbl)
        {
            $req='';
            
            for($i=0;$i<count($tbl);$i++)
            {
                $count=0;
                while($count<count($tbl))
                {
                    $req .= "OR id =".$tbl[$i].' ';
                    $count ++;
                }
             };
            
            /*$res = substr($req,0,-1);*/
            
           
            $list = [];
            
            
            
	    $query = "SELECT titre,prix,tva,poid,stock,id FROM products
                      WHERE id =".$tbl[0].' '.$req;
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Product", [$this->link]))
	    $list[] = $info;
	    return $list;
         
        
    }

/*
        public function getByTitre($titre)
	{
            $pseudo=mysqli_real_escape_string($this->link,$titre);
	    $query="SELECT * FROM products WHERE titre='".$titre."'";
	    $res=mysqli_query($this->link,$query);
	    $product=mysqli_fetch_object($res,"Product", [$this->link]);
	    return $product;
        }
        public function getByPrix($prix)
	{
            $list = [];
            $pseudo=mysqli_real_escape_string($this->link,$prix);
	    $query="SELECT * FROM products WHERE prix='".$prix."'";
	    $res=mysqli_query($this->link,$query);
	    while($product=mysqli_fetch_object($res,"Product", [$this->link]));
            {
                $list [] = $product;
	    return $list;
            }
        }*/

        public function getByCategory($id_category)
	{
		$id_category = intval($id_category);
		$list = [];
		$query = "SELECT * FROM products WHERE id_category=".$id_category;
		$res = mysqli_query($this->link, $query);
		while ($products = mysqli_fetch_object($res, "Product", [$this->link]))
			$list[] = $products;
		return $list;
	}
        public function getByCategorySousCategory($id_category,$id_sous_category)
	{
		$id_category = intval($id_category);
                $id_sous_category = intval($id_sous_category);
		$list = [];
		$query = "SELECT * FROM products WHERE 
                          id_category='".$id_category."'
                          AND id_sous_category=".$id_sous_category;
		$res = mysqli_query($this->link, $query);
		while ($products = mysqli_fetch_object($res, "Product", [$this->link]))
			$list[] = $products;
		return $list;
	}


        

	//fonction pour créer un utilisateur
	public function create($data,$img,$shipping)
	{
            $product = new Product($this->link);
            
	    if (!isset($data['titre'])) 
	    {
	        throw new Exception("Paramètre manquant: titre");
	    }
            if (!isset($data["description"]))
	    {
	        throw new Exception("Paramètre manquant: description");
	    }
	    if (!isset($data['prix']))
	    {
	        throw new Exception("Paramètre manquant: prix");			
            }
            if (!isset($img)) 
	    {
	        throw new Exception("Paramètre manquant: image");
	    }
            
            
           
            
                $product->setTitre($data['titre']);
                $product->setDescription($data['description']);
                $product->setPrix($data['prix']);
                $product->setStock($data['stock']);
                $product->setImg($img);
                $product->setIdCategory($data['id_category']);
                $product->setIdSousCategory($data['id_sous_category']);
                $product->setTva($data['tva']);
                $product->setPoid($data['poids']);
                $product->setShipping($shipping);
                
                
		
		$titre = mysqli_real_escape_string($this->link,$product->getTitre());
		$description = mysqli_real_escape_string($this->link,$product->getDescription());
                $prix = mysqli_real_escape_string($this->link,$product->getPrix());
                $stock = mysqli_real_escape_string($this->link,$product->getStock());
                $image = mysqli_real_escape_string($this->link,$product->getImg());
                $id_category = mysqli_real_escape_string($this->link,$product->getIdCategory());
                $id_sous_category = mysqli_real_escape_string($this->link,$product->getIdSousCategory());
                $tva = mysqli_real_escape_string($this->link,$product->getTva());
                $poid = mysqli_real_escape_string($this->link,$product->getPoid());
                $frais = mysqli_real_escape_string($this->link,$product->getShipping());
                
                $prix_tva = ($prix + $frais)+((($prix + $frais) * $tva)/100);
		$query="INSERT INTO products 
                        (titre,description,prix,stock,img,id_category,
                         id_sous_category,tva,poid,shipping,
                         total_tva) 
			VALUES ('".$titre."', '".$description."','".$prix."','".$stock."',
                                '".$image."','".$id_category."',
                                '".$id_sous_category."','".$tva."','".$poid."',
                                '".$frais."','".$prix_tva."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}
        //fonction pour que l'utilisateur modifie ses données
        public function update(Product $product)
	{
            $id=$product->getId();
	    $titre= mysqli_real_escape_string($this->link,$product->getTitre());
	    $description= mysqli_real_escape_string($this->link,$product->getDescription());
	    $prix= mysqli_real_escape_string($this->link,$product->getPrix());
            $stock= mysqli_real_escape_string($this->link,$product->getStock());
            $id_category= mysqli_real_escape_string($this->link,$product->getIdCategory());
            $poids= mysqli_real_escape_string($this->link,$product->getPoid());
		
            $query="UPDATE products SET
		    titre='".$titre."',
		    description='".$description."',
		    prix='".$prix."',
                    stock='".$stock."',
                    id_category='".$id_category."',
                    poid='".$poids."'
                    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
        }

        public function update_et_img(Product $product)
	{
            $id=$product->getId();
	    $titre= mysqli_real_escape_string($this->link,$product->getTitre());
	    $description= mysqli_real_escape_string($this->link,$product->getDescription());
	    $prix= mysqli_real_escape_string($this->link,$product->getPrix());
            $stock= mysqli_real_escape_string($this->link,$product->getStock());
            $img= mysqli_real_escape_string($this->link,$product->getImg());
            $id_category= mysqli_real_escape_string($this->link,$product->getIdCategory());
            $poids= mysqli_real_escape_string($this->link,$product->getPoid());
		
            $query="UPDATE products SET
		    titre='".$titre."',
		    description='".$description."',
		    prix='".$prix."',
                    stock='".$stock."',
                    img='".$img."',
                    id_category='".$id_category."',
                    poid='".$poids."'
                    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
        }
 
        public function delete(Product $product)
        {
            $id = $product->getId();
            $query = "DELETE FROM products WHERE id='".$id."'";
	    $res = mysqli_query($this->link, $query);
         }
        //pour identifier l'utilisateur comme conneté
        public function connecte(User $user)
	{
            $id=$user->getId();
	    $connecte= mysqli_real_escape_string($this->link,$user->getConnecte());
		
            $query="UPDATE users SET
		    connecte='".$connecte."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
            var_dump($res);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }
        
        
        


}
