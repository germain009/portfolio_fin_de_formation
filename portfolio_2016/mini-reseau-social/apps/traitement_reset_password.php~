<?php

if(isset($_POST['submit']) && isset($_POST['email']))
{
    if(!empty($_POST['email']))
    {
        $email = htmlentities($_POST['email']);
        //verification filter var
        if(filter_var($email,FILTER_VALIDATE_EMAIL))
        {
            $manager = new UserManager($link);
            $verif_email = $manager->getByEmail($email);
            //verification de la presance de l'email dans la table
            if(sizeof($verif_email) > 0 )
            {
                $_SESSION['email'] = $email;
                $pseudo = $verif_email->getPseudo();
                $code = "";
                //fabrication du code de verification
                for($i = 0 ; $i < 8 ; $i ++)
                {
                    $code .= mt_rand(0,9);
                }
                $manager = new RecuperationManager($link);
                $verif = $manager->getByEmail($_SESSION['email']);
                //si le membre a deja update son password , modification du code 
                if(sizeof($verif) > 0 )
                {
                    $verif->setCode($code);
                    //verif remis a 0 pour eviter d'update le password en se servant de l'url
                    $verif->setValide(0);
                    $manager->update($verif);
                    
                }
                else
                {
                    //creation dans la table recuperation 
                    $manager->create($_SESSION['email'],$code);
                }

                    //envoi d'un mail avec le code 
                    header("Location:index.php?page=verif_code");


         
                
             
            }
            else
            {
                $error = "Cette adresse mail n'existe pas";
            }
          
        }
        else
        {
            $error = "Ce n'est pas une adresse mail";
        }
        
 
    }
    else
    {
    $error = "Veuillez entrer votre adresse mail";
    }  
    
}





?>
