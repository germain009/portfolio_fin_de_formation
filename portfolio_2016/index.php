<?php

$page = 'home';
$error = '';

function __autoload($class_name) {
    require('models/'.$class_name.'.class.php');
}
require('apps/config.php');
$link = mysqli_connect($localhost, $login, $pass, $database);
if (!$link)
{
	echo 'error';
}



$access = array('home');
if (isset($_GET['page']))
{
	if (in_array($_GET['page'], $access))
		$page = $_GET['page'];
}
$access_traitement = array('home');
if (in_array($page, $access_traitement))
	require('apps/traitement_'.$page.'.php');
require('apps/skel.php');
?>



