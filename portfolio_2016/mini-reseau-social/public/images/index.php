<?php
session_start();
$page = 'home';
$error = '';

function __autoload($class_name) {
    require('models/'.$class_name.'.class.php');
}

$link = mysqli_connect('localhost','root', '','portfolio');
if (!$link)
{

	echo 'pas de connection ';
}



$access = array('home','jeux','template','template2','template3','login','register','logout','espace','modifier'
                 ,'realisation','realisations');
if (isset($_GET['page']))// http://fr2.php.net/manual/fr/function.isset.php
{
	if (in_array($_GET['page'], $access))
		$page = $_GET['page'];
}
$access_traitement = array('template','login','register','logout','espace','modifier');
if (in_array($page, $access_traitement))
	require('apps/traitement_'.$page.'.php');// apps/traitement_login.php ou apps/traitement_register.php ou apps/traitement_contact.php
require('apps/skel.php');
?>
<!--<script>setTimeout(function(){location.reload(true);}, 5000);</script>-->


