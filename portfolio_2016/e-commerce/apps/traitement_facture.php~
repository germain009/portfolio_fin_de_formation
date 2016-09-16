<?php


	if(isset($_GET['livraison']) && !isset($_POST['submit_payement']))
	{
                //creer une commande
		$manager = new UserManager($link);
		$user = $manager->getByPseudo($_SESSION['pseudo']);
		$id_user = $user->getId();
                $id_produits = $_SESSION['panier']['id'];
                $nbr_produits = $_SESSION['panier']['qte'];
                $id_produits = serialize($id_produits);
                $nbr_produits = serialize($nbr_produits);
                $manager_commande = new CommandeManager($link);
                $manager_commande->create($id_user,$id_produits,$nbr_produits);
		
	}
                

                if(isset($_POST['submit_payement']))
                {
                    if(strlen($_POST['8_num']) != 8 )
                    {
                        $error = "Veuillez entrer 8 chifres";
                    }
                    if(strlen($_POST['4_num']) != 4)
                    {
                        $error = "Veuillez entrer 4 chifres";
                    }
            //pour indiquer dans la table que la commande a été regléé
                    $manager_user = new UserManager($link);
                    $id_user = $manager_user->getByPseudo($_SESSION['pseudo'])->getId();
                    $manager = new CommandeManager($link);
                    $reglee = $manager->getByIdUser($id_user);
                    $reglee->setReglee(1);
                    $manager->updateReglee($reglee);

                    $_SESSION['panier']=array();
                    $_SESSION['panier']['id'] = array();
                    $_SESSION['panier']['qte'] = array();
     
                    header('Location:index.php?page=succes_transaction');
                }   
            
            
        

    			
?>
