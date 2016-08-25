<?php

if(isset($_SESSION))
{

    $count = 0 ;
    $manager = new UserManager($link);
    $membres = $manager->getMembres();
    while($count < sizeof($membres))
        {
            $result = $membres[$count];

            require('views/liste_membres.phtml');

                $count ++ ;
        }
    
}

?>
