<?php
if(isset($_GET['invit']))
{
    $info = $_SESSION['pseudo'];
    $manager = new AmisManager($link);
    $manager->invitationValidée($info);

    header('Location:index.php?page=invitation');

}


?>
