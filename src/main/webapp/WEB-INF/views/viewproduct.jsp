<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
  <style>
  th{
  background-color:cyan;
  }
  </style>
    <title>Cognizant E-commerce</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
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
   <div class="container mt-5" >
<div class="row">
<div class="col-md-3 mt-5">

<img alt="logo"  src='/images/vendor.jpg' style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
 <center>
<h1>Products List</h1></center>
<table border="2" width="70%" cellpadding="2">
<tr><th>ProductId</th><th>ProductName</th><th>Category</th><th>Description</th><th>Availability</th><th>Color</th><th>Quantity</th><th>Price</th><th>Edit</th><th>Delete</th></tr>
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
   <td><a href="editProduct/${product.id}" class="btn btn-info" >Edit</a></td>
   <td><a href="deleteproduct/${product.id}" class="btn btn-danger" >Delete</a></td>
   </tr>
   </c:forEach>
   </table>
   <br/>
   <div class="col-sm-3">
  	<form:form method="post" action="/productForm">
    <button type="submit" class="btn btn-success" style="float: center;">Add Product</button>
    </form:form></div>
    <!-- productName,type,description,availability,color,quantity,price --></div></div></div></body></html>