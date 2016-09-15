<?php
$manager = new UserManager($link);
$user = $manager->getByPseudo($_SESSION['pseudo'])
$id_user = $user->getId();
$manager_commande = new CommandeManager($link);
$commandes_user = $manager_commande->getHistoriqueByIdUser($id_user);
$count = 0 ;
$commandes = sizeof($commandes_user);
//recuperation des commandes a filtrer en fonction des adresses
while($count < $commandes)
{
    $result = $commandes_user[$count];
    $tbl = unserialize($result->getIdProduits());
    $qte = unserialize($result->getNbrProduits());
    //recuperation des prix
    $manager_product = new ProductManager($link);
    $prices = $manager_product->getInfosProduct($tbl);
    $total = 0 ;
    //boucle sur le tableau qui retourne les prix (total commande)
    for($i = 0 ; $i < count($prices); $i ++)
    {
        $infos = $prices[$i];
        $quantite = $qte[$i];
        $total += ($infos->getPrix() * $quantite) + 
        (($infos->getPrix() * $quantite) * 
        $infos->getTva()  ) / 100 ;
        require('views/infos_historique.phtml');
    }
    //recuperation de l'adresse
    require('views/historique_commandes.phtml');
    $count ++ ;
}
?>
