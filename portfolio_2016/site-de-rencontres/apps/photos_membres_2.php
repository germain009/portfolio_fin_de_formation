<?php
if(!isset($_SESSION['pseudo']))
{
    header('Location:index.php?page=home');
}
    $pseudo = htmlentities($_GET['pseudo']);
	$manager = new UserManager($link);
	$info = $manager->getByPseudo($pseudo);
	$photos = $info->getPhotos();
        if(sizeof($photos) > 0 )
        {
		    $count = 0 ;
		    while($count < sizeof($photos))
			{
		        $result = $photos[$count];
				require('views/photos_membres_2.phtml');
		        $count ++ ;
			}
        }
        else
        {
            echo "'{$pseudo}' n'as pas encore selectioné de photos";
        }

?>
