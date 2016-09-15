var mess = document.querySelectorAll('.mess');
var messL = mess.length;
for(i = 0 ; i < messL ; i ++ )
{
    mess[i].style.display = "none";
}




var send = document.querySelectorAll('.send');
var sendL = send.length;
for(i = 0 ; i < sendL ; i ++ )
{
    
    send[i].addEventListener('click',function(e){
    e.target.nextElementSibling.style.display = "block";
});
    send[i].addEventListener('dblclick',function(e){
    e.target.nextElementSibling.style.display = "none";
});

}

