<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
    <%
    	Collection<?> carrello = (Collection<?>) request.getAttribute("cart");
    		if(carrello == null) {
				response.sendRedirect("./CartControlDB");
				return;
		}
    %>
<!DOCTYPE html>
	<html>
		<%@ page contentType="text/html; charset=UTF-8" import="java.util.*, model.ProductBean,model.CartBean, java.lang.Math, model.BuonoscontoBean"%>
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<link href="carrello2.css" rel="stylesheet" type="text/css">
			<link href="Style.css" rel="stylesheet" type="text/css">
			<script src="javas/head.js"></script>
			<script src="javas/foot.js"></script>
			<script src="javas/cart.js"></script>
			<title>OneMorePage</title>
		</head>
		<body>
		<div id="cart">
		<header></header>
		
			<%if(carrello != null){ %>
			<div class="containercart">
			<h1>Carrello</h1>
			<ul class="breadcrumb">
				<li><a class="home" href="userLogged.jsp">Home</a></li>
				<li>Carrello</li>
			</ul>
			</div>
			<div class = "containercart">
			<ul class="products">
			<%
			   if (carrello != null && carrello.size() != 0) {
					Iterator<?> it = carrello.iterator();
					while (it.hasNext()) {
						CartBean bean = (CartBean) it.next();
			%>
							<li class="row">
								<div class="col left">
									<a href="Detail?action=readFromCart&prodotto=<%=bean.getProdotto()%>"><div class="thumbnail"><img src="<%=bean.getCopertina()%>" alt="NONE"></div></a>
									<div class="detail"><div class="name"><%=bean.getProdotto()%></div>
									<div class="price"><%=bean.getPrezzo()%> €</div></div>
								</div>
								<div class="col right">
									<div class="quantity"><input type="number" class="quantity" step="1" value="<%=bean.getQuantita()%>"/></div>
									<div class="remove"><a class="removebtn"href="CartControlDB?action=deleteCart&prodotto=<%=bean.getProdotto()%>"><i style="font-size:30px"class="fa">&#xf00d;</i></a></div>
								</div>
							
				<%} 
				}%>
						</ul>
				</div>
			<%}%>
			<div class="containercart">
				<div class="summary">
			 	<ul>
			 		<%
					   if (carrello != null && carrello.size() != 0) {
							Iterator<?> it = carrello.iterator();
							double totale = 0;
							while (it.hasNext()) {
								CartBean bean = (CartBean) it.next();
								totale = (totale + (bean.getQuantita() * bean.getPrezzo()));	
							}
							totale = totale + (0.22 * totale);
							totale = Math.round(totale*100.0)/100.0;
			 		%>
			 		<li>IVA: 22%<span></span></li>
			 		<li class="total">Totale: <%=totale%>€<span></span></li>
			 		<%	
					   }
			 		%>
				</ul>
				</div>
				<div class="checkout">
					<a href="OrderControl?action=acquista"><button class="buttoncart">Acquista</button></a>
				</div>
			
			</div>
		
		<footer></footer>
		</div>
		</body>
		
	</html>