<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<style>
div.stars {
  width: 270px;
  display: inline-block;
}
input.star { display: none; }
label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}
input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
input.star-1:checked ~ label.star:before { color: #F62; }
label.star:hover { transform: rotate(-15deg) scale(1.3); }
label.star:before {
  content: '\f006';
  font-family: FontAwesome;}
  
</style>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
<body style="background-color: activeborder;">
<div class="jumbotron" style="background-color: aqua;">
    <center>  <h1>Cognizant E-commerce</h1>
      <small>A place for your daily needs</small> <br>
      <div class="row">
       <img alt="" src="/images/priceGIF.gif" style="position:relative;"></center>
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

<img alt="logo"  src='/images/user.png' style="position: absolute; padding-top: 30%">
</div>
<div class="col-md-8">
<center><h1>FeedBack Form</h1></center>
<hr>
 <b><h3>How was your Experience?<b style="color:red">*</b></h3></b><br>
  <div class="stars">
   
    <input class="star star-5" id="star-5" type="radio" name="star1"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" name="star1"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" name="star1"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star1"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" name="star1"/>
    <label class="star star-1" for="star-1"></label>
  
</div><br>
<div class="form-group">
<label><h3>Your valuable suggestions for improvement of Application<b style="color:red">*</b>:</h3></label>
<input type="text" size="20" class="form-control">
</div>
<div class="form-group">
<a href="/finalPage" class="btn btn-success" style="float:right">Send</a>
</div>
</div>
</div>
</div>
</body>
</html>