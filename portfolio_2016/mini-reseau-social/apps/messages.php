<?php

if(isset($_SESSION['pseudo']))
{
    $info = $_SESSION['pseudo'];
    $manager = new MessageManager($link);
    $messages = $manager->getMessages($info);
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
    {
    echo "vous n'avez pas de messages ";
    }


}

?>
