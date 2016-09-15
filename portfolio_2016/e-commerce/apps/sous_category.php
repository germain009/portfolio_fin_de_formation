<?php

if(isset($_GET['id_category']))
{
    $id_category = $_GET['id_category'];
    $manager = new SousCategoryManager($link);
    $sous_category = $manager->getAll();
    $count= 0 ;
    while($count < sizeof($sous_category))
    {
        $result = $sous_category[$count];
        require('views/sous_category.phtml');
        $count ++ ;
    }
}
?>
