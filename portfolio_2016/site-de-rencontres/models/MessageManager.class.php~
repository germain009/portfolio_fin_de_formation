<?php
class MessageManager
{
    private $link;

        public function __construct($link)
	{
            $this->link = $link;
	}
        //function qui retourne l'ensemble des données de la table messages
	public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM messages";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Message", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        //retourne les messages en fonction de $info (a ou de);
        public function getMessages($pseudo)
	{
            $list = [];
	    $query = "SELECT * FROM messages 
                      WHERE a = '".$pseudo."' 
                      ORDER BY date DESC ";
            $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Message", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        public function getMessages_pagination($pseudo,$p_page,$parPage)
	{
            $list = [];
	    $query = "SELECT * FROM messages 
                      WHERE a = '".$pseudo."' 
                      ORDER BY date DESC 
                      LIMIT ".(($p_page - 1) * $parPage).", $parPage  ";
            $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "Message", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        public function getByDeEtDate($de,$date)
	{
	
	    $query="SELECT * FROM messages
                    WHERE de = '".$de."'
                    AND date = '".$date."'";
            $res= mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"Message", [$this->link]);
	    return $user;
	}


        public function getMessagesNonLus($info)
	{
		$list = [];
		$query = "SELECT * FROM messages 
                          WHERE a = '".$info."' 
                          AND date > date_vue ";
		$res = mysqli_query($this->link, $query);
		while ($info = mysqli_fetch_object($res, "Message", [$this->link]))
			$list[] = $info;
		return $list;
        }

        //fonction pour supprimer un message
        public function deleteMessage($info1,$info2)
        {
            $query = "DELETE FROM messages WHERE a = '".$info1."' 
                      AND
                      date = '".$info2."'";
            $res = mysqli_query($this->link, $query);
         }
         
         public function invitationVue($info1,$info2)
	 {
		//NB: mysqli etc...a toujours besoin du link et du string)

                $a = $info1;
		$date = $info2;
                $d = new DateTime();
                $dataDate =  $d->format('Y-m-d H:i:s');
		$date_vue = $dataDate;

                var_dump($date_vue);
               
               
                
		

		$query="UPDATE messages SET
		date_vue = '".$date_vue."'
		WHERE a = '".$a."'
                AND date = '".$date."'";
		$res=mysqli_query($this->link,$query);
		if (!$res)
		
			throw new Exception("Erreur Interne");
			
		}

        

        
	//ci-dessous, on récupère un user par l'id
	/*public function getById($id)
	{
		//ci-dessous, on transforme $id en entier
		$id=intval($id);
		// $query est la requête: on va chercher l'id dans la bdd
		$query="SELECT * FROM users WHERE id=".$id;
		//on applique la requête:
		$res= mysqli_query($this->link,$query);
		//on définit la variable user et on "l'envoie" dans l'objet user
		$user=mysqli_fetch_object($res,"User", [$this->link]);
		return $user;
	}*/
        //recupere le données d'un pseudo
        public function getByPseudo($pseudo)
	{
		//permet de sécuriser et de permettre certains caractères spéciaux ' ""'
		// la fonction a besoin de la bdd (via le link), et de ce que je veux sécuriser: le login
		$pseudo=mysqli_real_escape_string($this->link,$pseudo);
		$query="SELECT * FROM users WHERE pseudo='".$pseudo."'";
		$res=mysqli_query($this->link,$query);
		//on récupère l'user, avec un login donné
		$user=mysqli_fetch_object($res,"User", [$this->link]);
		return $user;
	}

        //fonctionqui crée un message
	public function create($data)
	{
            $message = new Message($this->link);
	    
                if (!isset($data['sujet']))
		{
		    throw new Exception("Paramètre manquant:sujet"); 
		}
                if (!isset($data['message']))
		{
			throw new Exception("Paramètre manquant: message");
		}

                $d = new DateTime();
                $dataDate =  $d->format('Y-m-d H:i:s');    
                $message->setA($data['a']);
                $message->setDe($data['de']);
                $message->setSujet($data['sujet']);
                $message->setMessage($data['message']);
           
                $a= mysqli_real_escape_string($this->link,$message->getA());
                $de = mysqli_real_escape_string($this->link,$message->getDe());
		$sujet= mysqli_real_escape_string($this->link,$message->getSujet());
		$message= mysqli_real_escape_string($this->link,$message->getMessage());
             
                $query="INSERT INTO messages 
                        (a,de,sujet,message,date)
                         VALUES ('".$a."','".$de."', 
                                 '".$sujet."',
                                 '".$message."','".$dataDate."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
		    throw new Exception("Erreur interne");
		}
	}

        public function updateVue(Message $message)
	{
            $id=$message->getId();
            $date_vue= mysqli_real_escape_string($this->link,$message->getDateVue()); 
		
            $query="UPDATE messages SET
		    date_vue ='".$date_vue."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }
        


        


}
