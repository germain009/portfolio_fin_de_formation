<?php
class RecuperationManager
{
    private $link;

        public function __construct($link)
	{
	    $this->link = $link;
	}

        public function getByEmail($email)
	{
	
	    $query="SELECT * FROM recuperation WHERE email = '".$email."'";
            $res= mysqli_query($this->link,$query);
	    $user=mysqli_fetch_object($res,"Recuperation", [$this->link]);
	    return $user;
	}
	
	public function create($email,$code)
	{
            $recup = new Recuperation($this->link);
             
            $recup->setEmail($email);
            $recup->setCode($code);
                
            $email= mysqli_real_escape_string($this->link,$recup->getEmail());
	    $code= mysqli_real_escape_string($this->link,$recup->getCode());
                
		
		$query="INSERT INTO recuperation 
                        (email,code) 
			VALUES ('".$email."', '".$code."')";
		$res=mysqli_query($this->link,$query);
		if(!$res)
		{
                    throw new Exception("Erreur interne");
	        }
	} 

        public function update(Recuperation $recup)
	{
            $id=$recup->getId();
            $code= mysqli_real_escape_string($this->link,$recup->getCode());
            $valide= mysqli_real_escape_string($this->link,$recup->getValide());
		
            $query="UPDATE recuperation SET
		    code='".$code."',
                    valide='".$valide."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }

        public function updateValide(Recuperation $recup)
	{
            $id=$recup->getId();
           
            $valide= mysqli_real_escape_string($this->link,$recup->getValide());
            $query="UPDATE recuperation SET
		    valide = '".$valide."'
		    WHERE id=".$id;
	    $res=mysqli_query($this->link,$query);
	    if (!$res)
	    throw new Exception("Erreur Interne");
			
        }
        
        

}
