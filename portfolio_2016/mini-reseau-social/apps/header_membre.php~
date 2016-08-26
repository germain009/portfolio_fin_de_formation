<?php

if(isset($_SESSION['pseudo']))
{
    $info = $_SESSION['pseudo'];
    $managerInvitations = new AmisManager($link);
    //avec l'objet AmisManager je recupere le nombre de ses invitations avec la fonction nombre_invitation
    $nombre = $managerInvitations->nombre_invitations($info);
    $result = sizeof($nombre);
        if($result > 0 )
        {
        ?>
            <!--s'il y a a moin une invitation l'infobulle s'affiche -->
            <div class="invitations"><?= $result ?></div>
        <?php
        }
    // a faire une infobulle pour les messages non lus 
    $managerMessages = new MessageManager($link);
    $invitations = $managerMessages->getMessagesNonLus($info);
    $nombre = sizeof($invitations);



    $manager = new UserManager($link);
    $info = $manager->getByPseudo($_SESSION['pseudo']);
    $all = $manager->getAll();
    $countAll = intval(sizeof($all));



    require('views/header_membre.phtml');

}



?>
