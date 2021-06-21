<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %> 
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Register Customer</title>
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
	<h2 style ="text-align: center;" > Register new customer</h2>
		<div id="main-container">
			<div>
			
			<form:form action="saveCustomer" method="post" modelAttribute="customer">
			<label for="id"> Enter your ID</label>
			<form:input path="id" />
			<br />
			<label for="firstname"> Enter your First Name</label>
			<form:input path="firstname" />
				<br />
				<label for="lastname"> Enter your last Name</label>
			<form:input path="lastname" />
				<br />
				<label for="email"> Enter your Email</label>
			<form:input path="email" />
				<br />
				<label for="password"> Enter your Password</label>
			<form:input path="password" />
				<br />
		 	<form:button cssClass="btn btn-primary" onclick="save()">Submit</form:button>
			</form:form>
			
			</div>
	</div>
	<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
	<a title = "back" href="customerPage"><i id = "back-icon" class="fa fa-arrow-left fa-2x"></i></a>
	
	<script>
		function save() {
		  alert("save customer");
		}
	</script>
</body>
</html>