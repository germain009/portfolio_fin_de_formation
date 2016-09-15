<?php
if(isset($_SESSION['pseudo']))
{
    
        //si la personne est connectée l'objet UserManager recupere tout les autres membre et leurs infos 
	$count = 0 ;
	$manager = new UserManager($link);
	$count_membres = $manager->getMembres();
	//definir le nombre de pages pour la requette (2etapes ceil??)
	$calcule_pages = sizeof($count_membres) / 8;
	$total_pages = ceil($calcule_pages);
	//variable page deinit par get et limitée 
	if(isset($_GET['p-page']) && ($_GET['p-page'] > 0) && ($_GET['p-page'] <= $total_pages) )
	{
            $p_page = $_GET['p-page'];
	}
	else
	{
            $p_page = 1 ;
	}
	//variab les pour la pagination
        $par_pages = 8;
        //la requette avec parametres de limit 
        $membres = $manager->getMembres_pagination($p_page,$par_pages);
        $nombre_membres = sizeof($membres);
        $nombre_pages = ceil($nombre_membres/$par_pages);
        while($count < $nombre_membres)
	{
	    $result = $membres[$count];
            require('views/liste_membres.phtml');
            if($result->getConnecte() == 1)
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
	    

    require('views/pagination_div.phtml');

    


?>
