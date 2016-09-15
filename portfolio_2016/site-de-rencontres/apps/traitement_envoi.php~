<?php
if(isset($_GET['pseudo']))
{
    //enregistre une invitation dans la table amis 
    $pseudoExp = $_SESSION['pseudo'];
    $pseudoDest = $_GET['pseudo'];
    $manager = new AmisManager($link);
    $manager->createDemande($pseudoExp,$pseudoDest);
   //redirection avec le pseudo pour pouvoir annuler la demande
   header('Location:index.php?page=profil&pseudo='.$_GET['pseudo']);

}

?>
