<?php
if(isset($_POST['modifier']))
{
    $poid = $_POST['poid'];
    $prix =$_POST['prix'];
    $manager = new PoidManager($link);
    $modifier = $manager->getByPoid($poid);
    $modifier->setPoid($poid);
    $modifier->setPrix($prix);
    $manager->update($modifier);
    header('Location:index.php?page=les_poids');
    
}
?>
