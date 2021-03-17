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
    </div>	
</div>
<div class="container mt-5" >
<div class="row">
<div class="col-md-4 mt-5">

<img alt="logo"  src='/images/vendor.jpg' style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
<h1 style="text-align: center;">VENDOR LOGIN</h1>
	<form:form method="post" action="/vendorSuccessLogin"	modelAttribute="vendor">
		<h5 style="text-align:center; font-family: cursive; color: red;">	${error }  </h5>
		
		<div class="form-group mt-3">
			<label>Vendor Id :</label>
			<form:input path="vendorId" class="form-control" size="150" name="vendorId" />
			</div>
 	
 	<div class="form-group">
			<label>Password :</label>
			<form:password path="password" class="form-control"  name="password" />
			<form:errors path="password" cssClass="error"/>
			</div>
			
			<div class="container mt-5" style="text-align: center;">
                        <div class="row">
                            <div class="col-sm-5"></div>
                            <div class="col-sm-2">
                                <button type="submit" name="SignIn" class="btn btn-success">Login</button>
                            </div>
                            </div>
                            </div>
		
<!-- 	<table>
 			
			<tr>
				<td id="id1"><label>User Id</label></td>
				<td id="id2"><form:input path="vendorId" name="vendorId" /></td>
				
			</tr>
 
			<tr>
				<td id="id1"><label>Password</label></td>
				<td id="id5">
				<form:password path="password"  name="password" />
				<form:errors path="password" cssClass="error"/>
				</td>
				
			</tr>
  
			<tr>
				<td><input type="Submit" name="SignIn" value="Sign In" /></td>
				
			</tr>
 
 
		</table>  -->	
	</form:form><br>
	 
	</div>
	</div>
	</div>
</body>
</html>