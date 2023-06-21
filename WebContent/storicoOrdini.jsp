<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%
    	Collection<?> orderHistory = (Collection<?>) request.getAttribute("orderHistory");
    	if(orderHistory == null) {
    		response.sendRedirect("./OrderHistory");
    		return;
    	}
    %> 
     
<!DOCTYPE html>
	<html>
		<%@ page import="java.util.*,model.OrderBean"%>
		<head>
		<meta charset="UTF-8">
		<link href="storicoOrdini.css" rel="stylesheet" type="text/css">
		<script src="javas/head.js"></script>
		<script src="javas/foot.js"></script>
		<script>function openNav() {
  	  document.getElementById("mySidenav").style.width = "100%";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      }
    </script>
		<title>OneMorePage</title>
		</head>
		
		<body>
		<header></header>
		<div class="container-storico">
				<h2>Storico ordini effettuati</h2>
		
		<table border="1">
		<tr>
			<th>DataOrdine</th>
			<th>Importo</th>
			<th>Libri acquistati</th>
		</tr>
		<%
			if (orderHistory != null && orderHistory.size() != 0) {
				Iterator<?> it = orderHistory.iterator();
				while (it.hasNext()) {
					OrderBean bean = (OrderBean) it.next();
		%>
		<tr>
			<td><%=bean.getDataOrdine()%></td>
			<td><%=bean.getImporto()%>€</td>
			<td><%=bean.getCodici()%></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No order history available</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>
	
	<footer></footer>
		</body>
	</html>