<?php
    //je recupere le produit  du tableau de session [id] et la quantitée en association avec un count 
//si le tableau session id n'est pas vide
if(sizeof($_SESSION['panier']['id']) > 0 )
{
    $manager = new ProductManager($link);
    $infos = $manager->getInfosProduct($_SESSION['panier']['id']);
    $count=0;
    //CALCULER LE STOCK ......
    while($count < sizeof($infos))
    {
        $result = $infos[$count];
        $quantite = $_SESSION['panier']['qte'][$count];
        $total = ($result->getPrix() * $quantite) + (($result->getPrix() * $quantite)*$result->getTva()/100);
        require('views/visu_panier.phtml');
        $count ++ ;
    }
}
    
?>
