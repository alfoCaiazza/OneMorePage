<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Collection<?> libri = (Collection<?>) request.getAttribute("libri");
		if(libri == null) {
	response.sendRedirect("./HeaderLibriInglese");
	return;
		}

%>

<!DOCTYPE html>
<html>

<%@ page contentType="text/html; charset=UTF-8" import="java.util.*, model.ProductBean,model.Cart"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="userLogged.css" rel="stylesheet" type="text/css">
	<title>OneMorePage</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="javas/head.js"></script>
	<script src="javas/foot.js"></script>
	<script>function openNav() {
  	  document.getElementById("mySidenav").style.width = "100%";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      }</script>
</head>
<body>
<header></header>
<div class="container-tutta-home">
<div class="vertical-bar">
		<nav class='animated bounceInDown'>
	<ul>
		<li class='sub-menu'>Reparti
			<ul>
				<li><a href='Navbar?categoria=narrativa italiana'>Narrativa Italiana</a></li>
				<li><a href='Navbar?categoria=narrativa straniera'>Narrativa Straniera</a></li>
				<li><a href='Navbar?categoria=gialli e horror'>Gialli e Horror</a></li>
				<li><a href='Navbar?categoria=fantascienza'>Fantascientifico</a></li>
				<li><a href='Navbar?categoria=bambini e ragazzi'>Bambini e Ragazzi</a></li>
				<li><a href='Navbar?categoria=societa e politica'>Società e Politica</a></li>
				<li><a href='Navbar?categoria=storia'>Storia</a></li>
				<li><a href='Navbar?categoria=economia e diritto'>Economia e Diritto</a></li>
				<li><a href='Navbar?categoria=biografia'>Biografia</a></li>
				<li><a href='Navbar?categoria=casa e cucina'>Case e Cucina</a></li>
			</ul>
		</li>
		<li class='sub-menu'>Inglese
			<ul>
				<li><a href="HeaderLibriInglese?action=homepage">Libri in inglese</a></li>
			</ul>
		</li>
	</ul>
</nav>
	</div>
<div class="container-home">
	<section class="product">
		<h2 class="product-category">La nostra Top10</h2>
		<button class="pre-btn"><img src="img/arrow.png" alt ="NONE"></button>
		<button class="nxt-btn"><img src="img/arrow.png" alt ="NONE"></button>
		<div class="product-container">
		<%
			if (libri != null && libri.size() != 0) {
				Iterator<?> it = libri.iterator();
				while (it.hasNext()) {
					ProductBean bean = (ProductBean) it.next();
		%>
			
			<div class="product-card">
				<div class="product-image">
					<a href="Detail?action=read&id=<%=bean.getCode()%>"><img src="<%=bean.getImgThumb()%>" alt="NONE" class="product-thumb"></a>
					<div class="img-btn">
					<div class="addtofav"><a class="removebtn cuore" href="Catalog?action=addPreferito&prodotto=<%=bean.getCode()%>"><button class="btnhp heart"><i style="font-size:30px" class="fa">&#xf004;</i></button></a></div>
					<div class="addtocart"><a class="removebtn carrello" href="Catalog?action=addCart&prodotto=<%=bean.getName()%>"><button class="btnhp cart"><i style="font-size:30px" class="fa">&#xf217;</i></button></a></div>		
					</div>
				</div>
				<div class="product-info">
					<h2 class="product-brand"><%=bean.getName()%></h2>
					<p class="product-short-description"><%=bean.getAuthor()%></p>
					<span class="price"><%=bean.getPrice()%>€</span>
				</div>
			</div>
			
		<%
				}
			} else {
		%>
			<h2>No products available</h2>
		<%
			}
		%>
		</div>
		</section>
		</div>
		</div>
		<script type="text/javascript" src="javas/script.js"></script>
<footer></footer>
</body>
</html>