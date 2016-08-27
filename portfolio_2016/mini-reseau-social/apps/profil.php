<?php

if(isset($_SESSION['pseudo']) && (isset($_GET['pseudo'])) && ($_GET['pseudo'] != $_SESSION['pseudo']))
{
    
$manager = new UserManager($link);
//verification du pseudo dans l'url 
$verifUrl = $manager->pseudoIncorect();
    if(count($verifUrl) > 0 )
    {
            $verifManager = new AmisManager($link);
	    $verifActive = $verifManager->verif_active();
	    $pseudo = $verifManager->verif_invitation();
	    
	    $verifExp = $verifManager->verif_expediteur();
	    /*si la personne connectée n'est pas amis avec le membre demandé ou si aucune invitation entre le membre demandé et la personne      connectée n'est enregistré la page profil affiche une demande d'invitation*/
	    if( $verifManager->verif_invitation() == NULl  )
	    {
		$error = "<p>Vous n'etes pas amis avec'".$_GET['pseudo']."' </p></br>
		          <a href='index.php?page=envoi&pseudo=" .$_GET['pseudo']."' >Envoyer une invitation </a>";
		    
		require('views/profil.phtml');
	    }
	    else
	    {
		$activeInfo = $verifActive->getActive();
		//si l'invitation n'est pas validée et et que la personne connectée a envoyé cette demande , elle peut l'annuler
		if( ($activeInfo == 0 ) && ($pseudo->getPseudoDest() != $_SESSION['pseudo']))
		{
		    echo "<div style='width:350px;margin-left:25%' <p>En cours</p></br>
		          <a href='index.php?page=anuler&pseudo=" .$_GET['pseudo']."' >Annuler la demande</a></div>";
		}
		/*si la demande n'est pas validée et que c'est un membre qui invite la personne connectée ,on l'invite a regarder
		  dans ses invitations*/
		   
		elseif( ($activeInfo == 0 ) && ($pseudo->getPseudoDest() == $_SESSION['pseudo']))
		{
		    echo '<div style="width:350px;margin-left:25%;color:orange;font-size:25px" 
		          class="succes">Demande en cours</br><a href="">Verifiez vos demandes</a></div>'; 
		}
		else
		{
		    //si l'invitation est validée (active dans la table amis)
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
}
else
{
//redirection si la personne n'est pas connectée
header('Location:index.php?page=membre');
}


?>
