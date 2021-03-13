
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
      <form:form action="/logOut" method="get">
      <button type="submit" class="btn btn-info" style="float: right;">Logout</button>
      </form:form>
      
    </div>	
    <div class="container mt-5" >
<div class="row">
<div class="col-md-4 mt-5">

<img alt="logo"  src='/images/admin.jpg'/ style="position: absolute; padding-top: 30%" width="400" height="500">
</div>
<div class="col-md-8">
<center>
	<h3>
		Welcome admin <h2 style="color: red;">${userId} </h2> 
	</h3>
	<br><br>
     <form:form method="get" action="/vendorList">
      <button type="submit" class="btn btn-info">View Vendor List</button>
      </form:form>
 </center></div></div></div>
</body>
</html>