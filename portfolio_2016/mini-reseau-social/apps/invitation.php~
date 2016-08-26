<?php
if(isset($_SESSION['pseudo']))
{
    $info = $_SESSION['pseudo'];
    $manager = new AmisManager($link);
    $invitations = $manager->getByPseudoDest($_SESSION['pseudo']);
    //$invitations recupere les invitation non validée (les demandes d'autre utilisateurs 
    $invitAccept = $manager->getInvitationAccepte($info);
    /* avec l'objet AmisManager , la fonction getByPseudoDest($_SESSION en tant que destinataire) et la fonction getInvitationAcceptée
       je recupere le invitations (les demandes) qui ont été acceptée */
    if($invitAccept == true )
    {
        $nbr = 0 ;
        while($nbr < sizeof($invitAccept))
        {
            //s'il y a des invitations acceptées elles vont s'afficher invitationsAcceptees.phtml
            $invit = $invitAccept[$nbr];
            require('views/invitationsAcceptees.phtml');
            $nbr++;
        }
    }


    
    if(sizeof($invitations)  == true  )
    {           
        $count = 0 ; 
        while($count < sizeof($invitations))
        {
            $result = $invitations[$count];
            $manager2 = new UserManager($link);
            //avec UserManager je recupere les info de l'expediteur de l'invitation
            $expediteur = $manager2->getByPseudo($result->getPseudoExp());
            $count++;
            require('views/invitation.phtml');
        }

    }
    else
    {
        //s'il n'y a pas d'invitations 
        echo     " On ne vous a pas envboyé d'invitations ";
    }
    
    
}
?>
