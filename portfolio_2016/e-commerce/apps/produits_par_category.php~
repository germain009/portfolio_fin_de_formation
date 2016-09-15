<?php

if(isset($_GET['category']) && isset($_GET['sous_category']))
{
    $id_category = $_GET['category'];
    $id_sous_category = $_GET['sous_category'];
    $manager = new ProductManager($link);
    $products = $manager->getByCategorySousCategory($id_category,$id_sous_category);
    $count = 0 ; 
    while($count < sizeof($products))
    {
        $result = $products[$count];
        
        $length = 25 ;
        $description = substr(htmlentities($result->getDescription()),0,$length);
        require('views/produits_par_sous_category.phtml');
        $count ++ ;
    }
}
?>
