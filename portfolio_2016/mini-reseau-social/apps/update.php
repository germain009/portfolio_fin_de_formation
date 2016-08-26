<?php

if(isset($_SESSION['pseudo']))
{
    $manager = new UserManager($link);
    $info = $manager->getByPseudo($_SESSION['pseudo']);//pour recuperer les infos existantes de l'user
    require('views/update.phtml');
}
else
{
    header('Location:index.php?page=home');
}

?>
