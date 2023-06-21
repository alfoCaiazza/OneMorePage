/**
 * 
 */

 $(document).ready(function () {
   $.ajax({
           url: "GetRegioneServlet",
           method: "GET",
           data: {operation: 'regione'},
           success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        let obj = $.parseJSON(data);
                        $.each(obj, function (key, value) {
                            $('#regione').append('<option value="' + value.id + '">' + value.name + '</option>')
                        });
                        $('select').formSelect();
                    },
            error: function (jqXHR, textStatus, errorThrown) {
                        $('#regione').append('<option>Regione non disponibile</option>');
                    },
            cache: false
   });

   $('#regione').change(function () {
         $('#provincia').find('option').remove();
         $('#provincia').append('<option>Seleziona provincia</option>'); 

         let cid = $('#regione').val();
         let data = {
         				operation: "provincia",
         				id: cid
         			};

          $.ajax({
                  url: "GetRegioneServlet",
                  method: "GET",
                  data: data,
                  success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            let obj = $.parseJSON(data);
                            $.each(obj, function (key, value) {
                                $('#provincia').append('<option value="' + value.id + '">' + value.name + '</option>')
                            });
                            $('select').formSelect();
                   },
                   error: function (jqXHR, textStatus, errorThrown) {
                            $('#provincia').append('<option>Provincia non disponibile</option>');
                        },
                   cache: false
        });
    });
});