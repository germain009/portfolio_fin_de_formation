<?php

if(isset($_POST['submit_code']))
{
    if(!empty($_POST['code']))
    {
        $code = htmlentities($_POST['code']);
        $manager = new RecuperationManager($link);
        $recup_code = $manager->getByEmail($_SESSION['email']);
        //pour verifier si le code correspond a celui envoyé par mail 
        $code_recup = $recup_code->getCode();
        if($code == $code_recup)
        {
           
            $recup_code->setValide(1);
            $manager->updateValide($recup_code);
            header('Location:index.php?page=modif_password');

          
        }
        else
        {
            $error = "Ce code n'est pas valide";
        }

    }
    else
    {
        $error = "Veuillez saisir votre code";
    }  

}




?>
