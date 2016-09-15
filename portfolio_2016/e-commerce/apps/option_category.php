<?php
$manager = new CategoryManager($link);
$all = $manager->getAll();
$count =0 ;
while($count < sizeof($all))
{
    $result = $all[$count];
    require('views/option_category.phtml');
    $count ++ ;
}
?>
