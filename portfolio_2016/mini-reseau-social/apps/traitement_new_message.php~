<?php

if(isset($_POST['submit']) && isset($_GET['pseudo']))
{
    

    try
    {
        $manager = new MessageManager($link);
        $manager->create($_POST);
        header("Location:index.php?page=membre ");

    }
    catch (Exception $e)
    {
        $error = $e->getMessage();
    } 

   
    
}

?>
