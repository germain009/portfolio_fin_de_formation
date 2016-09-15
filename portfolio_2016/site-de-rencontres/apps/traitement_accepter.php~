<?php

if(isset($_GET['info1']))
{
    /* info 1 et 2 sont les pseudo destinataires et expediteurs d'une invitation ,avec la fonction accepterInvitation,
       l'invitation sera acceptée(active=1 dans la table amis)*/
    $info1 = $_GET['info1'];
    $info2 = $_GET['info2'];
    $manager = new AmisManager($link);
    $manager->accepterInvitation($info1,$info2);

    header('Location:index.php?page=membre');


}



?>
