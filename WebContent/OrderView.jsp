<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// Check user credentials
	Boolean adminRoles = (Boolean) session.getAttribute("adminFilterRoles");
	if ((adminRoles == null) || (!adminRoles.booleanValue()))
	{	
	    response.sendRedirect("./LoginPage.jsp");
	    return;
	}

    Collection<?> orders = (Collection<?>) request.getAttribute("orders");
	if(orders == null) {
		response.sendRedirect("./MenagerOrderControl");
		return;
	}
%>
    
<!DOCTYPE html>
	<html>
	<%@ page import="java.util.*, model.OrderBean"%>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="OrderV.css" rel="stylesheet" type="text/css">
			<link href="Style.css" rel="stylesheet" type="text/css">
			<title>Books Storage</title>
		</head>
		
		<body>
			<h2>Orders</h2>
	<div class = "container">
	
	<table border="1">
		<tr>
			<th>Data ordine<a href="MenagerOrderControl?sort=dataordine">Sort</a></th>
			<th>Status</th>
			<th>Importo</th>
			<th>Utente <a href="MenagerOrderControl?sort=utente">Sort</a></th>
		</tr>
		<%
			if (orders != null && orders.size() != 0) {
				Iterator<?> it = orders.iterator();
				while (it.hasNext()) {
					OrderBean bean = (OrderBean) it.next();
		%>
		<tr>
			<td><%=bean.getDataOrdine()%></td>
			<td><%=bean.getStatus()%></td>
			<td><%=bean.getImporto()%></td>
			<td><%=bean.getUtente()%></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No orders available</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>
	<div class="forms">
		<form action="./OrdersByDate">
			<input type="hidden" name="action" value="searchByDate">
			<label for="dataInizio">Data inizio ricerca: </label>
			<input type="date" name="dataInizio" id="dataInizio" required>
			<label for="dataFine">Data fine ricerca: </label>
			<input type="date" name="dataFine" id="dataFine" required>
			<input type="submit" value="Ricerca" class="ricerca-btn">
		</form>
	</div>
	<div class="forms">
		<form action="./OrdersByUser">
			<input type="hidden" name="action" value="searchByUser">
			<label for="user">Email utente:</label>
			<input type="text"  maxlength="150" required placeholder="mariorossi@gmail.com" name="user" id="user">
			<input type="submit" value="Ricerca" class="ricerca-btn">
		</form>
	</div>
	<a href="MenagerHomePage.jsp"><button class="bottone-indietro"><span style='font-size:30px;'>&#8617;</span></button></a>
	</body>
	</html>