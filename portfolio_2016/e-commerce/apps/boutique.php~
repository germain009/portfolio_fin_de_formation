<?php
    //affiche tout les produit 
      $manager = new CategoryManager($link);
$all = $manager->getAll();
$count =0 ;
while($count < sizeof($all))
{
    $result = $all[$count];
    require('views/boutique.phtml');
    $count ++ ;
}



?>


