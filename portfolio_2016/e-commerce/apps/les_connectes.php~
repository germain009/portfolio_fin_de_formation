<?php

if(isset($_SESSION['pseudo']))
{
    $manager = new UserManager($link);
    $connectes = $manager->getAllConnecte_rech();
    $nbr = sizeof($connectes);
    if($nbr > 0)
    {
        $count = 0 ;
        while($count < $nbr )
        {
            $result = $connectes[$count];
            require('views/les_connectes.phtml');
            require('views/connecte.phtml');
            $count ++ ;
        }
    }
}
?>
