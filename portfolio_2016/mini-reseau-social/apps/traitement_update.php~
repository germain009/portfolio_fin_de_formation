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


?>
