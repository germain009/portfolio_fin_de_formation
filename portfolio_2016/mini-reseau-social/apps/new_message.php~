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

/*si un utilisateur mal intentionne remplace le get pseudo par un pseudo qui n'existe pas ou par rien ,
  il est redirigé a la page membre*/
   

?>
