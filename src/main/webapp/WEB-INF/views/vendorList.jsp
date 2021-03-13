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
	<%
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver Class Loaded!!!");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","root","October@1998");
	System.out.println("Connection Established!!!");
	 %>
	<center><h1>Vendor List</h1>
	<table border="2" width="70%" cellpadding="2">  
	<tr><th>FirstName</th><th>LastName</th><th>Gender</th><th>Contact Number</th><th>Vendor Id</th><th>Password</th><th>Address</th><th>ID</th><th>Delete</th></tr>  
	  <%
	ResultSet rs = con.createStatement().executeQuery("select * from vendor_table ");
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
		<td><a href="deleteVendor/<%=rs.getString(8) %>">Delete</a></td>  
		</tr>
	<%
	}
	%> 
		      
   </table>  </center>
</div></div></div>
   <br/>  
</body>
</html>