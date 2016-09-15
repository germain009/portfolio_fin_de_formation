<?php
    $poid = 0;
    $count = 0; 
    while($count < count($infos))
    {
        $poid += ($infos[$count]->getPoid() * $_SESSION['panier']['qte'][$count]);
        $count ++;
    }
    $manager = new PoidManager($link);
    $frais_de_port = $manager->getForFishing($poid)->getPrix();
    $total = $total + $frais_de_port;
    require('views/frais_panier.phtml');
?>
