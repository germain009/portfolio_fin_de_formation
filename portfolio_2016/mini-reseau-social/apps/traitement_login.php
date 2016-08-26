<?php

if(isset($_POST['submit']))
{
    $pseudo = mysqli_real_escape_string($link,$_POST['pseudo']);
    $password = mysqli_real_escape_string($link,$_POST['password']);

    $manager = new UserManager($link);
    $user = $manager->getByPseudo($pseudo);
    //$user retourne les info correspondant a la personne connectée 
    if(sizeof($user) > 0 )
    {   
        if(password_verify($password, $user->getPassword()))
        {
           $_SESSION['pseudo'] = $pseudo ;
           //creation de $_SESSION['pseudo'] si le password correspond et redirection page membre
           header('Location:index.php?page=membre');
        } 
        else
        {
            if(empty($_POST['password']))
            {
                $error = "veullez saisir votre password";//si le champ password est vide 
            }
            else 
            {
                $error = " votre password n'est pas valide " ;//si ce n'est pas le bon bassword
            }
        }
    

   
    }
    else
    {
        if(empty($_POST['pseudo']))
        {
            $error = "veuillez saisir votre pseudo";//si le champ pseudo est vide
        }
        else
        {
            $error = "ce pseudo n'existe pas";// si le pseudo n'existe pas
        }
    }

}
        


?>
