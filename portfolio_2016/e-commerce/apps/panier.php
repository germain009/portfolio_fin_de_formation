<?php
    if(isset($_SESSION['panier']) && sizeof($_SESSION['panier']['id']) > 0 )
    {
     require('views/panier.phtml');
    }
    else
    {
        require('views/panier_vide.phtml');
    }
?>
