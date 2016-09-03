


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
            $old = umask(0);
            chmod("public/images/".$pseudo,0777);
            umask($old);
            if ($old != umask()) 
            {
            echo 'Une erreur est survenue lors de la modification des droits';
            }
                $sexe = $_POST['sexe'];
                if($sexe == 'Homme')
                {
                    copy("public/images/default_h.jpg","public/images/".$pseudo."/default.jpg");
                }
                elseif($sexe == 'Femme')
                {
                    copy("public/images/default_f.jpg","public/images/".$pseudo."/default.jpg");
                }
                header('Location:index.php?page=login') ;
                exit;
        }
    }
    catch (Exception $e)
    {
        $error = $e->getMessage();
    }
}
