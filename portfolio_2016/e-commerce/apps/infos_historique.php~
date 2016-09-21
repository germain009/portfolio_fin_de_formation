<?php
    for($i = 0 ; $i < count($prices); $i ++)
    {
    $infos = $prices[$i];
    $quantite = $qte[$i];
    $total += ($infos->getPrix() * $quantite) + 
    (($infos->getPrix() * $quantite) * 
    $infos->getTva()  ) / 100 ;
    require('views/infos_historique.phtml');
    }
?>
