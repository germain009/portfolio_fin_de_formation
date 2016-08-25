<?php 

$count= 0 ; 

$manager = new RealisationManager($link);

$response = $manager->getAll();


 while($count < sizeof($response))
{

   $result = $response[$count];
   
    

 require('views/realisation.phtml');
$count ++ ;
}

require('apps/mini_reseau.php');

 ?>
