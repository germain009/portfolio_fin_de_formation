<?php
//calcul du nombre de produits
if(isset($_SESSION['panier']) && count($_SESSION['panier']['id']) > 0)
{
$result = array_sum($_SESSION['panier']['qte']);

//calcul du prix total
$manager = new ProductManager($link);
$prices = $manager->getPrices($_SESSION['panier']['id']);
if(sizeof($prices) > 0 )
{
$total = 0;
$count = 0 ;
while($count < count($prices))
{
    $total += ($prices[$count]->getPrix() * 
              $_SESSION['panier']['qte'][$count])+
              (($prices[$count]->getPrix() * 
              $_SESSION['panier']['qte'][$count])*
              $prices[$count]->getTva() / 100);
    $count ++;

   
}

require('views/infos_panier.phtml');
}
}
require('views/header.phtml');

?>
