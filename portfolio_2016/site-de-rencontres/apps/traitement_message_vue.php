<?php
if(isset($_SESSION['pseudo']) && isset($_GET['de']))
{
    $de = $_GET['de'];
    $date = $_GET['date'];
    $manager = new MessageManager($link);
    $message = $manager->getByDeEtDate($de,$date);
    $d = new DateTime();
    $dataDate =  $d->format('Y-m-d H:i:s');
    $message->setDateVue($dataDate);
    $manager->updateVue($message);
    header('Location:index.php?page=messages');
    

}


?>
