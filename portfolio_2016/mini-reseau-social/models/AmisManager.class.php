<?php
class AmisManager
{
    private $link;
        //connection a la base de donnée avec link 
        public function __construct($link)
	{
            $this->link = $link;
	}
	//function pour recuperer toutes le données de la table
        public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM amis";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Amis", [$this->link]))
	        $list[] = $info;
		return $list;
        }
        //function pour recuperer la ligne de la table amis correspondant a id_invitation
        public function getById($id_invitation)
	{
	    $id=intval($id_invitation);
	    $query="SELECT * FROM amis WHERE id_invitation=".$id_invitation;
	    $res= mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"Amis", [$this->link]);
	    return $user;
        }
        /*function qui recupere les infos correspondant au pseudo_dest ou l'invitation
          n'est pas validée */
        public function getByPseudoDest($pseudo_dest)
	{
            $list = [];
            $query = "SELECT * FROM amis WHERE pseudo_dest ='".$pseudo_dest."'
                      AND active = 0 ";
		$res = mysqli_query($this->link, $query);
		while ($invit = mysqli_fetch_object($res, "Amis", [$this->link]))
                {
			$list[] = $invit;
                }
		return $list;
        }
        /*function qui recupere les amis qui ont envoyé une demande 
          et ou on a validé le champ active*/ 
        public function getAmisExp($pseudo_dest)
	{
            $list = [];
	    $query = "SELECT * FROM amis WHERE pseudo_exp ='".$pseudo_dest."'
                      AND active = 1 ";
	    $res = mysqli_query($this->link, $query);
	    while ($invit = mysqli_fetch_object($res, "Amis", [$this->link]))
            {
                $list[] = $invit;
            }
		return $list;
	}
        /*function qui recupere les amis  a qui ont  a envoyé une demande 
          et qui ont a validé le champ active*/
        public function getAmisDest($pseudo_dest)
	{
            $list = [];
	    $query = "SELECT * FROM amis WHERE pseudo_dest ='".$pseudo_dest."'
                      AND active = 1 ";
	    $res = mysqli_query($this->link, $query);
	    while ($invit = mysqli_fetch_object($res, "Amis", [$this->link]))
            {
                $list[] = $invit;
            }
		return $list;
	}
        /* fonction qui recupere toute les invitations 
           corespondant a la personne connectée*/
        public function verif_invitation()
        {       
            $query="SELECT * FROM amis
                    WHERE (pseudo_exp='{$_SESSION['pseudo']}' AND pseudo_dest='{$_GET['pseudo']}')
                    OR
                    (pseudo_exp='{$_GET['pseudo']}' AND pseudo_dest='{$_SESSION['pseudo']}')
                        ";
	    $res= mysqli_query($this->link,$query);
	    $info =mysqli_fetch_object($res,"Amis", [$this->link]);
            return $info;
        }
        //on recupere les invitations validées de la personne connectée
        public function verif_active()
        {      
            $query="SELECT active,pseudo_dest FROM amis
                    WHERE (pseudo_exp='{$_SESSION['pseudo']}' AND pseudo_dest='{$_GET['pseudo']}')
                    OR
                    (pseudo_exp='{$_GET['pseudo']}' AND pseudo_dest='{$_SESSION['pseudo']}')
                        ";
	    $res= mysqli_query($this->link,$query);
	    $info =mysqli_fetch_object($res,"Amis", [$this->link]);
            return $info;
         }
        //fonction qui recupere l'expediteur de l'invitation
        public function verif_expediteur()
        {
            $query="SELECT COUNT(id_invitation) 
                    FROM amis
                    WHERE (pseudo_exp='{$_SESSION['pseudo']}' 
                    AND pseudo_dest='{$_GET['pseudo']}')";
	    $res= mysqli_query($this->link,$query);
	    $info =mysqli_fetch_object($res,"Amis", [$this->link]);
            return $info;
        }
         //fonction pour annuler une invitation
         public function anuler_invitation()
         {
             $query = "DELETE FROM amis WHERE pseudo_exp ='{$_SESSION['pseudo']}' 
                       AND
                       pseudo_dest='{$_GET['pseudo']}'";
	     $res = mysqli_query($this->link, $query);
          }
          //fonction qui refuse une invitation
          public function refuserInvitation($info1,$info2)
          {
              $query = "DELETE FROM amis WHERE pseudo_exp ='".$info1."'
                        AND
                        pseudo_dest= '".$info2."'
                        OR 
                        pseudo_exp ='".$info2."'
                        AND
                        pseudo_dest= '".$info1."'";
		$res = mysqli_query($this->link, $query);
          }
          //fonction qui retourne les invitations acceptées en fonction de la date vue
          public function getInvitationAccepte($info)
          {
              $list = [];
	      $query = "SELECT pseudo_dest FROM amis WHERE pseudo_exp ='".$info."'
                        AND date_confirmation > date_vue ";
	      $res = mysqli_query($this->link, $query);
	      while ($invit = mysqli_fetch_object($res, "Amis", [$this->link]))
              {
	          $list[] = $invit;
              }
	          return $list;
          }
         //retourn le nombre d'invitations non vues pour l'infobule
         public function nombre_invitations($info)
	 {
             $list = [];
	     $query = "SELECT * FROM amis WHERE pseudo_dest ='".$info."'
                       AND date_invitation = date_confirmation 
                       OR pseudo_exp ='{$_SESSION['pseudo']}' 
                       AND date_confirmation > date_vue";
	      $res = mysqli_query($this->link, $query);
	      while ($invit = mysqli_fetch_object($res, "Amis", [$this->link]))
              {
	          $list[] = $invit;
              }
	          return $list;
          }
         //fonction valide la vue d'une invit pour l'infobule
          public function invitationVue($info1,$info2)
	  {
	      $a = $info1;
	      $date = $info2;
              $date = new DateTime();
              $dataDate =  $date->format('Y-m-d H:i:s');
	      $date_vue = $dataDate;

              $query="UPDATE messages SET
		      date_vue = '".$date_vue."'
		      WHERE a = '".$a."'
                      AND date = '".$date."'";
	      $res=mysqli_query($this->link,$query);
	      if (!$res)
	      throw new Exception("Erreur Interne");
	    }
        
        /*fonction qui crée une invitation les champs date sont identique pour update 
          par la suite le champ active est = a 0 */
	public function createDemande($pseudoExp,$pseudoDest)
	{
            //pas d'eseptions les champs sont forcement presents 
            $ami = new Amis($this->link);
	    $date = new DateTime();
            $dataDate =  $date->format('Y-m-d H:i:s');
           
	    $ami->setPseudoExp($pseudoExp);
            $ami->setPseudoDest($pseudoDest);
            $ami->setDateInvitation($dataDate);
            $ami->setDateConfirmation($dataDate);
            $ami->setDateVue($dataDate);
            $ami->setActive('0');
                
            $pseudo_exp= mysqli_real_escape_string($this->link,$ami->getPseudoExp());
	    $pseudo_dest= mysqli_real_escape_string($this->link,$ami->getPseudoDest());
	    $date_invitation= mysqli_real_escape_string($this->link,$ami->getDateInvitation());
            $date_confirmation = mysqli_real_escape_string($this->link,$ami->getDateConfirmation()) ;
            $date_vue = mysqli_real_escape_string($this->link,$ami->getDateVue()) ;
            $active= mysqli_real_escape_string($this->link,$ami->getActive());
          
	    $query="INSERT INTO amis 
                    (pseudo_exp,pseudo_dest,date_invitation,
                    date_confirmation,date_vue,active) 
		    VALUES ('".$pseudo_exp."', '".$pseudo_dest."',
                            '".$date_invitation."','".$date_confirmation."',
                            '".$date_vue."','".$active."'
                                     )";
	    $res=mysqli_query($this->link,$query);
	    // on vérifie que la requête s'est bien exécutée:
	    if(!$res)
	    {
                throw new Exception("Erreur interne");
	    }
	}
        // on change la date et l'active pour accepter l'invitation
        public function accepterInvitation($info1,$info2)
	{
            $pseudo_exp = $info1;
	    $pseudo_dest = $info2;
            $date = new DateTime();
            $dataDate =  $date->format('Y-m-d H:i:s');
            $date_confirmation = $dataDate;
            $active = '1';
                
            $query="UPDATE amis SET
		    date_confirmation = '".$date_confirmation."',
                    active = '".$active."'
		    WHERE pseudo_exp = '".$pseudo_exp."'
                    AND pseudo_dest = '".$pseudo_dest."'";
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	        throw new Exception("Erreur Interne");
         }
         
         //fonction qui va retourner qu'une invitation a ete acceptee
         public function invitationValidée($info)
	 {
             $pseudo_exp = $info;
             $date = new DateTime();
             $dataDate =  $date->format('Y-m-d H:i:s');
	     $date_vue = $dataDate;
                
             $query="UPDATE amis SET
		     date_vue = '".$date_vue."'
		     WHERE pseudo_exp = '".$pseudo_exp."'
                     AND active = 1 ";
	     $res=mysqli_query($this->link,$query);
	     if (!$res)
	     {
	         throw new Exception("Erreur Interne");
	     }	
        }


}
