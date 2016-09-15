<?php

if(isset($_POST['submit']) && isset($_GET['pseudo']))
{   //empecher l'envoi d'un msg a une personne non amis en se servant de l'url
    $manager = new AmisManager($link);
    $verif_invit = $manager->verif_active();
    if(sizeof($verif_invit) > 0 )
    {
	    try
	    {
		$manager = new MessageManager($link);
		$manager->create($_POST);
		header("Location:index.php?page=membre ");
	    }
	    catch (Exception $e)
	    {
		$error = $e->getMessage();
	    } 

    }
    else
    {
        $error = "vous n'etes pas amis avec '{$_GET['pseudo']}'";
    }
    
}

?>
