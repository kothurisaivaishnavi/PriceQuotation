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
  <body>
    <div class="jumbotron" style="background-color: bisque;">
         <center>  <h1>Cognizant E-commerce</h1>
      <small>A place for your daily needs</small> </center>
      <form:form method="get" action="/index">
      <button type="submit" class="btn btn-info">Home</button>
      </form:form>
      <form:form action="/vendorLogOut" method="get">
      <button type="submit" class="btn btn-info" style="float: right;">Logout</button>
      </form:form>
    </div>	
   <div class="container mt-5" >
<div class="row">
<div class="col-md-4 mt-5">

<img alt="logo"  src='/images/vendor.jpg'/ style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
 <center>
<h1>Products List</h1></center>
<table border="2" width="70%" cellpadding="2">
<tr><th>vId</th><th>productName</th><th>type</th><th>description</th><th>availability</th><th>color</th><th>quantity</th><th>price</th><th>Edit</th><th>Delete</th></tr>
   <c:forEach var="product" items="${list}">  
   <tr>
   <td>${product.vId}</td>
   <td>${product.productName}</td>
   <td>${product.type}</td>
   <td>${product.description}</td>
   <td>${product.availability}</td>
   <td>${product.color}</td>
   <td>${product.quantity}</td>
   <td>${product.price}</td>
   <td><a href="editProduct/${product.vId}">Edit</a></td>
   <td><a href="deleteproduct/${product.vId}">Delete</a></td>
   </tr>
   </c:forEach>
   </table>
   <br/>
   <div class="col-sm-3">
  	<form:form method="post" action="/productForm">
    <button type="submit" class="btn btn-success" style="float: center;">Add Product</button>
    </form:form></div>
    <!-- productName,type,description,availability,color,quantity,price --></div></div></div></body></html>