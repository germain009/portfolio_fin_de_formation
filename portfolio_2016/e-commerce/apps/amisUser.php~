<?php
if(isset($_SESSION['pseudo']))
{
$pseudo = $_SESSION['pseudo'];
$manager = new AmisManager($link);

//creation des variables pour la pagination
$invit = $manager->getAmis($pseudo);
$nombre = sizeof($invit);
$parPage = 12;
$nbrPages = ceil($nombre/$parPage);
if(isset($_GET['p-page']) && ($_GET['p-page'] > 0) && ($_GET['p-page'] <= $nbrPages) )
	{
            $c_page = $_GET['p-page'];
	}
	else
	{
            $c_page = 1 ;
	}

$affiche_ami = $manager->getAmis_pagination($pseudo,$c_page,$parPage);
$nbr = sizeof($affiche_ami);
	if($nbr > 0 )
    {
		$count = 0 ;
		while($count < $nbr)
		{
			$result = $affiche_ami[$count]; 
                        
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
                        if($amis->getConnecte() == 1)
			    {
				require('views/connecte.phtml');
			    }
			    else
			    {
				require('views/deconnecte.phtml');
			    }
		        
			$count ++ ;
		}
            require('views/pagination_amis.phtml');
    }
    else
    {
        echo "Vous n'avez pas de liste d'amis";
    }
}

?>
