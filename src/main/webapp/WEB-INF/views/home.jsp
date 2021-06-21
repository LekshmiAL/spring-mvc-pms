<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management System</title>
<style>
body {
	background-image:
		url('resources/images/supermarketcart_main.jpg');
}

.mainMenu {
	text-align: center; 
	padding : 30px; 
	background : rgba( 0, 0, 0, 0.3)
	height : 180px; 
	width : 30%; 
	margin-left : auto;
	margin-right: auto;
}

a:link {
	font-family: Lucida Sans Unicode;
	font-weight: bold;
	font-size: 30px;
	color: green;
	background-color: transparent;
	text-decoration: none;
}
</style>
</head>
<body>
	<h1 style="font-family: courier; text-align: center;">PRODUCT MANGEMENT SYSTEM</h1>
	<div class=mainMenu>
		<a href="customerPage"> Customer </a>
		<hr>
		<a href="productPage"> Product </a>
		<!-- <hr>
		<a href="orderPage"> Order </a> -->
	</div>
</body>
</html>