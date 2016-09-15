<?php
    //affiche tout les produite pou l'admin (possibilitée de crééer modifier supprimer (phtml))
    if(isset($_SESSION['pseudo']) && ($_SESSION['pseudo'] == 'admin'))
    {
        $manager = new ProductManager($link);
        $products = $manager->getAll();
        $count = 0 ; 
        while($count < sizeof($products))
        {
            $result = $products[$count];
            $length = 25 ;
            $description = substr(htmlentities($result->getDescription()),0,$length);
            require('views/affiche_product_admin.phtml');
            $count ++ ;
        }
    }
?>
