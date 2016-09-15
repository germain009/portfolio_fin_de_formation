<?php

if(isset($_POST['submit_pwd']))
{
    if(isset($_POST['password']) && $_POST['passwordBis'])
    {   //filtre des infos password 
        $password = htmlentities($_POST['password']);
        $passwordBis = htmlentities($_POST['passwordBis']);
        if(!empty($password) && !empty($passwordBis))
        {
            if($password == $passwordBis)
            {
                $manager = new RecuperationManager($link);
                $verif_valide = $manager->getByEmail($_SESSION['email']);
                //verification de la validation du code
                $valide_ok = $verif_valide->getValide();
                if($valide_ok == 1 )
                {
                    try
                    {
		            $manager = new UserManager($link);
		            $membre_modif = $manager->getByEmail($_SESSION['email']);
                            //update du password
		            $membre_modif->setPassword($password);
		            $manager->updatePassword($membre_modif);
		            header('Location:index.php?page=login');
                    }
                    catch(exception $e)
                    {
                        $error = $e->getMessage();
                    }
                }
                else
                {    //si la validitée du code n'est pas (valide = 1)
                    $error = "tu n'as pas validé le code";
                }
            }
            else
            {
                $error = "Vos password ne sont pas identiques";
            }

        }
        else
        {
            $error = "Veuillez remplir tout les champs";
        }

    }
    else
    {
        $error = "Veuillez remplir tout les champs";
    }
}

?>
