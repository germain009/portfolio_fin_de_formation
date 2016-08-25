<?php

if(isset($_GET['info1']))
{

    $info1 = $_GET['info1'];
    $info2 = $_GET['info2'];
    $manager = new AmisManager($link);
    $manager->refuserInvitation($info1,$info2);

    header('Location:index.php?page=invitation');

}


?>
