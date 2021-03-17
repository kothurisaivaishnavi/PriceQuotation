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
      <form:form action="/userLogOut" method="get">
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

<img alt="logo"  src='/images/user.png' style="position: absolute; padding-top: 30%" >
</div>
<div class="col-md-8">
	<%
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver Class Loaded!!!");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","root","October@1998");
	System.out.println("Connection Established!!!");
	 %>
	<center><h1>Profile</h1></center>
<table border="2" width="70%" cellpadding="2">
<tr><th>FirstName</th><th>LastName</th><th>DateOfBirth</th><th>Gender</th><th>ContactNumber</th><th>UserId</th><th>Password</th><th>Address</th><th>Id</th><th>Edit</th></tr>
  <%
	ResultSet rs = con.createStatement().executeQuery("select * from user_table");
	while(rs.next())
	{
	%>
	    <td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td><%=rs.getString(9) %></td>
		<td><a href="editProfile/<%=rs.getString(9) %>" class="btn btn-light" >Edit</a></td>  
		</tr>
	<%
	}
	%> 
		      
   </table>  </center>
</div></div></div>
   <br/>  
</body>
</html>