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

<img alt="logo"  src='/images/user.png' style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
<center>
	<h3>
		Welcome <h2 style="color: red;">${name} </h2> 
	</h3>
 	<table border="2" width="70%" cellpadding="2">
<tr><th>Id</th><th>productName</th><th>type</th><th>description</th>
<th>availability</th><th>color</th><th>quantity</th><th>price</th><th>Status</th><th>Request</th><th>PlaceOrder</th></tr>
   <c:forEach var="product" items="${list}">  
   <tr>
   <td>${product.id}</td>
   <td>${product.productName}</td>
   <td>${product.type}</td>
   <td>${product.description}</td>
   <td>${product.availability}</td>
   <td>${product.color}</td>
   <td>${product.quantity}</td>
   <td>${product.price}</td>
   <td>${product.status}</td>
   <td><a href="/vendorViewRequest" class="btn btn-info">Send Request</a></td>
   <td><a href="/order" class="btn btn-info">Place your order></a>
   </tr>
   </c:forEach>
   </table>
	<marquee style="color: red">* User can't order the product until status is ""YES"</marquee><br>
	 <form:form method="get" action="/order">
      <button type="submit" class="btn btn-info">Place your order</button>
      </form:form>
</center></div></div></div>
</body>
</html>