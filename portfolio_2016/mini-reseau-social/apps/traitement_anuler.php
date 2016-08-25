<?php

if(isset($_GET['pseudo']) && isset($_SESSION['pseudo']))
{
    $manager = new AmisManager($link);
    $result = $manager->anuler_invitation();
    header('Location:index.php?page=liste_membres');

}

?>
