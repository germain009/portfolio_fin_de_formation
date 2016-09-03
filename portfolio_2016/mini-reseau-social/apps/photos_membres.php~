<?php
if(!isset($_SESSION['pseudo']))
{
    header('Location:index.php?page=home');
}

	$manager = new UserManager($link);
	$info = $manager->getByPseudo($_SESSION['pseudo']);
	$photos = $info->getPhotos();
            if(sizeof($photos) > 0 )
            {
		$count = 0 ;
		while($count < sizeof($photos))
			{
		    $result = $photos[$count];
			    require('views/photos_membres.phtml');
		    $count ++ ;
			}
            }
            else
            {
                echo "vous n'avez pas de photos<br>
                      voulez vous en <a href='index.php?page=update'>ajouter ?</a> " ;
            }
?>
