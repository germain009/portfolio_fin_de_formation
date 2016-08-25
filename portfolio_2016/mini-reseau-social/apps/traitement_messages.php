<?php

if(isset($_GET['a']) && !isset($_GET['vue']))
{

    $info1 = $_GET['a'];
    $info2 = $_GET['date'];
    $manager = new MessageManager($link);
    $manager->deleteMessage($info1,$info2);
    
    header('Location:index.php?page=messages');
}

if(isset($_GET['vue']))
    {


        $info1 = $_GET['a'];
        $info2 = $_GET['date'];
        $manager = new MessageManager($link);
        $manager->invitationVue($info1,$info2);

        header('Location:index.php?page=messages');
    }

?>




