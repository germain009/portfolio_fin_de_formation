<?php

if(isset($_SESSION['pseudo']))
{
        //pour ne pas afficher le membre comme connecté (connecte 1)
        $pseudo = $_SESSION['pseudo'];
        $manager = new UserManager($link);
        $user = $manager->getByPseudo($pseudo);
        $user->setConnecte(0);
        $manager->connecte($user);
        //pour deconnecter la personne
        session_destroy();
	header('Location:index.php?page=home');
	exit;

}
else
{
header('Location:index.php?page=home');
	exit;
}
?>
