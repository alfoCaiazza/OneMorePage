<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%
    	Collection<?> indirizzi = (Collection<?>) request.getAttribute("indirizzi");
    	if(indirizzi == null) {
    		response.sendRedirect("./AddressControl");
    		return;
    	}
    %> 
     
<!DOCTYPE html>
	<html>
		<%@ page import="java.util.*,model.AddressBean"%>
		<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="gestioneIndirizzi.css" rel="stylesheet" type="text/css">
		<link href="Style.css" rel="stylesheet" type="text/css">
		<title>OneMorePage</title>
		<script src="javas/addressValidation.js"></script>
		<script src="javas/registration.js"></script>
		 <script src="javas/jquery.js"></script>
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
		<div class="indirizzi-container">
				<h2>Rubrica indirizzi</h2>
		<div style="overflow-x:auto;">
		<table border="1">
		<tr>
			<th>Destinatario</th>
			<th>Regione</th>
			<th>Provincia</th>
			<th>Paese</th>
			<th>Indirizzo</th>
			<th>CAP</th>
			<th>Action</th>
		</tr>
		<%
			if (indirizzi != null && indirizzi.size() != 0) {
				Iterator<?> it = indirizzi.iterator();
				while (it.hasNext()) {
					AddressBean bean = (AddressBean) it.next();
		%>
		
		<tr>
			<td><%=bean.getNomeDestinatario()%></td>
			<td><%=bean.getStato()%></td>
			<td><%=bean.getProvincia()%></td>
			<td><%=bean.getPaese()%></td>
			<td><%=bean.getIndirizzo()%></td>
			<td><%=bean.getCAP()%></td>
			<td><a class="del" href="AddressControl?action=delete&codiceUtente=<%=bean.getCodiceUtente()%>&numCivico=<%=bean.getIndirizzo()%>&CAP=<%=bean.getCAP()%>">Delete</a></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No address available</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>
	<h2>Inserisci nuovo indirizzo</h2>
	<form action="AddressControl" onSubmit="return ValidateAddress();">
			<input type="hidden" name="action" value="add">
			
			<label for="nomeDestinatario">Destinatario:</label>
			<input type ="text" required name="nomeDestinatario" id="nomeDestinatario"><br>
			<span id="nameTxt"></span><br>
			
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
  			
  			<label for="indirizzo">Indirizzo:</label>
  			<input type ="text" required name="indirizzo" id="indirizzo"><br>
  			<span id="indirizzoTxt"></span><br>
  			
  			<label for="CAP">CAP:</label>
  			<input type ="number" required name="CAP" id="CAP" min="11111" max="99999"><br>
  			<span id="capTxt"></span><br>
  			
  			<input type = "submit" value="Inserisci">
	</form>
	</div>
	<footer></footer>
		</body>
	</html>