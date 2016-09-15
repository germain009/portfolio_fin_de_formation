<!--

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
        require('views/amisExp.phtml');
        if($expediteur->getConnecte() == 1)
            {
                require('views/connecte.phtml');
            }
            else
            {
                require('views/deconnecte.phtml');
            }
            $count ++;
        }

    }
    else
    {
        echo   " vos demandes sont en attente ";
    }
    
    
}
    */
-->



