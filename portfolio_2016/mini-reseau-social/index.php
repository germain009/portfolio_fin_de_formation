<?php
session_start();

$error = '' ;

$page = 'home';

function __autoload($class_name) {
    require('models/'.$class_name.'.class.php');
}
require('apps/config.php');
$link = mysqli_connect($localhost, $login, $pass, $database);
    if (!$link)
    {
	echo 'error';
    }



    $access = array('home','login','register','membre','logout','update','update_avatar',
                'liste_membres','profil','envoi','anuler','invitation','accepter',
                'refuser','amisUser','supprimer_ami','test','new_message','messages',
                'message_vue');
    if (isset($_GET['page']))
    {
	if (in_array($_GET['page'], $access))
		$page = $_GET['page'];
    }
    /*else
    {
        echo 'page introuvable ...';
    }*/

    $access_traitement = array('login','register','logout','update','update_avatar',
                           'profil','envoi','anuler','invitation','accepter',
                           'refuser','supprimer_ami','test','new_message','messages',
                           'message_vue');
    if (in_array($page, $access_traitement))
	require('apps/traitement_'.$page.'.php');
    require('apps/skel.php');
?>


