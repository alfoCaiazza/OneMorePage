<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, model.ProductBean"%>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>OneMorePage</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="ricercaAvanzata.css" rel="stylesheet" type="text/css">
			<link href="Style.css" rel="stylesheet" type="text/css">
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
	<div class="container-ricerca">
	 	<h2>Ricerca Avanzata</h2>
		<form action="SearchServlet" method="POST">
			<input type="hidden" name="action" value="search">
			
			<label for="categoria">Categoria:</label>			
			<input type="text" id="categoria" name="categoria"><br>
			
			<label for="titolo">Titolo:</label>			
			<input type="text" id="titolo" name="titolo"><br>
			
			<label for="autore">Autore:</label>			
			<input type="text" id="autore" name="autore"><br>
			
			<input type="submit" value ="Ricerca"> <input type="reset" value="Cancella">
		</form>
	</div>
	<footer></footer>
	</body>
</html>