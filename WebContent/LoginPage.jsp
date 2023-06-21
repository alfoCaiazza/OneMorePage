<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>

<!DOCTYPE html>

<html>
	
	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
    	<link href="loginPage1.css" rel="stylesheet" type="text/css">
		<title>OneMorePage</title>
		<script src="javas/loginValidation.js"></script>
	</head>

	<body>
		<div class="center">
				<h1>OneMorePage</h1>
				<form action="Login" method="post" name="login" onSubmit="return ValidateLogin();">
					<div class="txt_field">
	  					<input type="text" id="email" name="email" required>
	  					<label for="email">Email:</label>
	  					<span id = "emessage"></span>
	  				</div>
	  				<div class="txt_field">
	  					<input type="password" id="pwd" name="pw" required>
	  					<label for="pwd">Password:</label>
	  					<span id = "pmessage"></span>
	  				</div>
	  				
	  				<div class="pass">
	  					<input type="checkbox" onclick="myFunction()">Mostra Password
	  				</div>
	  				
	  				<input type="submit" value="Accedi">
	  				
	  				<div class="signup_link">
	  					Non sei registrato?<a href="invalidLogin.jsp"> Registrati</a>
	  				</div>
				</form>
				</div>
		
		<script>
					function myFunction() {
					  var x = document.getElementById("pwd");
					  if (x.type === "password") {
					    x.type = "text";
					  } else {
					    x.type = "password";
					  }
					}
		</script>	
	</body>
</html>
