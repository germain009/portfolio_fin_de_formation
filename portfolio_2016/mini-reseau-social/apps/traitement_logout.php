<?php

if(isset($_SESSION['pseudo']))
{
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
