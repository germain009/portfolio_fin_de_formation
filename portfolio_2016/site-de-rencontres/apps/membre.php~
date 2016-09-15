<?php
//page du membre connecté
if(!isset($_SESSION['pseudo']))
{
    header('Location:index.php?page=home');
}

	$manager = new UserManager($link);
	$info = $manager->getByPseudo($_SESSION['pseudo']);
    require('views/membre.phtml');
	
?>
