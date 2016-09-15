<?php

if(isset($_SESSION['pseudo']) && ($_SESSION['pseudo']) == 'admin')
{   //recuperation des infos sur le produit a modifier pour le formulaire
    if(isset($_GET['id']))
    {
        $id = $_GET['id'];
        $manager = new ProductManager($link);
        $modifier = $manager->getById($id);
        require('views/modifier_article.phtml');
    }
}
?>
