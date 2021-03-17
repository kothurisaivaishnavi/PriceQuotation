<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
      <form:form action="/vendorLogOut" method="get">
      <button type="submit" class="btn btn-dark" style="float: right;">Logout</button>
      </form:form>
      <form:form method="get" action="/contactUs">
      <button type="submit" class="btn btn-dark" style="float:center">Contact Us</button>
      </form:form>
    </div>	
</div>
<div class="container mt-5">
<div class="row">
<div class="col-md-4 mt-5">

 

<img alt="logo"  src='/images/vendor.jpg'/ style="position: absolute; padding-top: 40%">
</div>
<div class="col-md-8">
	<center><h3>
        Welcome <h2 style="color: red;">${name} </h2>
    </h3><br><br>
    <form:form method="post" action="/productForm">
    <button type="submit" class="btn btn-success">Add Product</button>
    </form:form><br><br>
    <form:form method="get" action="/viewproduct">
    <button type="submit" class="btn btn-success">View Product</button>
    </form:form><br><br>
    <form:form method="get" action="/vendorRequestHandler">
    <button type="submit" class="btn btn-success">View Requests</button>
    </form:form>
    </center>
</div>
</div>
</div>
</body>
</html>