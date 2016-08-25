<?php
$manager = new UserManager($link);
$verifUrl = $manager->pseudoIncorect();
if(count($verifUrl) > 0 )
{

if(isset($_GET['pseudo'])&& !empty($_GET['pseudo']))
{
require('views/new_message.phtml');
}
}
else
{
header('Location:index.php?page=membre');
}



?>
