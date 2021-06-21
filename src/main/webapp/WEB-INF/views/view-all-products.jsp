<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head> <%@page isELIgnored="false" %>
<meta charset="ISO-8859-1">
<title>product Details </title>

 <!-- for icons -->
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>	
<link href="<c:url value='/resources/css/bootstrap.min.css' />"  rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<link href="<c:url value='/resources/css/display.css' />"  rel="stylesheet"/>

</head>
<body>
	<h2>All Products</h2>
	<table class="table table-dark">
	 <tr>
		<th>ID</th>
		<th>Product Name</th>
	    <th>Quantity</th>
	    <th>Price</th>
	    <th>Create time</th>
	 <tr>
	 <c:forEach var="product" items="${products}">
		<tr>
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.quantity}</td>
			<td>${product.price}</td>
			<td>${product.createTime}</td>
	 	 </tr>
	   </c:forEach>
	</table>
	<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
	<a title = "back" href="productPage"><i id = "back-icon" class="fa fa-arrow-left fa-2x"></i></a>
</body>
</html>