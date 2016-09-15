<?php

if(isset($_SESSION['pseudo']))
{
    $pseudo = $_SESSION['pseudo'];
    $manager = new MessageManager($link);
    $messages = $manager->getMessages($pseudo);
    $nombre = sizeof($messages);
    $parPage = 10 ;
    $nbrPages = ceil($nombre/$parPage);
    if(isset($_GET['p-page']) && ($_GET['p-page'] > 0) && ($_GET['p-page'] <= $nbrPages) )
	{
            $p_page = $_GET['p-page'];
	}
	else
	{
            $p_page = 1 ;
	}
     $messages_pagination = $manager->getMessages_pagination($pseudo,$p_page,$parPage);
    
    //$messages recupere les messeges du membre connecté
    if(sizeof($messages_pagination) > 0 ) 
    {
        $count = 0 ;
        while($count < sizeof($messages_pagination))
        {
            $result = $messages_pagination[$count];
            require('views/messages.phtml');
            if($result->getDate() < $result->getDateVue())
            {
                require('views/message_vert.phtml');
            }
            else
            {
                require('views/message_rouge.phtml');
            }
                
            $count ++ ;
        }
            require('views/pagination_messages.phtml');
    }
    else
    //s'il n'y a pas de messages
    {
    echo "vous n'avez pas de messages ";
    }


}

?>
