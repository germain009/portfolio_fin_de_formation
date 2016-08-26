<?php

if(isset($_SESSION['pseudo']))
{
    //si la personne est connectée l'objet UserManager recupere tout les autres membre et leurs infos 
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
