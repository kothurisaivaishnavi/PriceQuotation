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
    </div>	</div>
    <div class="container mt-5" >
    <div class="row">
	<div class="col-md-4 mt-5">
	
	<img alt="logo"  src='/images/bill.gif' style="position: absolute; padding-top: 30%" width="400" height="400">
	</div>
	<div class="col-md-8">
		<center><h1>Cognizant E-Commerce</h1>
		<small>A place for your daily needs</small>
		<h4 style="color:Blue"><i>Billing Details</i></h4></center>
		<hr>
		<c:forEach var="vendor" items="${list}">
		<b><h5><i>Product Details:</i></h5></b><br>
		<b>Product Name: </b><h6>${vendor.productName}</h6><br>
		<b>Product ID: </b><h6>${vendor.productId }</h6><br>
		<b>Product Cost: </b><h6>${vendor.productPrice }</h6><br><hr><br>
		<b><i><h5>Vendor Details:</h5></i></b><br>
		<b>ID: </b><h6>${vendor.vendorId }</h6><br>
		<b>Name: </b><h6>${vendor.firstName }</h6><br>
		<b>Contact Number: </b><h6>${vendor.contactNumber }</h6><br>
		<b>Address: </b><h6>${vendor.address }</h6><br><hr><br>
		<b><h5><i>Shipment Details:</i></h5></b><br>
		<b>Name: </b><h6>${vendor.userName }</h6><br>
		<b>Address: </b><h6>${vendor.userAddress }</h6><br>
		<b>Contact Number: </b><h6>${vendor.userContact }</h6>
		</c:forEach><br>
		<a href="/feedback" class="btn btn-info" style="float: right;">Feedback</a>
	</div>
	</div>
	</div>
		
</body>
</html>