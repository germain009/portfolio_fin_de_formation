<?php
    if(isset($_SESSION['pseudo'])&&($_SESSION['pseudo'] == 'admin' ) && isset($_GET['poid']))
    {
        $poid = $_GET['poid'];
        $manager = new PoidManager($link);
        $result = $manager->getByPoid($poid);
     
        require('views/table_poids.phtml');
           
    }
?>
