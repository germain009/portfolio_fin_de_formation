<?php

if(isset($_SESSION['pseudo']))
{

$manager = new UserManager($link);
	$info = $manager->getByPseudo($_SESSION['pseudo']);
    































    $info = $_SESSION['pseudo'];
    $managerInvitations = new AmisManager($link);
    //avec l'objet AmisManager je recupere le nombre de ses invitations avec la fonction nombre_invitation
    $nombre = $managerInvitations->nombre_invitations($info);
    $result = sizeof($nombre);
        if($result > 0 )
        {
            require('views/infobulle_invitations.phtml'); 
        }
    // a faire une infobulle pour les messages non lus 
    $manager = new MessageManager($link);
    $messages = $manager->getMessagesNonLus($info);
    $nombre = sizeof($messages);
        if($nombre > 0)
        {
            require('views/infobulle_messages.phtml');
            
        }
    //pour le nombre de membres 
    $manager = new UserManager($link);
    $info = $manager->getByPseudo($_SESSION['pseudo']);
    $all = $manager->getAll();
    $allConnecte = $manager->getAllConnecte();
    $countAll = intval(sizeof($all));
    $countAllConnecte = intval(sizeof($allConnecte));


    require('views/membre.phtml');

}



?>
