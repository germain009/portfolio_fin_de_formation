<?php
if(isset($_GET['pseudo']))
{

$pseudoExp = $_SESSION['pseudo'];
$pseudoDest = $_GET['pseudo'];
   $manager = new AmisManager($link);
   $manager->createDemande($pseudoExp,$pseudoDest);
   
   header('Location:index.php?page=profil&pseudo='.$_GET['pseudo']);

}

?>
