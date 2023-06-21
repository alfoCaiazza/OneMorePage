<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, model.UserBean"
    pageEncoding="ISO-8859-1"%>
    
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
			<title>OneMorePage</title>
			<link href="UserSettings.css" rel="stylesheet" type="text/css">
			<link href="Style.css" rel="stylesheet" type="text/css">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<script src="javas/head.js"></script>
	<script src="javas/foot.js"></script>
	 <script>
    function openNav() {
    	  document.getElementById("mySidenav").style.width = "100%";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }</script>
		</head>
		<body>
		<header></header>
		<div class="whole-container">
			<div class = "container-settings">
				<div class="blocco">
					<a  class="gestione" href = "gestioneIndirizzi.jsp">Indirizzi di spedizione</a>
				</div>
					
				<div class="blocco uno">
					<a class="gestione" href = "gestionePagamenti.jsp">Metodi di pagamento</a>
				</div>
			</div>
			<div class = "container-settings">
				<div class="blocco due">
					<a class="gestione" href = "gestioneInformazioni.jsp">Informazioni account</a>
				</div>
				<div class="blocco tre">
					<a class="gestione" href = "storicoOrdini.jsp">Storico ordini</a>
				</div>
			</div>
			</div>
			<footer></footer>
		</body>
	</html>