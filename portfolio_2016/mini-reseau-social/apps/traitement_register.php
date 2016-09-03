


<?php


if (isset($_POST['submit']))
{
    $email = $_POST['email'];
    try
    {        
        $manager = new UserManager($link);
        $user= $manager->getByPseudo($_POST['pseudo']);
        $userMail = $manager->getByEmail($email);
        if(sizeof($user) > 0 )
        {
            $error = "ce pseudo est deja utilisé ";//si le pseudo est present dans la table users (getByPseudo)
        }
        elseif(sizeof($userMail) > 0 )
        {
            $error = "cet email est deja utilisé " ;//si l'email est present dans la table users  (getByEmail)
        }
        else
        {
            $user = $manager->create($_POST);//si tout est ok create enregistre les données(POST) dans la table //users 
            $pseudo = $_POST['pseudo'];
            mkdir("public/images/".$pseudo);      
		
	    header('Location:index.php?page=login') ;
            exit;
        }
    }
    catch (Exception $e)
    {
        $error = $e->getMessage();
    }
}
