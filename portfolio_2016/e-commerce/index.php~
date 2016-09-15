<?php
session_start();

$error = '' ;

$page = 'home';

function __autoload($class_name) {
    require('models/'.$class_name.'.class.php');
}
require('apps/config.php');
$link = mysqli_connect($localhost, $login, $pass, $database);
    if (!$link)
    {
	echo 'error';
    }



    $access = array('home','login','register','logout','action_admin','modifier_article',
                    'supprimer_article','boutique','produits_par_sous_category',
                    'produit','table_poids','les_poids','panier','sous_category',
                    'infos_livraison','facture','adresse_livraison',
                    'succes_transaction');
    if (isset($_GET['page']))
    {
	if (in_array($_GET['page'], $access))
		$page = $_GET['page'];
    }
    /*else
    {
        echo 'page introuvable ...';
    }*/

    $access_traitement = array('login','register','logout','action_admin','modifier_article',
                               'supprimer_article','produits_par_sous_category',
                               'produit','table_poids','panier',
                               'info_livraison','facture','adresse_livraison');
    if (in_array($page, $access_traitement))
	require('apps/traitement_'.$page.'.php');
    require('apps/skel.php');
?>



