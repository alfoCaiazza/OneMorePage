<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, model.UserBean"%>
    
<%
	UserBean user = (UserBean)request.getSession().getAttribute("currentSessionUser");
	if(user == null){
		response.sendRedirect("LoginPage.jsp");
		return;
	}
%>
	<!DOCTYPE html>
			<html>
			<head>
				<meta charset="ISO-8859-1">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<link href="Style.css" rel="stylesheet" type="text/css">
				<link href="gestioneInformazioni.css" rel="stylesheet" type="text/css">
				<script src="javas/head.js"></script>
				<script src="javas/foot.js"></script>
				 <script>
  					  function openNav() {
    						  document.getElementById("mySidenav").style.width = "100%";
   							 }

   					 function closeNav() {
    						  document.getElementById("mySidenav").style.width = "0";
   							 }</script>
				<title>OneMorePage</title>
			</head>
			<body>
			<header></header>
  <div class="card">
  <h2>Informazioni utente</h2>
  <div class="row">
  <form action="gestioneInformazioni" method="post">
  	<input type="hidden" name="action" value="update"> 
    <div class="col">
      <div class="form-group">
        <label for="newname">Nome:</label>
		<input name="newname" id="newname" type="text" value="<%=user.getFirstName()%>">
      </div>
    </div>

    <div class="col">
      <div class="form-group">
        <label for="newsurname">Cognome:</label>
		<input name="newsurname" id="newsurname" type="text" value="<%=user.getLastName()%>">
      </div>
    </div>

    <div class="col">
      <div class="form-group">
        <label for="email">Email:</label>
		<input name="email" id="email" type="text" value="<%=user.getEmail()%>" readonly>
      </div>
    </div>

    <div class="col">
      <div class="form-group">
        <label for="newpassword">Password:</label>
		<input name="newpassword" id="newpassword" type="password" value="<%=user.getPassword()%>"><br>
      </div>
    </div>
    
    <div class="col">
    <input type="checkbox" onclick="myFunction()"><span class="show-pwd">Show Password</span>
    </div>
    <div class="col">
      <input type="submit" value="Update">
    </div>
    </form>
  </div>
  <script>
					function myFunction() {
					  var x = document.getElementById("newpassword");
					  if (x.type === "password") {
					    x.type = "text";
					  } else {
					    x.type = "password";
					  }
					}
				</script>
</div>
<footer></footer>
			</body>
		</html>