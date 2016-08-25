<?php

if(isset($_POST['submit']))
{
   
    


    $pseudo = mysqli_real_escape_string($link,$_POST['pseudo']);
    $password = mysqli_real_escape_string($link,$_POST['password']);

    $manager = new UserManager($link);
    $user = $manager->getByPseudo($pseudo);
    if(sizeof($user) > 0 )
{

    if(password_verify($password, $user->getPassword()))
    {
       $_SESSION['pseudo'] = $pseudo ;
       
       header('Location:index.php?page=membre');
    } 
    else
    {
        if(empty($_POST['password']))
    {
        $error = "veullez saisir votre password";
    }
    else 
    {
        $error = " votre password n'est pas valide " ;
    }
}
    

   
}
else
{
    if(empty($_POST['pseudo']))
    {
        $error = "veuillez saisir votre pseudo";
    }
    else
    {
        $error = "ce pseudo n'existe pas";
    }
}

}
        


?>
