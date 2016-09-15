<?php

    

    if(isset($_GET['id']) && !isset($_GET['action']))
    {   //definition de variables id et quantité pour le panier
        $id = $_GET['id'];
        $qte = $_GET['qte'];
        if(!isset($_SESSION['panier']))
        {   //creation de session panier s'il n'existe pas
            $_SESSION['panier']=array();
            $_SESSION['panier']['id'] = array();
            $_SESSION['panier']['qte'] = array();
            
        }

        if(in_array($id,$_SESSION['panier']['id']))
        {
            // pour modifier la quantitée si l'id est deja dans session panier id
            $modif = array_search($id,$_SESSION['panier']['id']);
		    
		    $_SESSION['panier']['qte'][$modif] += $qte; 
        }
        else
        {
           //pour ajouter un id et une quantitée au panier
        array_push($_SESSION['panier']['id'],$id);
        array_push($_SESSION['panier']['qte'],$qte);
        }



    header('Location:index.php?page=boutique');
    }

    if(isset($_GET['id']) && isset($_GET['action']))
    {   //pour supprimer un produit du panier
        $id = $_GET['id'];
        $tableau_id = $_SESSION['panier']['id'];
        $tableau_qte = $_SESSION['panier']['id'];
        $supprimer = array_search($id,$_SESSION['panier']['id']);
        array_splice($_SESSION['panier']['id'],$supprimer,1);
        array_splice($_SESSION['panier']['qte'],$supprimer,1);
    }
    //pour modifiet la quantitée a partir du panier
    if(isset($_POST['qte_modif']) && isset($_POST['id']))
    {
        if( $_POST['qte_modif'] > 0)
        {
		    $id = $_POST['id'];
		    $qte = $_POST['qte_modif'];
		    //pour eviter de hacker le code source
		    if(!in_array($id,$_SESSION['panier']['id']))
		    {
		        header('Location:index.php?page=boutique');
		    }

		    //modifier la quantitée en fonction de la position de l'id
		    $modifier = array_search($id,$_SESSION['panier']['id']);
		    unset($_SESSION['panier']['qte'][$modifier]);
		    $_SESSION['panier']['qte'][$modifier]=$qte;
        }
        else
        {
            header('Location:index.php?page=boutique');
        }
		    
        
        
    }
    


?>
