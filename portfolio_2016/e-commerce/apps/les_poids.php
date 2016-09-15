<?php
    if(isset($_SESSION['pseudo'])&&($_SESSION['pseudo'] == 'admin' ))
    {
        
        $manager = new PoidManager($link);
        $all = $manager->getAll();
        $count = 0 ;
        while($count < sizeof($all))
        {
            $result = $all[$count];
            require('views/les_poids.phtml');
            $count ++ ;
        }
    }
?>
