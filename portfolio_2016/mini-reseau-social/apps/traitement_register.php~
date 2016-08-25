


<?php


if (isset($_POST['submit']))
{
        $email = $_POST['email'];
    
	try
	{        
                $manager = new UserManager($link);
                $user= $manager->getByPseudo($_POST['pseudo']);
                $userMail = $manager->getByEmail($email);
                if(sizeof($user) > 0 )
                {
                      $error = "ce pseudo est deja utilisé ";
                }
                elseif(sizeof($userMail) > 0 )
                {
                     $error = "cet email est deja utilisé </br>
                                avez vous oublié votre <a href='#'>password ?</a> " ;
                }
                else
                {
                 
                  

               
		$user = $manager->create($_POST);
		
	        header('Location:index.php?page=login') ;
		exit;
                }
	}
	catch (Exception $e)
	{
		$error = $e->getMessage();
	}
}
