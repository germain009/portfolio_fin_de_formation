<?php

if(isset($_GET['a']) && !isset($_GET['vue']))
{
    $info1 = $_GET['a'];
    $info2 = $_GET['date'];
    $manager = new MessageManager($link);
    $manager->deleteMessage($info1,$info2);
    //supprime un message
    header('Location:index.php?page=messages');
}

// a faire pour l'infobulle message
if(isset($_GET['vue']))
    {
        $info1 = $_GET['a'];
        $info2 = $_GET['date'];
        $manager = new MessageManager($link);
        $manager->invitationVue($info1,$info2);

        header('Location:index.php?page=messages');
    }

?>




