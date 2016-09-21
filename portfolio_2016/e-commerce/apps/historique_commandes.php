<?php
if(isset($_SESSION['pseudo']))
{
	$manager = new UserManager($link);
	$user = $manager->getByPseudo($_SESSION['pseudo']);
	$id_user = $user->getId();
	$manager_commande = new CommandeManager($link);
	$commandes_user = $manager_commande->getHistoriqueByIdUser($id_user);
	$count = 0 ;
	$commandes = count($commandes_user);
	//recuperation des commandes a filtrer en fonction des adresses
	if($commandes > 0)
    {
		while($count < $commandes)
		{
			$result = $commandes_user[$count];
			$tbl = unserialize($result->getIdProduits());
			$qte = unserialize($result->getNbrProduits());
			//recuperation des prix
			$manager_product = new ProductManager($link);
			$prices = $manager_product->getInfosProduct($tbl);
			$total = 0 ;
			require('views/date_commande.phtml');
		        require('apps/div_infos_historique.php');
			require('views/historique_commandes.phtml');
			$count ++ ;
		}
	}
	else
	{
		echo "Vous n'avez pas de commandes";
	}
}
else
{
    header('Location:index.php?page=boutique');
}
?>
