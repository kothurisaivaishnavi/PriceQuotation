
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
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
       <form:form method="get" action="/contactUs">
      <button type="submit" class="btn btn-dark" style="float:right">Contact Us</button>
      </form:form>
       </div>
    <div class="container mt-5">
      <div class="row">
        <div class="col-sm-2">

        </div>
        <div class="col-sm-3">
          <div class="card" style="width:200px; height: 200px;">
          <img class="card-img-top" src="/images/user.png" alt="Card image">
            <div class="card-body">
            <center><h4 class="card-title">USER</h4></center>
            <br> 
            <div class="container text-center">
              <a href="/user" class="btn btn-info">REGISTER</a>
            </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3">

        </div>
        <div class="col-sm-3">
          <div class="card" style="width:200px; height: 200px;">
          <img class="card-img-top" src="/images/vendor.jpg" alt="Card image">
              <div class="card-body">
              <center><h4 class="card-title">VENDOR</h4></center>
              <br>
              <div class="container text-center">
              <a href="/vendor" class="btn btn-info">REGISTER</a>
            </div>
              </div>
          </div>
        </div>
      </div><br><br><br><br>
      </div>
      
      <div class="container mt-5">
        <div class="row">
          <div class="col-sm-1">
  
          </div>
          <div class="col-sm-3">
            <div class="card" style="width:200px; height: 200px;">
            <img class="card-img-top" src="/images/admin.jpg" alt="Card image">
              <div class="card-body">
              <center><h4 class="card-title">ADMIN</h4></center>
              <br> 
              <div class="container text-center">
              <form action="/adminLogin" method="get">
                <input type="submit" class="btn btn-danger"  value="LOGIN">
                </form>
              </div>
              </div>
            </div>
          </div>
          <div class="col-sm-1">
  
          </div>
          <div class="col-sm-3">
            <div class="card" style="width:200px; height: 200px;">
            <img class="card-img-top" src="/images/vendor.jpg" alt="Card image">
                <div class="card-body">
                <center><h4 class="card-title">VENDOR</h4></center>
                <br>
                <div class="container text-center">
                  <a href="/vendorLogin" class="btn btn-warning">LOGIN</a>
                </div>
                </div>
            </div>
          </div>
          <div class="col-sm-1">

          </div>
          <div class="col-sm-3">
            <div class="card" style="width:200px; height: 200px;">
            <img class="card-img-top" src="/images/user.png" alt="Card image">
                <div class="card-body">
                <center><h4 class="card-title">USER</h4></center>
                <br>
                <div class="container text-center">
                  <a href="/userLogin" class="btn btn-success">LOGIN</a>
                </div>
                </div>
            </div>
          </div>
        </div><br><br><br><br>
        </div>
  
    
      
        
        
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>