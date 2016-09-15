<?php

if(isset($_POST['submit']))
{   //empecher l'envoi d'un msg a une personne non amis en se servant de l'url
    $manager = new UserManager($link);
    $verifUrl = $manager->pseudoIncorect();
        if(count($verifUrl) > 0 )
        {
            if(isset($_GET['pseudo'])&& !empty($_GET['pseudo']))
            {
                 $pseudo = $_GET['pseudo'];
                 $manager = new AmisManager($link);
                 $verif_invit = $manager->verif_active();
                 var_dump($verif_invit);
                 if(sizeof($verif_invit) > 0 )
                 {
	              try
	              {
		          $manager = new MessageManager($link);
		          $manager->create($_POST);
		          header("Location:index.php?page=profil&pseudo=". $pseudo );
	              }
	              catch (Exception $e)
	              {
		          $error = $e->getMessage();
	              }
                 }
                 else
                 {
                  echo 'Vous n\'avez pas envoyé d\'invitation';
                 }
                 

            
            
                
        }
           else
            {
                echo "vous n'etes pas amis avec '{$_GET['pseudo']}'";
            }  
         }
         else
         {
             header('Location:index.php?page=membre');
         }
    
    
}

?>
