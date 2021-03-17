<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

#myInput {
  box-sizing: border-box;
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 20px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
<body style="background-color: activeborder;">
 
<div class="jumbotron" style="background-color: aqua;">
<a href="/viewUser" >
<img alt="logo"  src='/images/user_profile.png' style="float: right; border-radius:50%" width="50" height="50" ></a>
    <center><h1>Cognizant E-commerce</h1>
      <small>A place for your daily needs</small> <br>
       <img alt="" src="/images/priceGIF.gif" style="position:relative;"></center>
       <div class="row">
      <form:form method="get" action="/index">
      <button type="submit" class="btn btn-dark">Home</button>
      </form:form>
      <form:form method="get" action="/contactUs">
      <button type="submit" class="btn btn-dark" style="float:center">Contact Us</button>
      </form:form>
      <form:form action="/userLogOut" method="get">
      <button type="submit" class="btn btn-dark" style="float: right;">Logout</button>
      </form:form>
      </div>
    </div>	
    <div class="container mt-5" >
<div class="row">
<div class="col-md-4 mt-5">

<img alt="logo"  src='/images/user.png'/ style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
<center>
	<h3>
		Welcome <h2 style="color: red;">${name} </h2> 
	</h3></center>
 <br>
 <div class="row">
	 <div class="col-md-8 mt-5">
		<div class="col-md-8 mt-9">
		    <button onclick="myFunction()" class="dropbtn">View all Products</button>
		    <div id="myDropdown" class="dropdown-content">
			    <center><input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
			    <a href="/userProductView">Electronics</a>
			    <a href="/userProductView">Clothes</a>
			    <a href="/userProductView">Accessories</a>
			    <a href="/userProductView">Foot Wear</a>
			    <a href="/userProductView">Fashion</a>
			    <a href="/userProductView">Groceries</a></center>
		     </div>
		 </div>
		 <div class="col-md-8 mt-5">
		  	<a href="/myOrders" class="btn btn-info">My Orders</a>
		 </div>
	 </div>
</div>
</div>
<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
</script>
</div></div></div>
</body>
</html>