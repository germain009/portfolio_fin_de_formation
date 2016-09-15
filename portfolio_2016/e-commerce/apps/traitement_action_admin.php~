<?php
if(isset($_POST['creer']))
{  
    $poid = $_POST['poids'];//pour calculer le fishing
    //controle de l'extension fichier
    $path  = substr($_FILES['image']['name'], -3, 4);
    $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
    if (in_array($path, $extension_valide))
    {
	    $uploaddir = 'public/images/';//le fichier ou sera stocké l'immage
	    $uploadfile = $uploaddir . basename($_FILES['image']['name']);//recupere le nom du fichier
	    if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) 
	    {
		$img = $_FILES['image']['name'];
                $manager_poid = new PoidManager($link);
                //je recupere les poids inférieurs au pois de l'article pour recuperer le 1er result
                $poids = $manager_poid->getForFishing($poid);
                $shipping = $poids->getPrix();
                
		    try
		    {
				$manager= new ProductManager($link);
				$manager->create($_POST,$img,$shipping);
		    }
		     catch (Exception $e)
		    {
			$error = $e->getMessage();
		    }
	    }
	    else
	    {
		 $error =  "vous n'avez pas coisi de fichier ";
	    }
    }
    else
    {
        $error = "Mauvais format fichier";
    }
}



?>
