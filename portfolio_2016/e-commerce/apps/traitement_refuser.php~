<?php

if(isset($_GET['info1']))
{

    $info1 = $_GET['info1'];
    $info2 = $_GET['info2'];
    $manager = new AmisManager($link);
    $manager->refuseInvitation($info1,$info2);
    //supprime l'invitation de la table amis
    header('Location:index.php?page=invitation');

}


?>
