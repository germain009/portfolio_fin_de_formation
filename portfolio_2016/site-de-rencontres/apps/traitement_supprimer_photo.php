<?php
if(isset($_GET['id']))
{
    if($_GET['pseudo'] == $_SESSION['pseudo'])
    {
        $id = intval($_GET['id']);
        $manager = new PhotoManager($link);
        $supprimer = $manager->getById($id);
        $manager->delete($supprimer);
    }
    else
    {
        header('Location:index.php?page=update');
    }
}
?>
