<%
// Check user credentials
Boolean adminRoles = (Boolean) session.getAttribute("adminFilterRoles");
if ((adminRoles == null) || (!adminRoles.booleanValue()))
{	
    response.sendRedirect("./LoginPage.jsp");
    return;
}
%>


<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="MenagerHomePage.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
		<div class = "container">
			<div class="blocco">
				<a href = "ProductView.jsp">Gestisci prodotti</a>
			</div>
				
			<div class="blocco">
				<a href = "UserView.jsp">Gestisci utenti</a>
			</div>
			
			<div class="blocco">
				<a href = "OrderView.jsp">Gestisci ordini</a>
			</div>
		</div>
		<a href="LoginPage.jsp"><button class="bottone-indietro"><i style="font-size:24px" class="fa">&#xf015;</i></button></a>
</body>
</html>