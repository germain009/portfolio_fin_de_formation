<?php
if(isset($_SESSION['pseudo']))
{
$info = $_SESSION['pseudo'];
$manager = new AmisManager($link);
$invitations = $manager->getByPseudoDest($_SESSION['pseudo']);
$invitAccept = $manager->getInvitationAccepte($info);
if($invitAccept == true )
{
    $nbr = 0 ;
    while($nbr < sizeof($invitAccept))
    {
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
        $expediteur = $manager2->getByPseudo($result->getPseudoExp());
        $count++;
        require('views/invitation.phtml');
        }

}
else
{
   echo     " On ne vous a pas envboyé d'invitations ";
}
    
    
}
?>
