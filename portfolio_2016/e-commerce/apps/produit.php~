<?php
    if(isset($_GET['id']))
    {
        $id = $_GET['id'];
        $manager = new ProductManager($link);
        $produit = $manager->getById($id);

        $description =wordwrap(htmlentities($produit->getDescription()),75,'<br/>',true);
    require('views/produit.phtml');
    }
?>
