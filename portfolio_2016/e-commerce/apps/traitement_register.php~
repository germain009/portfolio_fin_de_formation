


<?php


if (isset($_POST['submit']))
{
    $pseudo = $_POST['pseudo'];
    try
    {        
        $manager = new UserManager($link);
        $user= $manager->getByPseudo($pseudo);
        if(sizeof($user) > 0 )
        {
            $error = "ce pseudo est deja utilisé ";//si le pseudo est present dans la table users (getByPseudo)
        }
        else
        {
            $user = $manager->create($_POST);//si tout est ok create enregistre les données(POST) dans la table //users 
            $pseudo = $_POST['pseudo'];
           
                header('Location:index.php?page=login') ;
                exit;
        }
    }
    catch (Exception $e)
    {
        $error = $e->getMessage();
    }
}
