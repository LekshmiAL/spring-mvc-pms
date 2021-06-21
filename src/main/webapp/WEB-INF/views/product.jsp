<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<!-- for icons -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
	<style>
		body {
				background-image:
					url('resources/images/products.jpg');
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
				font-size: 20px;
				color: green;
				background-color: transparent;
				text-decoration: none;
			}
			#home-icon{
			 position: absolute;
		     top: 0px;
		     right: 0px;
		     
			}
	</style>
</head>
<body>
	<h1 style="font-family: courier; text-align: center;">PRODUCT</h1>
	<div class=mainMenu>
		<a href="add-product"> Add a new product </a>
		<hr>
		<a href="all_products"> View all products </a>
		<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
	</div>
</body>
</html>