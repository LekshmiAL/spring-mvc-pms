<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> <%@page isELIgnored="false" %>
<meta charset="ISO-8859-1">
<title>add product result</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
	<style>
		#home-icon{
			 position: absolute;
		     top: 0px;
		     right: 0px;
			}
		#back-icon{
		 position: absolute;
	     top: 0px;
	     right: 50px;
		}
			
	</style>
</head>
<body>
	<h2>${msg}</h2>
	<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
	<a title = "back" href="productPage"><i id = "back-icon" class="fa fa-arrow-left fa-2x"></i></a>
</body>
</html>