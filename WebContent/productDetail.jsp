<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, model.ProductBean"%>
    
<%
	ProductBean product = (ProductBean) request.getAttribute("product");
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="catalog.css" rel="stylesheet" type="text/css">
		<link href="Style.css" rel="stylesheet" type="text/css">
		<title>OneMorePage</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="javas/head.js"></script>
		<script src="javas/foot.js"></script>
		<script>function openNav() {
  	 	 document.getElementById("mySidenav").style.width = "100%";
   			 }

   		 function closeNav() {
     		 document.getElementById("mySidenav").style.width = "0";
     		 }</script>
	
</head>
	</head>
	
	<body>
	<header></header>
	<%if(product != null){ %>
	<div class="container-itemdes">
			<ul class="breadcrumb">
				<li><a class="home" href="userLogged.jsp">Home</a></li>
				<li><a class="home" href="Navbar?categoria=<%=product.getCategory()%>"><%=product.getCategory()%></a></li>
			</ul>
	</div>
	<div class="container-itemdes">
		<ul class="description">
			<li class="row">
				<div class="col left">
					<div class="thumbnail"><img src="<%=product.getImgFull() %>" alt=NONE  width="250" height="400"></div>
				</div>
				<div class="col right">
					<div class="detail">
						<div class="name"><%=product.getName()%></div>
						<div class="author">di <%=product.getAuthor()%></div>
						<div class="rating">Rating:<%=product.getRating()%></div>	
					</div>
					<div class="sell">
						<div class="price"><%=product.getPrice()%> euro</div>
						<div class="buy"><a href="Catalog?action=addCart&prodotto=<%=product.getName()%>"class="add-to-cart">
						<button class="buttoncart">Acquista</button></a> 
						<a class="heart" href="Catalog?action=addPreferito&prodotto=<%=product.getCode()%>"><i style="font-size:24px" class="fa">&#xf004;</i></a></div>				
					</div>
				</div>
				</li>
					
				
		 <%}%>	
		</ul>
		<h2>Descrizione</h2><br>
		<div class="descrizionelunga"><%=product.getLongdescription()%></div> 
	</div>
	<footer></footer>
	</body>
</html>