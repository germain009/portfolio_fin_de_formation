<?php

if (isset($_POST['nom']))
{
    
	try
	{        
                $manager = new ContactManager($link);
		$contact = $manager->create($_POST);
		
	        //header('Location:index.php?page=home') ;
		exit;
	}
	catch (Exception $e)
	{
		$error = $e->getMessage();
	}
}
