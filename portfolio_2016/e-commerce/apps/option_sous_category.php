<?php
$manager = new SousCategoryManager($link);
$all = $manager->getAll();
$count =0 ;
while($count < sizeof($all))
{
    $result = $all[$count];
    require('views/option_sous_category.phtml');
    $count ++ ;
}
?>
