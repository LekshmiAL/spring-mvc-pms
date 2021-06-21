<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head> <%@page isELIgnored="false" %>
<meta charset="ISO-8859-1">
<title>Customer details</title>
<link href="<c:url value='/resources/css/bootstrap.min.css' />"  rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- for icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>	
	<style>
		h2{
			text-align: center;
			padding: 50px;
			font-family: sans-serif;
			font-weight: bold;
		}
		body{
			background-color: lightgrey;
		}
		#home-icon{
			 position: absolute;
		     top: 0px;
		     right: 0px;
		     color : black;
		}

		#back-icon{
			 position: absolute;
		     top: 0px;
		     right: 50px;
		     color: black;
		}
	</style>
</head>
<body>
<h2>All Customers</h2>
	<table class="table table-dark">
	 <tr>
		<th>ID</th>
		<th>First Name</th>
	    <th>Last Name</th>
	    <th>email</th>
	    <th>password</th>
	 <tr>
	 <c:forEach var="customer" items="${customers}">
		<tr>
			<td>${customer.id}</td>
			<td>${customer.firstname}</td>
			<td>${customer.lastname}</td>
			<td>${customer.email}</td>
			<td>${customer.password}</td>
	 	 </tr>
	   </c:forEach>
	</table>
	<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
	<a title = "back" href="customerPage"><i id = "back-icon" class="fa fa-arrow-left fa-2x"></i></a>
</body>
</html>