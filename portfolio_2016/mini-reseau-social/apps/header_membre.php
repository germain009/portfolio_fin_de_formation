<?php

if(isset($_SESSION['pseudo']))
{
$info = $_SESSION['pseudo'];
$managerInvitations = new AmisManager($link);
$nombre = $managerInvitations->nombre_invitations($info);
$result = sizeof($nombre);
if($result > 0 )
{
?>
  <div class="invitations"><?= $result ?></div>
<?php
}
$managerMessages = new MessageManager($link);
$invitations = $managerMessages->getMessagesNonLus($info);
$nombre = sizeof($invitations);
/*var_dump($nombre);
if($nombre > 0 )
{
?>

    <div class="messages_non lus"><?= $nombre ?></div>

<?php
}*/


$manager = new UserManager($link);
$info = $manager->getByPseudo($_SESSION['pseudo']);
$all = $manager->getAll();
$countAll = intval(sizeof($all));



require('views/header_membre.phtml');

}



?>
