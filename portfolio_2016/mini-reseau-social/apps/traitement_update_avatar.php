<?php

if(isset($_POST['submit']))
{
    $uploaddir = 'public/images/';
    $uploadfile = $uploaddir . basename($_FILES['avatar']['name']);
    if (move_uploaded_file($_FILES['avatar']['tmp_name'], $uploadfile)) 
       {

          try
          {
              $manager = new UserManager($link);
              $user = $manager->getByPseudo($_SESSION['pseudo']);
              $user->setAvatar($_FILES['avatar']['name']);
              $manager->updateAvatar($user);
              header('Location:index.php?page=membre');
          } 
          catch (Exception $e)
          {
              $error = $e->getMessage();
          }
      }
      else 
      {
          $error =  "vous n'avez pas coisi de fichier ";
      }
}

?>
