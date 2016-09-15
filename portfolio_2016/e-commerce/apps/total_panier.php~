<?php
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
    require('views/total_panier.phtml'); 

}
?>
