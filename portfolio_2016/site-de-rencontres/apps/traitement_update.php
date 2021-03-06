<?php

if(isset($_POST['submit']))
{
    try
    {     
        $manager = new UserManager($link);
        $user = $manager->getByPseudo($_SESSION['pseudo']);
        $user->setSituation($_POST['situation']);
        $user->setEmail($_POST['email']);
        $user->setApropos($_POST['apropos']);
        //set des infos pour les get et update
        $manager->update($user);
   
        header('Location:index.php?page=membre') ;
        exit;
                
    }
    catch (Exception $e)
    {
        $error = $e->getMessage();
    }
}



if(isset($_POST['submit_photo']))
{
    
    $path  = substr($_FILES['photo']['name'], -3, 4);
    $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
    if (in_array($path, $extension_valide))
    {
		$pseudo = $_SESSION['pseudo'];
		$uploaddir = 'public/images/'.$pseudo.'/';//le fichier ou sera stocké l'immage
		$uploadfile = $uploaddir . basename($_FILES['photo']['name']);//recupere le nom du fichier
		if (move_uploaded_file($_FILES['photo']['tmp_name'], $uploadfile)) //s l'expression est true (s'il y a un fichier)
		{
		    $pseudo = $_SESSION['pseudo'];
		    $manager = new PhotoManager($link);
		    $nombre_photos = $manager->getByPseudo($pseudo);
		    $limit = sizeof($nombre_photos);
		    if( $limit < 10 )
		    {
		        try
				{
				    $manager = new PhotoManager($link);
				    $pseudo = $_SESSION['pseudo'];
				    $photo_ajout = $_FILES['photo']['name'];
				    $manager->create($pseudo,$photo_ajout);
				    header('Location:index.php?page=update');
			} 
			catch (Exception $e)
			{
				$error2 = $e->getMessage();
			}
		    }
		    else
		    {
		        $error2 = "vous avez deja 10 photos";
		    }
		}
		else 
		{
		    $error2 =  "vous n'avez pas coisi de fichier ";
		}
    }
    else
    {
        $error2 =  "Mauvais format fichier ";
    }
}

if(isset($_POST['submit_avatar']))
{

    $path  = substr($_FILES['avatar']['name'], -3, 4);
    $extension_valide = array('pdf', 'tif', 'bmp', 'jpg','png');
    if (in_array($path, $extension_valide))
    {
	    $pseudo = $_SESSION['pseudo'];
	    $uploaddir = 'public/images/'.$pseudo.'/';//le fichier ou sera stocké l'immage
	    $uploadfile = $uploaddir . basename($_FILES['avatar']['name']);//recupere le nom du fichier
	    if (move_uploaded_file($_FILES['avatar']['tmp_name'], $uploadfile)) //s l'expression est true (s'il y a un fichier)
	    {
		    try
		    {
		        $manager = new UserManager($link);
		        $user = $manager->getByPseudo($_SESSION['pseudo']);
		        $user->setAvatar($_FILES['avatar']['name']);//set de l'avatar pour le get ut update(si le format est valide (setAvatar))
		        $manager->updateAvatar($user);
		        header('Location:index.php?page=membre');
		    } 
		    catch (Exception $e)
		    {
		        $error3 = $e->getMessage();
		    }
        }
        else 
        {
            $error3 =  "vous n'avez pas coisi de fichier ";
        }
    }
    else
    {
        $error3 = "Veuillez selectionner un fichier image";
    }
}



?>
