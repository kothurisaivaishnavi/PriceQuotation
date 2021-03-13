<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
<body>

<div class="jumbotron" style="background-color: bisque;">
    <center>  <h1>Cognizant E-commerce</h1>
      <small>A place for your daily needs</small> </center>
      
      <form:form method="get" action="/index">
      <button type="submit" class="btn btn-info">Home</button>
      </form:form>
      <form:form action="/userLogOut" method="get">
      <button type="submit" class="btn btn-info" style="float: right;">Logout</button>
      </form:form>
      
    </div>	
    <div class="container mt-5" >
<div class="row">
<div class="col-md-4 mt-5">

<img alt="logo"  src='/images/user.png'/ style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
<center>
	<h3>
		Welcome <h2 style="color: red;">${name} </h2> 
	</h3>
 <form:form action="/userLogOut" method="get">
      <button type="submit" class="btn btn-info" >Logout</button>
      </form:form>
	<!-- <a href="/searchVendor">search Vendor</a>
 <br><br>
 <a href="/viewOrders">View Orders</a>
 <br><br>
 <a href="/viewVendors">View Vendor Details</a>
 <br> <br>
 <a href="/customerOrder"> Place Order  </a>
 <br> <br>
 <a href = "/userLogOut">Logout</a><br><br>
 <a href = "/index">Home</a> -->
</center></div></div></div>
</body>
</html>