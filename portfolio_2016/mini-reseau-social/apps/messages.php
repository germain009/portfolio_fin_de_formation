<?php

if(isset($_SESSION['pseudo']))
{
    $info = $_SESSION['pseudo'];
    $manager = new MessageManager($link);
    $messages = $manager->getMessages($info);
    //$messages recupere les messeges du membre connecté
    if(sizeof($messages) > 0 ) 
    {
        $count = 0 ;
        while($count < sizeof($messages))
        {
            $result = $messages[$count];
            require('views/messages.phtml');
            $count ++ ;
        }
    }
    else
    //s'il n'y a pas de messages
    {
    echo "vous n'avez pas de messages ";
    }


}

?>
