<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management Application</title>
</head>
 <%
   String message = " This is Product page";
 %>
<body>
  <% out.println(message); %>
  
  
  <table border="1">
		<thead>
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Unit Price</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<th>${product.productId}</th>
				<th>${product.productName}</th>
				<th>${product.productType}</th>
				<th>${product.productUnitPrice}</th>
			</tr>
		</tbody>
	</table>

	<br>


	<form name="productForm" method="POST" action="product">
		<table>
			<thead>
				<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Unit Price</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type=text name=productId size=20 /></td>
					<td><input type=text name=productName size=20 /></td>
					<td><input type=text name=productType size=40 /></td>
					<td><input type=text name=productUnitPrice size=4 /></td>
					<td><input type=submit name="Add" /></td>
				</tr>
			</tbody>
		</table>
	</form>
  
  
  
</body>
</html>