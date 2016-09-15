<?php
if(isset($_GET['invit']))
{
    if($_GET['invit'] == 'ok')
    {
		$info = $_SESSION['pseudo'];
		$manager = new AmisManager($link);
		$manager->invitationValidée($info);

		header('Location:index.php?page=invitation');
    }
    elseif($_GET['invit'] == 'no')
    {
        $manager = new AmisManager($link);
        $manager->anuler_invitation();
        header('Location:index.php?page=invitation');
    }

}



?>
