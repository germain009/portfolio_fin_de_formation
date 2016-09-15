<?php
if(isset($_GET['supprimer']) && isset($_GET['id']))
{    //pour supprimer un article
     $id = $_GET['id'];
     $manager = new ProductManager($link);
     $supprimer = $manager->getById($id);
     $manager->delete($supprimer);
     header('Location:index.php?page=action_admin');
     exit;
    
}
?>
