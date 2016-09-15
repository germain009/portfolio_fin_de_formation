<?php
   
    $manager = new TvaManager($link);
    $all = $manager->getAll();
    $count = 0 ;
    while($count < sizeof($all))
    {
        $result = $all[$count];
        require('views/option_tva.phtml');
        $count ++ ; 
    }
?>
