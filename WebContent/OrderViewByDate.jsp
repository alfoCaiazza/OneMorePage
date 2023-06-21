<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	// Check user credentials
	Boolean adminRoles = (Boolean) session.getAttribute("adminFilterRoles");
	if ((adminRoles == null) || (!adminRoles.booleanValue()))
	{	
	    response.sendRedirect("./LoginPage.jsp");
	    return;
	}

    Collection<?> ordersByDate = (Collection<?>) request.getAttribute("ordersByDate");
	if(ordersByDate == null) {
		response.sendRedirect("./OrdersByDate");
		return;
	}
%>

	<!DOCTYPE html>
		<%@ page import="java.util.*, model.OrderBean"%>
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<link href="OrderV.css" rel="stylesheet" type="text/css">
				<link href="Style.css" rel="stylesheet" type="text/css">
				<title>Books Storage</title>
			</head>
			<body>
				<h2>Orders By Date</h2>
					<div class = "container">
						<table border="1">
							<tr>
								<th>Data ordine</th>
								<th>Status</th>
								<th>Importo</th>
								<th>Utente</th>
							</tr>
							<%
								if (ordersByDate != null && ordersByDate.size() != 0) {
									Iterator<?> it = ordersByDate.iterator();
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
								<td colspan="6">No orders found</td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
					<a href="OrderView.jsp"><button class="bottone-indietro"><span style='font-size:30px;'>&#8617;</span></button></a>
			</body>
		</html>