<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %> 
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a product</title>
	<!-- Latest compiled and minified CSS -->
	<link href="<c:url value='/resources/css/bootstrap.min.css' />"  rel="stylesheet"/>
	<!-- jQuery library -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
	<!-- Latest compiled JavaScript -->
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<link href="<c:url value='/resources/css/register_customer.css' />"  rel="stylesheet"/>
	<!-- for icons -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>	
</head>
<body>
		<h2 style ="text-align: center;" > ADD NEW PRODUCT</h2>
		<div id="main-container">
			<div>
			
			<form:form action="addProduct" method="post" modelAttribute="product">
			<label for="productId"> Product ID</label>
			<form:input path="productId" />
			<br />
			<label for="productName"> Product Name</label>
			<form:input path="productName" />
				<br />
				<label for="quantity"> Quantity</label>
			<form:input path="quantity" />
				<br />
				<label for="price"> Price per quantity</label>
			<form:input path="price" />
				<br />
		 	<form:button cssClass="btn btn-primary" onclick="save()">Add</form:button>
			</form:form>
			
			</div>
	</div>
	<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
	<a title = "back" href="productPage"><i id = "back-icon" class="fa fa-arrow-left fa-2x"></i></a>
	
	<script>
		function save() {
		  alert("To add product press ok");
		}
	</script>
</body>
</html>