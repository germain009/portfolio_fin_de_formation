<?php
if(isset($_SESSION['pseudo']))
{
  

    $manager = new ProductManager($link);
    $infos = $manager->getInfosProduct($_SESSION['panier']['id']);
    $total = 0;
    $count = 0;
    $poid = 0;
    //boucle sur tout les prix pour le total
    while($count < count($infos))
    {
    $total += ($infos[$count]->getPrix() * 
              $_SESSION['panier']['qte'][$count])+
              (($infos[$count]->getPrix() * 
              $_SESSION['panier']['qte'][$count])*
              $infos[$count]->getTva() / 100);
    $poid += ($infos[$count]->getPoid() * $_SESSION['panier']['qte'][$count]);
    $count ++;
    }
    //ajout des frais de port 
    $manager = new PoidManager($link);
    $frais_de_port = $manager->getForFishing($poid)->getPrix();
    $total = $total + $frais_de_port;
    //recherche id_adresse dans la table commande pour valider l'adresse de livraison
    require('views/facture.phtml');
    $manager_commande = new CommandeManager($link);
    $manager_user = new UserManager($link);
    $recherche_commande = $manager_commande->getByIdUser($manager_user->getByPseudo($_SESSION['pseudo'])
                          ->getId());
    if($recherche_commande->getIdAdresse() != 0 )
    {
        require('apps/adresse_facture_modiff.php');
    }
    else
    {
        require('apps/adresse_facture.php');
    }
    //simulation payement
    require('views/simulation_payement.phtml'); 
    
    
}
else
{
    echo "Veuillez vous connecter";
}
?>
