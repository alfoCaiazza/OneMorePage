<%@ page language="java" 
      contentType="text/html; charset=windows-1256"
      pageEncoding="windows-1256"
   %>

   <!DOCTYPE html>
   <html>

      <head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <link href="invalidLogin1.css" rel="stylesheet" type="text/css">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <title>OneMorePage</title>
         <script src="javas/head.js"></script>
		 <script src="javas/foot.js"></script>
         <script src="javas/jquery.js"></script>
         <script src="javas/registration.js"></script>
         <script src="javas/regValidation.js"></script>
      </head>
	
      <body>
      <header></header>     
        <div class = "center-reg">
        <h2>Registrati</h2>
         <form action="Registration" method="post" onSubmit="return ValidateRegistration();">
         <div class="set">
         <div class="set-name">
 			<label for="name">Nome:</label><br>
  			<input type="text" id="name" name="name" required><br>
  			<span id = "nameTxt"></span><br><br>   </div>
  		<div class="set-surname">
  			<label for="surname">Cognome:</label><br>
  			<input type="text" id="surname" name="surname" required><br>
  			<span id = "surnameTxt"></span><br><br> </div>
  			</div>
  		<div class="set">
  		<div class="set-email">
 			<label for="email">Email:</label><br>
  			<input type="text" id="email" name="email" required><br>
  			<span id = "emailTxt"></span><br><br> </div>
  		<div class="set-pwd">
  			<label for="pwd">Password:</label><br>
  			<input type="password" id="pwd" name="pw" required><br>
  			<span id = "passTxt"></span><br><br></div>
  		</div> 
  		<div class="set">
		<div class="set-regione">
	   		<label for="stato">Regione:</label><br>
	    	<select id="regione" name="regione" required><option>Seleziona Regione</option></select>
	  		<span id = "regioneTxt"></span><br><br>
  		</div>
  		<div class="set-provincia"> 
  			<label for="provincia">Provincia:</label><br>
  			<select id="provincia" name="provincia" required><option>Seleziona Provincia</option></select>
  			<span id = "provinciaTxt"></span><br><br> </div> 
  		<div class="set-paese">
 			<label for="paese">Paese:</label><br>
  			<input type="text" id="paese" name="paese" required><br>
  			<span id = "paeseTxt"></span><br><br> </div>
  		</div>
  		<div class="set">
  		<div class="set-indirizzo">
  			<label for="indirizzo">Indirizzo:</label><br>
  			<input type="text" id="indirizzo" name="indirizzo" required><br>
  			<span id = "indirizzoTxt"></span><br><br></div>
  		<div class="set-cap">
  			<label for="CAP">CAP:</label><br>
  			<input type="number" id="CAP" name="CAP" required><br><br>
  			<span id = "capTxt"></span><br><br> </div>
  		</div>    
 			<input class = "pulsante" type="submit" value="Registrati">
		</form>
		</div>
		
		<footer></footer>
      </body>
	
   </html>