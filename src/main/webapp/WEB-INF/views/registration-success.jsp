<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><%@page isELIgnored="false" %>
<meta charset="UTF-8">
<title>Welcome </title>
<link href="<c:url value='/resources/css/bootstrap.min.css' />"  rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
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

<body style="background-color : lightblue;">
<h2>${msg}</h2>

<h5>New customer : ${user.firstname} ${user.lastname} </h5>
<a title = "home" href="http://localhost:8080/PMS/"><i id = "home-icon" class="fa fa-home fa-2x"></i></a>
<a title = "back" href="customerPage"><i id = "back-icon" class="fa fa-arrow-left fa-2x"></i></a>

</body>
</html>