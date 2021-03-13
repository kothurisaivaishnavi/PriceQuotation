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
		<img alt="logo"  src='/images/vendor.jpg'/ style="position: absolute; padding-top: 40%">
	 </div>
	 <div class="col-md-8">
     <h1 style="text-align: center;">Add New Product</h1>
    
     <form name="product_form" onsubmit="return validateForm()" method="post" action="/save" modelAttribute="product" >
        <h5 style="text-align:center; font-family: cursive; color: red;">    ${vStatus }  </h5>  
        <div class="form-group">       
          <label>Product Name<b style="color:red">*</b>: </label>  
          <input name="productName" path="productName" class="form-control" size="150" />
        </div>
        <div class="form-group"> 
          <label>Type<b style="color:red">*</b>:</label>   
          <select name="type" path="type" class="form-control" >
            <option value=""></option>
            <option value = "Electronics">Electronics</option>
            <option value = " Clothes">Clothes</option>
            <option value = "Accessories">Accessories</option>
            <option value = "Foot Wear">Foot Wear</option>
            <option value = "Fashion">Fashion</option>
            <option value = "Grocery">Grocery</option>
            </select></div>
        <div class="form-group"> 
          <label>Description<b style="color:red">*</b>:</label>   
          <input name="description" path="description" class="form-control" size="150" /></div>
        <div class="form-group"> 
          <label>Availability<b style="color:red">*</b>:</label>   
          <input name="availability" path="availability" class="form-control" size="150" /></div>
         <div class="form-group">    
          <label>Color<b style="color:red">*</b>:</label>   
          <input name="color" path="color" class="form-control" size="150" /></div>
        <div class="form-group"> 
          <label>Quantity<b style="color:red">*</b>:</label>   
          <input name="quantity" path="quantity" class="form-control" size="150" /></div>
         <div class="form-group"> 
          <label>price<b style="color:red">*</b>:</label>   
          <input name= "price" path="price" class="form-control" size="150" /></div>
         <div class="form-check"> 
          <input id="my-input" required="required" class="form-check-input" type="checkbox" name="" value="false">
          <label for="my-input" class="form-check-label">Accept the terms and conditions</label></div><br>
         <div class="form-group"> 
          <b style="color:red">Note: * mandatory field </b></div>
          
            <button type="submit"  class="btn btn-success" >Save</button>
            </form></div></div></div><br>
           
              <div class="row">
                 <div class="col-sm-2"></div>
            <div class="col-sm-3">
         	<form:form method="post" action="/productForm">
     	    <button type="submit" class="btn btn-success" style="float: center;">Add Product</button>
            </form:form></div>
		    <div class="col-sm-3">
		    <form method="get" action="/viewproduct">
		    <button type="submit" class="btn btn-success" style="float: right;">View Products</button>
		   </form></div></div>      
       
       </body>
     <!-- productName,type,description,availability,color,quantity,price -->
       </html>  