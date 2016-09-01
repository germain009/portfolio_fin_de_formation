<?php
class UserManager
{
    private $link;

        public function __construct($link)
	{
	    $this->link = $link;
	}
	//retourne toutes les infos de la table users
        public function getAll()
	{
            $list = [];
	    $query = "SELECT * FROM users";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        //retourne les infos de la personne connectée
        public function getMembres_pagination($p_page,$par_pages)
	{
            $list = [];
            $par_pages = intval($par_pages);
	    $query = "SELECT * FROM users WHERE pseudo != '{$_SESSION['pseudo']}'
                      ORDER BY id DESC LIMIT ".(($p_page - 1) * $par_pages).", $par_pages  ";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }

        public function getMembres()
	{
            $list = [];
	    $query = "SELECT * FROM users WHERE pseudo != '{$_SESSION['pseudo']}'";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
        public function getMembres_choisis($sexe,$age_min,$age_max,$region,$p_page,$par_pages)
	{
            $list = [];
            $par_pages = intval($par_pages);
	    $query = "SELECT * FROM users WHERE pseudo != '{$_SESSION['pseudo']}'
                      AND sexe = '".$sexe."'
                      AND age > '".$age_min."' 
                      AND age < '".$age_max."'
                      AND region = '".$region."'
                      ORDER BY id DESC LIMIT ".(($p_page - 1) * $par_pages).", $par_pages  ";
	    $res = mysqli_query($this->link, $query);
	    while ($info = mysqli_fetch_object($res, "User", [$this->link]))
	    $list[] = $info;
	    return $list;
        }
       
        
	//ci-dessous, on récupère un user par l'email
	public function getByEmail($email)
	{
	
	    $query="SELECT * FROM users WHERE email = '".$email."'";
            $res= mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"User", [$this->link]);
	    return $user;
	}
        //on recupere les infos d'un user avec son pseudo
        public function getByPseudo($pseudo)
	{
            $pseudo=mysqli_real_escape_string($this->link,$pseudo);
	    $query="SELECT * FROM users WHERE pseudo='".$pseudo."'";
	    $res=mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"User", [$this->link]);
	    return $user;
        }

        //fonction pour verifier si un pseudo est deja utilisé
        public function pseudoIncorect()
        {
            $query="SELECT pseudo FROM users
                    WHERE pseudo = '{$_GET['pseudo']}' 
                    AND pseudo != '{$_SESSION['pseudo']}'";
	    $res= mysqli_query($this->link,$query);
	    $info =mysqli_fetch_object($res,"User", [$this->link]);
            return $info;
         }

	//fonction pour créer un utilisateur
	public function create($data)
	{
            $user = new User($this->link);
             if (!isset($data['ville'])) 
	    {
	        throw new Exception("Paramètre manquant:ville");
	    }
	    if (!isset($data['pseudo'])) 
	    {
	        throw new Exception("Paramètre manquant:pseudo");
	    }
            if (!isset($data["password"],$data["passwordBis"]))
	    {
	        throw new Exception("Paramètre manquant: password");
	    }
	    if ($data['password']!= $data['passwordBis'])
	    {
	        throw new Exception("Les passwords ne correspondent pas");			
            }
            if (!isset($data['email']))
	    {
	    throw new Exception("Paramètre manquant: email");
	    }
            if (!isset($data['apropos']))
	    {
                throw new Exception("Paramètre manquant: A propos");
	    }
                $user->setSexe($data['sexe']);
                $user->setSituation($data['situation']);
                $user->setAge($data['age']);
                $user->setRegion($data['region']);
                $user->setVille($data['ville']);
		$user->setPseudo($data['pseudo']);
		$user->setPassword($data['password']);
                $user->setEmail($data['email']);
                $user->setApropos($data['apropos']);
		
		$sexe= mysqli_real_escape_string($this->link,$user->getSexe());
		$situation= mysqli_real_escape_string($this->link,$user->getSituation());
                $age= mysqli_real_escape_string($this->link,$user->getAge());
                $region= mysqli_real_escape_string($this->link,$user->getRegion());
                $ville= mysqli_real_escape_string($this->link,$user->getVille());
                $pseudo= mysqli_real_escape_string($this->link,$user->getPseudo());
		$password= mysqli_real_escape_string($this->link,$user->getPassword());
                $email= mysqli_real_escape_string($this->link,$user->getEmail());
                $apropos= mysqli_real_escape_string($this->link,$user->getApropos());
		
		$query="INSERT INTO users 
                        (sexe,situation,age,
                         region,ville,pseudo,
                        password,email,apropos,avatar) 
			VALUES ('".$sexe."', '".$situation."',
                                '".$age."','".$region."','".$ville."',
                                '".$pseudo."', '".$password."',
                                '".$email."','".$apropos."',
                                'default.jpg')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	}
        //fonction pour que l'utilisateur modifie ses données
        public function update(User $user)
	{
            $id=$user->getId();
	    $situation= mysqli_real_escape_string($this->link,$user->getSituation());
	    $email= mysqli_real_escape_string($this->link,$user->getEmail());
	    $apropos= mysqli_real_escape_string($this->link,$user->getApropos());
		
            $query="UPDATE users SET
		    situation='".$situation."',
		    email='".$email."',
		    apropos='".$apropos."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
        }
        //fonction pour modifier l'avatar 
        public function updateAvatar(User $user)
	{
            $id=$user->getId();
	    $avatar= mysqli_real_escape_string($this->link,$user->getAvatar());
		
            $query="UPDATE users SET
		    avatar='".$avatar."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }

        public function updatePassword(User $user)
	{
            $id=$user->getId();
           
            $password = mysqli_real_escape_string($this->link,$user->getPassword());
            $query="UPDATE users SET
		    password = '".$password."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }


}
