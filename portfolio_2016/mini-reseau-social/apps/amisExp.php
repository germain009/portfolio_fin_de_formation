<?php

if(isset($_SESSION['pseudo']))
{
$manager = new AmisManager($link);
$invitations = $manager->getAmisExp($_SESSION['pseudo']);
    
if(sizeof($invitations)  > 0  )
    {         

        $count = 0 ; 
        while($count < sizeof($invitations))
        {
        
        $result = $invitations[$count];
        $manager2 = new UserManager($link);
        $expediteur = $manager2->getByPseudo($result->getPseudoDest());
        $count++;
        require('views/amisExp.phtml');
        }

    }
    else
    {
        echo   " vos demandes sont en attente ";
    }
    
    
}
    



?>