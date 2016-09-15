<?php

if(isset($_SESSION['pseudo']))
{
    $pseudo = $_SESSION['pseudo'];
    $manager = new UserManager($link);
    $info = $manager->getByPseudo($pseudo);//pour recuperer les infos existantes de l'user
    $manager_2 = new PhotoManager($link);
    $nombre = $manager_2->getByPseudo($pseudo);
    $nbr = sizeof($nombre);
    require('views/update.phtml');
}
else
{
    header('Location:index.php?page=home');
}

?> 
