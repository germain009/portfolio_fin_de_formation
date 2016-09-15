<?php
if(isset($_POST['modifier']) && isset($_GET['id']))
{
    $titre = $_POST['titre'];
    $description = $_POST['description'];
    $prix = $_POST['prix'];
    $stock = $_POST['stock'];
    $id_category = $_POST['id_category'];
    $poid = $_POST['poids'];
    $tva = $_POST['tva'];
    $id = $_GET['id'];
    //s'il y a un e image utiliser update_et_img
    if(isset($_FILES['image']))
    {
        $path  = substr($_FILES['image']['name'], -3, 4);
        $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
        if (in_array($path, $extension_valide))
        {
	    $uploaddir = 'public/images/';//le fichier ou sera stocké l'immage
	    $uploadfile = $uploaddir . basename($_FILES['image']['name']);//recupere le nom du fichier
	    if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) 
	    {
		$img = $_FILES['image']['name']; 
                $manager = new ProductManager($link);
                $modifier = $manager->getById($id);

                 try
                 {
	             $modifier->setTitre($titre);
	             $modifier->setDescription($description);
		     $modifier->setPrix($prix);
                     $modifier->setStock($stock);
	             $modifier->setImg($img);
		     $modifier->setIdCategory($id_category);
                     $modifier->setPoid($poid);
                     $modifier->setTva($tva);
		     $manager->update_et_img($modifier);
                  }
                  catch(Exception $e)
                  {
                      $error = $e->getMessage();
                  }

                
            }
            
        }
        else
        {
            $error = "Mauvais format fichier";
        }
    }
    //s'il n'y a pas d'image function update
    $manager = new ProductManager($link);
    $modifier = $manager->getById($id);
    try
    {
        $modifier->setTitre($titre);
	$modifier->setDescription($description);
	$modifier->setPrix($prix);
        $modifier->setStock($stock);
        $modifier->setIdCategory($id_category);
        $modifier->setPoid($poid);
        $modifier->setTva($tva);
	$manager->update($modifier);
    }
    catch(Exception $e)
    {
        $error = $e->getMessage();
    }
   header('Location:index.php?page=boutique');
    exit;

}



?>
