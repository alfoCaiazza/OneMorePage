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
	Collection<?> users = (Collection<?>) request.getAttribute("users");
		if(users == null) {
			response.sendRedirect("./UserControl");
			return;
		}
%>

<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*, model.UserBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="UserView.css" rel="stylesheet" type="text/css">
	<link href="Style.css" rel="stylesheet" type="text/css">
	<title>Books Storage</title>
</head>

<body>
	<h2>Users</h2>
	<div class = "container">
	<table border="1">
		<tr>
			<th>Name <a href="UserControl?sort=name">Sort</a></th>
			<th>Surname</th>
			<th>Email</th>
			<th>Password</th>
			<th>Stato</th>
			<th>Provincia</th>
			<th>Paese</th>
			<th>Indirizzo</th>
			<th>CAP</th>
			<th>Action</th>
		</tr>
		<%
			if (users != null && users.size() != 0) {
				Iterator<?> it = users.iterator();
				while (it.hasNext()) {
					UserBean bean = (UserBean) it.next();
		%>
		<tr>
			<td><%=bean.getFirstName()%></td>
			<td><%=bean.getLastName()%></td>
			<td><%=bean.getEmail()%></td>
			<td><%=bean.getPassword()%></td>
			<td><%=bean.getStato()%></td>
			<td><%=bean.getProvincia() %></td>
			<td><%=bean.getPaese()%></td>
			<td><%=bean.getIndirizzo()%></td>
			<td><%=bean.getCAP()%></td>
			<td><a href="UserControl?action=delete&email=<%=bean.getEmail()%>">Delete</a></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No users available</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>
	<a href="MenagerHomePage.jsp"><button class="bottone-indietro"><span style='font-size:30px;'>&#8617;</span></button></a>
</body>
</html>