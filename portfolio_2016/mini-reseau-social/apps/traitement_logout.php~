<?php

if(isset($_SESSION['pseudo']))
{
        session_destroy();
        /*setcookie('login',$_SESSION['login'],time() - 360,null,null,false,true);*/
	header('Location:index.php?page=home');
	exit;

}
else
{
header('Location:index.php?page=home');
	exit;
}
?>
