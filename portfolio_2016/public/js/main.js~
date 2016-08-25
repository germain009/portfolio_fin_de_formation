
$(document).ready(function() {
		$('.js-scrollTo').on('click', function() { // Au clic sur un élément
			var page = $(this).attr('href'); // Page cible
			var speed = 750; // Durée de l'animation (en ms)
			$('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
			return false;
		});
	});	
















var input = document.querySelector('.input_submit');


    input.addEventListener('click',function(e)
            {


              e.preventDefault();

var   value1 = document.querySelector('.nom');
var   nom = value1.value;

var   value2 = document.querySelector('.email');
var   email = value2.value;

var   value3 = document.querySelector('.message');
var   message = value3.value;



              

                var route ="index.php?page=home";
               
                var xhr = new XMLHttpRequest();

                xhr.open('POST',route,true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.send('nom=' + nom + '&email=' + email + '&message=' + message);

                xhr.addEventListener('readystatechange',succes);

                function succes(e)
                {
                    if(xhr.status === 200 && xhr.readyState === 4  )
                    {
                        xhr.removeEventListener('readystatechange',succes);
                        

                        
                        


                    }

                }

            });





alert(message);

