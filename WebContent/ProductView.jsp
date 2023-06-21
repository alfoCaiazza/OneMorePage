<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
// Check user credentials
Boolean adminRoles = (Boolean) session.getAttribute("adminFilterRoles");
if ((adminRoles == null) || (!adminRoles.booleanValue()))
{	
    response.sendRedirect("./ErrorPage.jsp");
    return;
}

	Collection<?> products = (Collection<?>) request.getAttribute("products");
		if(products == null) {
			response.sendRedirect("./product");
			return;
		}
	ProductBean product = (ProductBean) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*, model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="product.css" rel="stylesheet" type="text/css">
	<title>Books Storage</title>
</head>

<body>
	<h2>Products</h2>
	<table border="1">
		<tr>
			<th><a href="product?sort=code">Codice</a></th>
			<th><a href="product?sort=name">Titolo</a></th>
			<th>Prezzo</th>
			<th>Autore</th>
			<th>Categoria</th>
			<th>Qauntità</th>
			<th>Data</th>
			<th>Azione</th>
		</tr>
		<%
			if (products != null && products.size() != 0) {
				Iterator<?> it = products.iterator();
				while (it.hasNext()) {
					ProductBean bean = (ProductBean) it.next();
		%>
		<tr>
			<td><%=bean.getCode()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getPrice()%></td>
			<td><%=bean.getAuthor()%></td>
			<td><%=bean.getCategory()%></td>
			<td><%=bean.getQuantity() %></td>
			<td><%=bean.getDataInserimento() %></td>
			<td><a href="product?action=delete&id=<%=bean.getCode()%>">Elimina</a><br>
				<a href="product?action=read&id=<%=bean.getCode()%>">Dettagli</a></td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="6">No products available</td>
		</tr>
		<%
			}
		%>
	</table>

	<h2>Details</h2>
	<%
		if (product != null) {
	%>
	<div style="overflow-x:auto;">
	<table border="1">
		<tr>
			<th>Codice</th>
			<th>Nome</th>
			<th>Descrizione br</th>
			<th>Descrizione lg</th>
			<th>Img Thumb</th>
			<th>Img Full</th>
			<th>Prezzo</th>
			<th>Peso</th>
			<th>Categoria</th>
			<th>Autore</th>
			<th>Rating</th>
			<th>Quantità</th>
		</tr>
		<tr>
			<td><%=product.getCode()%></td>
			<td><%=product.getName()%></td>
			<td><%=product.getShortdescription()%></td>
			<td><%=product.getLongdescription()%></td>
			<td><img src="<%=product.getImgThumb()%>" alt="NONE"></td>
			<td><img src="<%=product.getImgFull()%>" alt = "NONE"></td>
			<td><%=product.getPrice()%></td>
			<td><%=product.getWeight()%></td>
			<td><%=product.getCategory()%></td>
			<td><%=product.getAuthor()%></td>
			<td><%=product.getRating()%></td>
			<td><%=product.getQuantity()%></td>
		</tr>
	</table>
	</div>
	<%
		}
	%>
	
	<h2>Update Book</h2>
	<%
		if (product != null) {
	%>
	<div>
		<form action="product" method="post">
		<input type="hidden" name="action" value="update"> 
		
		<label for="code">Code:</label>
		<input name="code" type="number" value="<%=product.getCode()%>" readonly>
		
		<label for="newname">Name:</label>
		<input name="newname" type="text" maxlength="100" required value="<%=product.getName()%>">
		
		<label for="newshortdescription">Short description:</label>
		<textarea name="newshortdescription" maxlength="100" rows="3" required><%=product.getShortdescription()%></textarea>
		
		<label for="newlongdescription">Long description:</label>
		<textarea name="newlongdescription" maxlength="200" rows="3" required><%=product.getLongdescription()%></textarea>
		
		<label for="newimgthumb">Image Thumb:</label>
		<input name="newimgthumb" type="text" maxlength="999" required value="<%=product.getImgThumb()%>">
		
		<label for="newimgfull">Image Full:</label>
		<input name="newimgfull" type="text" maxlength="999" required value="<%=product.getImgFull()%>"><br>
		
		<label for="newprice">Price:</label>
		<input name="newprice" type="number" step="0.1" value="<%=product.getPrice()%>" required><br>

		<label for="newweight">Weight:</label>
		<input name="newweight" type="number" step="0.1" value="<%=product.getWeight()%>" required><br>
		
		<label for="newcategory">Category:</label>
		<input name="newcategory" type="text" maxlength="20" required value="<%=product.getCategory()%>">
		
		<label for="newauthor">Author:</label>
		<input name="newauthor" type="text" maxlength="30" required value="<%=product.getAuthor()%>">
		
		<label for="newrating">Rating:</label>
		<input name="newrating" type="number" min="0" max="5" value="<%=product.getRating()%>" required>
		
		<label for="newquantity">Quantity:</label>
		<input name="newquantity" type="number" min="0" value="<%=product.getQuantity()%>" required>

		<input type="submit" value="Update"><input type="reset" value="Reset">

	</form>
	</div>
	<%
		}
	%>
	
	<h2>Insert</h2>
	<div style="overflow-x:auto;">
	<form action="product" method="post">
		<input type="hidden" name="action" value="insert"> 
		
		<label for="code">Code:</label>
		<input name="code" type="number" min="0" value="0" required>
		
		<label for="name">Name:</label>
		<input name="name" type="text" maxlength="100" required placeholder="inserisci titolo">
		
		<label for="shortdescription">Short description:</label>
		<textarea name="shortdescription" maxlength="100" rows="3" required placeholder="inserisci descrizione br"></textarea>
		
		<label for="longdescription">Long description:</label>
		<textarea name="longdescription" maxlength="200" rows="3" required placeholder="inserisci descrizione lg"></textarea>
		
		<label for="imgthumb">Image Thumb:</label>
		<input name="imgthumb" type="text" maxlength="999" required placeholder="inserisic il path dell'immagine">
		
		<label for="imgfull">Image Full:</label>
		<input name="imgfull" type="text" maxlength="999" required placeholder="inserisic il path dell'immagineh"><br>
		
		<label for="price">Price:</label>
		<input name="price" type="number" step="0.1" value="0.0" required><br>

		<label for="weight">Weight:</label>
		<input name="weight" type="number" step="0.1" value="0.0" required><br>
		
		<label for="category">Category:</label>
		<input name="category" type="text" maxlength="20" required placeholder="inserisci categoria">
		
		<label for="author">Author:</label>
		<input name="author" type="text" maxlength="30" required placeholder="inserisci autore">
		
		<label for="rating">Rating:</label>
		<input name="rating" type="number" min="0" max="5" value="0" required>
		
		<label for="quantity">Quantity:</label>
		<input name="quantity" type="number" min="0" value="0" required>

		<input type="submit" value="Add"><input type="reset" value="Reset">

	</form>
	<a href="MenagerHomePage.jsp"><button class="bottone-indietro"><span style='font-size:30px;'>&#8617;</span></button></a>
	</div>
</body>
</html>