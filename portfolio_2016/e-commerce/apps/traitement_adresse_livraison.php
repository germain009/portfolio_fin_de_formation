<?php
if(isset($_POST['submit_adresse']))
{   //creation de la nouvelle adresse de livraison
    $manager = new UserManager($link);
    $id_user = $manager->getByPseudo($_SESSION['pseudo'])->getId();
    $manager_adresse = new AdresseManager($link);
    try
    {
        $create = $manager_adresse->create($_POST,$id_user);
    }
    catch (Exception $e)
    {
        $error = $e->getMessage();
    }   //enregistrement de la comande avec la nouvelle adresse de livraison
        if($id_adresse = $manager_adresse->getByIdUser($id_user)->getId())
        {
		    
		    $id_produits = $_SESSION['panier']['id'];
		    $nbr_produits = $_SESSION['panier']['qte'];
		    $id_produits = serialize($id_produits);
		    $nbr_produits = serialize($nbr_produits);
		    $manager_commande = new CommandeManager($link);
		    $manager_commande->createDiferenteAdresse($id_user,$id_produits,$nbr_produits,$id_adresse);
		 
		    header('Location:index.php?page=facture');
        }
	}
?>
