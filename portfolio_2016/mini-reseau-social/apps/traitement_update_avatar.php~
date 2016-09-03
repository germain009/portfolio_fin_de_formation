<?php

if(isset($_POST['submit']))
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
            $error = $e->getMessage();
        }
    }
    else 
    {
        $error =  "vous n'avez pas coisi de fichier ";
    }
}

?>
