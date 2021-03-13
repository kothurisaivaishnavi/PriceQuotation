<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>

function validateForm() {
  var pname = document.forms["product_form"]["productName"].value;
  if (pname == "") {
    alert("Product name must be filled out");
    return false;
  }
  var type = document.forms["product_form"]["type"].value;
  if (type == "") {
    alert("Categoey must be choose");
    return false;
  }
  var desc = document.forms["product_form"]["description"].value;
  if (desc == "") {
    alert("description must be filled out");
    return false;
  }
  var avblty = document.forms["product_form"]["availability"].value;
  if (avblty == "") {
    alert("Availability must be filled out");
    return false;
  } 
  var color = document.forms["product_form"]["color"].value;
  if (color == "") {
    alert("Color must be filled out");
    return false;
  }
  var qty = document.forms["product_form"]["quantity"].value;
  if (qty == "") {
    alert("Quantity must be filled out");
    return false;
  }
  var price = document.forms["product_form"]["price"].value;
  if (price == "") {
    alert("Price must be filled out");
    return false;
  }
}
</script>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
 <body>
  <div class="jumbotron" style="background-color: bisque;">
    <center>  <h1>Cognizant E-commerce</h1>
      <small>A place for your daily needs</small> </center>
      <form:form method="get" action="/index">
      <button type="submit" class="btn btn-info">Home</button>
      </form:form>
   </div>  
   <div class="container mt-5">
	<div class="row">
	 <div class="col-md-4 mt-5">
		<img alt="logo"  src='/images/vendor.jpg'/ style="position: absolute; padding-top: 30%">
	 </div>
	 <div class="col-md-8">
 
        <center><h1>Edit product details</h1></center>
       <form:form method="POST" action="/editsave" name="product_form" onsubmit="return validateForm()" >   
        <div class="form-group">  
         <form:hidden  path="vId" /></div>
         <div class="form-group"> 
          <label>Product Name<b style="color:red">*</b>: </label>
          <form:input path="productName" class="form-control" size="150" /></div>
        <div class="form-group">
          <label>Type<b style="color:red">*</b>:</label>
          <form:select path="type" name="type" class="form-control" >
            <form:option value = "Electronics">Electronics</form:option>
            <form:option value = " Clothes">Clothes</form:option>
            <form:option value = "Accessories">Accessories</form:option>
            <form:option value = "Foot Wear">Foot Wear</form:option>
            <form:option value = "Fashion">Fashion</form:option>
            <form:option value = "Grocery">Grocery</form:option>
            </form:select></div>
        <div class="form-group">   
          <label>Description<b style="color:red">*</b>:</label>  
          <form:input path="description" class="form-control" size="150" /></div>
        <div class="form-group"> 
          <label>Availability<b style="color:red">*</b>:</label> 
          <form:input path="availability" class="form-control" size="150" /></div>
        <div class="form-group">   
          <label>Color<b style="color:red">*</b>:</label>
          <form:input path="color" class="form-control" size="150" /></div>
         <div class="form-group">
          <label>Quantity<b style="color:red">*</b>:</label>   
          <form:input path="quantity" class="form-control" size="150" /></div>
        <div class="form-group"> 
          <label>price<b style="color:red">*</b>:</label> 
          <form:input path="price" class="form-control" size="150" /></div>
         <div class="form-group">
        <div class="form-group"> 
          <b style="color:red">Note: * mandatory field </b></div>
          <input type="submit" class="btn btn-success" value="Edit Save" />   
       </div>
       </form:form>
       </div></div></div>
       </body>
       </html>