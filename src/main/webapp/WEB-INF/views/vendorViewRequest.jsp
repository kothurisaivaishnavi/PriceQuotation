<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
<meta charset="ISO-8859-1">
<title>price quotation request</title>
</head>
<body style="background-color: activeborder;">
<div class="jumbotron" style="background-color: aqua;">
    <center>  <h1>Cognizant E-commerce</h1>
      <small>A place for your daily needs</small> <br>
       <img alt="" src="/images/priceGIF.gif" style="position:relative;"></center>
       <div class="row">
      <form:form method="get" action="/index">
      <button type="submit" class="btn btn-dark">Home</button>
      </form:form>
      <form:form method="get" action="/contactUs">
      <button type="submit" class="btn btn-dark" style="float:center">Contact Us</button>
      </form:form>
    </div>	
</div>
	<div class="container mt-5">
	<div class="row">
	<div class="col-md-4 mt-5">
	
	<img alt="logo"  src='/images/user.png' style="position: absolute; padding-top: 40%">
	</div>
	<div class="col-md-8">
	<h1 style="text-align: center;">Price quotation Request</h1>
<form:form method="post" action="/userLogIn" modelAttribute="user">
<div class="form-group">
<label>Price Quotation request :</label>
<form:input  type="text" name="priceQuotation" path="priceQuotation" class="form-control" size="150" />
</div>
<div class="form-group">
<label>Product Id:</label>
<form:input type="text" name="productId" path="productId" class="form-control" size="150" />
</div>
<div class="form-group"><center>
<button type="submit" class="btn btn-success">Submit</button></center>
</div>
</form:form>
</div></div></div>
</body>
</html>