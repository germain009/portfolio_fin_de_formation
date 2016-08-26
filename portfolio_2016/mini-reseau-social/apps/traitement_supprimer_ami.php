<?php

if(isset($_GET['info1']))
{
    $info1 = $_GET['info1'];
    $info2 = $_GET['info2'];
    $manager = new AmisManager($link);
    $manager->refuserInvitation($info1,$info2);
    //refuserInvitation est utilisé pour suppriner un amis en effaçant l'i'nvitation dans la table amis
    header('Location:index.php?page=membre');

}

