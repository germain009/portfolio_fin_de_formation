<?php
    if($result->getIdAdresse() != 0 )
    {
    $manager_adresse = new AdresseManager($link);
    $adresse = $manager_adresse->getByIdUser($id_user);
    require('views/adresse_liv_diff.phtml');
    }
    else
    {
    require('views/adresse_norm.phtml');
    }
?>
