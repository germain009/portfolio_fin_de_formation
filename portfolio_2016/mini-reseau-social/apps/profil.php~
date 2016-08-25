<?php

if(isset($_SESSION['pseudo']) && (isset($_GET['pseudo'])) && ($_GET['pseudo'] != $_SESSION['pseudo']))
{
    $verifManager = new AmisManager($link);
    $verifActive = $verifManager->verif_active();
    $pseudo = $verifManager->verif_invitation();
    
    
    

    

    
    

    $verifExp = $verifManager->verif_expediteur();
    
    if( $verifManager->verif_invitation() == NULl  )
    {
    
     $error = "<p>Vous n'etes pas amis avec'".$_GET['pseudo']."' </p></br>
              <a href='index.php?page=envoi&pseudo=" .$_GET['pseudo']."' >Envoyer une invitation </a>";
            

                
    require('views/profil.phtml');
    }
    else
    {
            $activeInfo = $verifActive->getActive();

            if( ($activeInfo == 0 ) && ($pseudo->getPseudoDest() != $_SESSION['pseudo']))
            {
             echo "<div style='width:350px;margin-left:25%' <p>En cours</p></br>
              <a href='index.php?page=anuler&pseudo=" .$_GET['pseudo']."' >Annuler la demande</a></div>";

            }
            elseif( ($activeInfo == 0 ) && ($pseudo->getPseudoDest() == $_SESSION['pseudo']))
            {
                echo '<div style="width:350px;margin-left:25%;color:orange;font-size:25px" class="succes">Demande en cours</br><a href="">Verifiez vos demandes</a></div>'; 
            }

            else
            {
    
    
             $manager = new UserManager($link);
             $infos = $manager->getByPseudo($_GET['pseudo']);

                   if($infos)
                   {

                    require('views/profil.phtml');
                   }
                   else
                   {
                   header('Location:index.php?page=membre');
                   }


            }

}

    

 }
else
{
header('Location:index.php?page=membre');
}


?>
