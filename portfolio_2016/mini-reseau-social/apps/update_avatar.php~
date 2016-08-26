<?php

if(isset($_SESSION['pseudo']))
{
    $manager = new UserManager($link);
    $info = $manager->getByPseudo($_SESSION['pseudo']);//pour recuperer l'avatar existant
    require('views/update_avatar.phtml');
}
?>
