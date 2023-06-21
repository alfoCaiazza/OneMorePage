<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%
    	Collection<?> pagamento = (Collection<?>) request.getAttribute("pagamenti");
    	if(pagamento == null) {
    		response.sendRedirect("./PaymentControl2");
    		return;
    	}
    %> 
     
<!DOCTYPE html>
	<html>
		<%@ page import="java.util.*,model.PaymentBean"%>
		<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="SelectPayment.css" rel="stylesheet" type="text/css">
		<link href="Style.css" rel="stylesheet" type="text/css">
		<title>OneMorePage</title>
		<script src="javas/cardValidation.js"></script>
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
		<div class="container-payment">
				<h2>Le tue carte</h2>
		<table border="1">
		<tr>
			<th>Codice Carta</th>
			<th>CVC</th>
			<th>Intestatario</th>
			<th>Scadenza</th>
			<th>Action</th>
		</tr>
		<%
			if (pagamento != null && pagamento.size() != 0) {
				Iterator<?> it = pagamento.iterator();
				while (it.hasNext()) {
					PaymentBean bean = (PaymentBean) it.next();
		%>
		<tr>
			<td><%=bean.getCodiceCarta()%></td>
			<td><%=bean.getCvc()%></td>
			<td><%=bean.getIntestatario()%></td>
			<td><%=bean.getMese()%> / <%=bean.getAnno()%></td>
			<td><a class="delbtn"href="PaymentControl2?action=delete&id=<%=bean.getCodiceCarta()%>">Delete</a></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No payments available</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>
	<div class="container-payment">
	<h2>Inserisci nuova carta</h2>
	<div class="former">
	<form action="./PaymentControl2" onSubmit="return ValidateCard();">
			<input type="hidden" name="action" value="add">
			
			<label for="codiceCarta">Codice carta:</label>
			<input type="text" id="codiceCarta" name="codiceCarta" required placeholder="XXXX-XXXX-XXXX-XXXX"><br>
			<span id="codiceTxt"></span><br>
			<label for="cvc">CVC:</label>
			<input type="number" name="cvc" id="cvc" max= "9999" required placeholder="000"><br>
			<span id="cvcTxt"></span><br>
			<label for="intestatario">Intestatario carta:</label>
			<input type="text" id="intestatario" name="intestatario" required placeholder="Mario Rossi"><br>
			<span id="intestatarioeTxt"></span><br>
			<label for="dataScadenza">Data scadenza:</label>
			<input type="text"  id="mese" name="mese" required placeholder = "MM"> /
			<input type="text"  id="anno" name="anno" required  placeholder = "YYYY"><br>
			<span id="scadenzaTxt"></span><br>
			<input type="submit" value="Inserisci">	
	</form>
	</div>
	</div>
	<footer></footer>
		</body>
	</html>