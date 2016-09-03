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
    $uploaddir = 'public/images/';//le fichier ou sera stocké l'immage
    $uploadfile = $uploaddir . basename($_FILES['photo']['name']);//recupere le nom du fichier
    if (move_uploaded_file($_FILES['photo']['tmp_name'], $uploadfile)) //s l'expression est true (s'il y a un fichier)
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
        $error2 =  "vous n'avez pas coisi de fichier ";
    }
}


?>
