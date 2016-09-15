<?php
if(isset($_SESSION['pseudo']))
{
    require('views/filtrer_membres.phtml');
    $manager = new UserManager($link);     
if(isset($_POST['submit']))
    {

        //variables de la requette
        $sexe = $_POST['sexe'];
        $age_min = $_POST['age1'];
        $age_max = $_POST['age2'];
        $region = $_POST['region'];
        $connecte = $_POST['connecte'];
        //si la personne est connectée l'objet UserManager recupere tout les autres membre et leurs infos 
	$count = 0 ;
	
        
	
        $p_page = 1 ;
	
        $par_pages = 12;
        $count_membres = $manager->getMembres_choisis($sexe,$age_min,$age_max,$region,$connecte);
	//definir le nombre de pages pour la requette (2etapes ceil??)
	$calcule_pages = sizeof($count_membres) / $par_pages;
	$total_pages = ceil($calcule_pages);
	
	//variable page deinit par get et limitée 
	
	//variab les pour la pagination
        //la requette avec parametres de limit 
        $membres = $manager->getMembres_choisis_pagination($sexe,$age_min,$age_max,$region,$connecte,$p_page,$par_pages);
        $nombre_membres = sizeof($membres);
        if($nombre_membres > 0)
        {	   
			while($count < $nombre_membres)
			{
			   $result = $membres[$count];
			   require('views/liste_membres.phtml');
			   $count ++ ;
			}
		
			require('views/pagination_choisis.phtml');
        }
        else
        {
            echo "Aucun resultat pour cette recherche";
        }
		}
        
    

if(!isset($_POST['submit']) && isset($_GET['sexe']) && isset($_GET['age_min']) && isset($_GET['age_max']) && isset($_GET['region']) && isset($_GET['p-page']) )
{
        $sexe = htmlentities($_GET['sexe']);
        $age_min = htmlentities($_GET['age_min']);
        $age_max = htmlentities($_GET['age_max']);
        $region  = htmlentities($_GET['region']);
        $connecte = htmlentities($_GET['connecte']);
        $p_page =  htmlentities($_GET['p-page']);
        $par_pages = 12;

        $count_membres = $manager->getMembres_choisis($sexe,$age_min,$age_max,$region,$connecte);
	//definir le nombre de pages pour la requette (2etapes ceil??)
	$calcule_pages = sizeof($count_membres) / $par_pages;
	$total_pages = ceil($calcule_pages);

        $membres = $manager->getMembres_choisis_pagination($sexe,$age_min,$age_max,$region,$connecte,$p_page,$par_pages);
        $nombre_membres = sizeof($membres);
        /*$nombre_pages = ceil($nombre_membres/$par_pages);*/
        $count = 0 ;
        while($count < $nombre_membres)
	{
	   $result = $membres[$count];
           require('views/liste_membres.phtml');
           $count ++ ;
	}
        
        require('views/pagination_choisis.phtml');
        
        
    }

        

     
}
    
















?>
