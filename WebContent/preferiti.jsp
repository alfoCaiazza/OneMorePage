<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.PreferitiBean"%>
    
       <%
    	Collection<?> preferiti = (Collection<?>) request.getAttribute("preferitiUtente");
    	if(preferiti == null) {
    		response.sendRedirect("./PreferitiControl");
    		return;
    	}
    %> 
     
<!DOCTYPE html>
	<html>
		<%@ page %>
		<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="Style.css" rel="stylesheet" type="text/css">
		<link href="preferiti.css" rel="stylesheet" type="text/css">
		<script src="javas/head.js"></script>
		<script src="javas/foot.js"></script>
			<script>
    function openNav() {
    	  document.getElementById("mySidenav").style.width = "100%";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }</script>
		<title>OneMorePage</title>
		</head>
		<body>
		<header></header>
		<div class="container-pref">
		<h1>Preferiti</h1>
			<ul class="breadcrumb">
				<li><a class="home" href="userLogged.jsp">Home</a></li>
				<li>Preferiti</li>
			</ul>
			</div>
			<div class="container-pref">
			<ul class="products">
		<%
			if (preferiti != null && preferiti.size() != 0) {
				Iterator<?> it = preferiti.iterator();
				while (it.hasNext()) {
					PreferitiBean bean = (PreferitiBean) it.next();
		%>
			<li class="row">
			<div class="col left">
				<div class="thumbnail"><a href="Detail?action=read&id=<%=bean.getProdotto()%>"><img src="<%=bean.getCopertina() %>" alt="NONE" width="200" height="300"></a></div>
				<div class="detail">
				<div class="name"><%=bean.getTitolo()%></div>
				<div class="author">Autore: <%=bean.getAutore() %></div>
				<div class="price">Prezzo: <%=bean.getCosto()%> €</div>
				</div>
			</div>
			<div class="col right">
				<div class="addtocart"><a class="removebtn" href="PreferitiControl?action=addCart&prodotto=<%=bean.getTitolo()%>"><i style="font-size:30px" class="fa">&#xf217;</i></a></div>
				<div class="remove"><a class="removebtn" href="PreferitiControl?action=delete&id=<%=bean.getProdotto()%>"><i style="font-size:30px"class="fa">&#xf00d;</i></a></div>
			</div>
			
				
				
		
		<%
				}
			} else {
		%>
			<p>No favorite yet</p>
		<%
			}
		%>
		</ul>
		</div>
	<footer></footer>
	</body>
	</html>