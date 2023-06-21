<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="RicercaAJAX.css" rel="stylesheet" type="text/css">
<title>OneMorePage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script src="javas/search.js"></script>
<script src="javas/foot.js"></script>
<script src="javas/head.js"></script>
 <script>
    function openNav() {
    	  document.getElementById("mySidenav").style.width = "100%";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }</script>
<style TYPE="text/css" media="all">
.ui-autocomplete { 
    position: absolute; 
    cursor: default; 
    height: 200px; 
    overflow-y: scroll; 
    overflow-x: hidden;}
</style>
</head>
<body>
	<header></header>
	<div class="ricerca-container">
    <h1>Quale libro stai cercando?</h1>
    <form name="as400samplecode" action="Detail" method="get">
    		<input type="hidden" name="action" value="simpleSearch">
      <table>
            <tr>
            	<td><input id="autoText" maxlength="20" name="paramSearch" placeholder="Ricerca..."/>
                </td>
            </tr>
        </table>
    </form>
   <br><a href="ricercaAvanzata.jsp" class="ricerca-avanzata">Ricerca avanzata</a>
   </div>
    <footer></footer>
</body>
</html>