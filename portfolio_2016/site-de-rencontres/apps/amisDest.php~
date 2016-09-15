<?php

if(isset($_SESSION['pseudo']))
{
$pseudo = $_SESSION['pseudo'];
$manager = new AmisManager($link);
$invitations = $manager->getAmisDest($pseudo);

$test = $manager->getAmis($pseudo);
$count = 0 ;
while($count < sizeof($test))
{
    $result = $test[$count]; 
    if($result->getPseudoDest() == $pseudo)
    {
        $manager = new UserManager($link);
        $amis = $manager->getByPseudo($result->getPseudoExp());
    }
    elseif($result->getPseudoExp() == $pseudo)
    {
        $manager = new UserManager($link);
        $amis = $manager->getByPseudo($result->getPseudoDest());
    } 
    require('views/amisDest.phtml');
    $count ++ ;
}
/*if(sizeof($invitations)  > 0  )
    {         

        $count = 0 ; 
        while($count < sizeof($invitations))
        {
        
        $result = $invitations[$count];
        $manager2 = new UserManager($link);
        $expediteur = $manager2->getByPseudo($result->getPseudoExp());
        require('views/amisDest.phtml');
         if($expediteur->getConnecte() == 1)
            {
                require('views/connecte.phtml');
            }
            else
            {
                require('views/deconnecte.phtml');
            }
        $count ++ ;
        }

    }
    else
    {
        echo   " <p>verifiez vos invitations</p>  ";
    }*/
    
    
}
    



?>
