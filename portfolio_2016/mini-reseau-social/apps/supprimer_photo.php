<?php

if(isset($_SESSION['pseudo']))
{
    if($_GET['pseudo'] == $_SESSION['pseudo'])
    {
        $pseudo = htmlentities($_GET['pseudo']);
        $manager = new PhotoManager($link);
        $photos = $manager->getByPseudo($pseudo);
        if(sizeof($photos) > 0)
        {
            $count = 0 ;
            while($count < sizeof($photos))
            {
                $result = $photos[$count];
                require('views/supprimer_photo.phtml');
                $count ++ ;
            }
        }
        else
        {
        echo "Vous n'avez pas de photos";
        }
    }
    else
    {
        header('Location:index.php?page=update');
    }
}
else
{
    header('Location:index.php?page=login');
}
?>
