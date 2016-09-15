<?php
    
    $manager_adresse = new AdresseManager($link);
    $manager_user = new UserManager($link);
    $adresse = $manager_adresse->getByIdUser($manager_user->getByPseudo($_SESSION['pseudo'])->getId());
    require('views/adresse_facture_modiff.phtml');
?>
