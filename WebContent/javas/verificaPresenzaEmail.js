/**
 * 
 */


 $(document).ready(function () {
   $('#email').on('input', function (){
         let cid = $('#email').val();
         let data = {
         				operation: "compare",
         				id: cid
         			};

          $.ajax({
                  url: "RetrieveEmail",
                  method: "GET",
                  data: data,
                  success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#emailTxt").innerHTML = "Utente già iscritto!";
                   },
                   error: function (jqXHR, textStatus, errorThrown) { 
							$("#emailTxt").innerHTML = "Nuovo utente!";
                        },
                   cache: false
        });
    });
});