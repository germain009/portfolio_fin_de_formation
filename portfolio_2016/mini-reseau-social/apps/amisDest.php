<?php

if(isset($_SESSION['pseudo']))
{
$manager = new AmisManager($link);
$invitations = $manager->getAmisDest($_SESSION['pseudo']);

if(sizeof($invitations)  > 0  )
    {         

        $count = 0 ; 
        while($count < sizeof($invitations))
        {
        
        $result = $invitations[$count];
        $manager2 = new UserManager($link);
        $expediteur = $manager2->getByPseudo($result->getPseudoExp());
        $count++;
        require('views/amisDest.phtml');
        }

    }
    else
    {
        echo   " <p>verifiez vos invitations</p>  ";
    }
    
    
}
    



?>
