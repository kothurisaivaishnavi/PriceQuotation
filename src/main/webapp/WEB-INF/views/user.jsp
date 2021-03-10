<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body style="background-color: lavender">
	<h1>
		<center>User Registration</center>
	</h1>


	<center>
		<form:form method="post" action="/userRegister" modelAttribute="user">
			${status} 
			<table>
				<tr>
					<td>First Name</td>
					<td><form:input name="firstName" path="firstName" /></td>
				</tr>

				<tr>
					<td>Last Name</td>
					<td><form:input name="lastName" path="lastName" /></td>
				</tr>

				<tr>
					<td>DoB</td>
					<td><form:input path="dateOfBirth" name="dateOfBirth" /></td>
				</tr>

				<tr>
					<td>Gender</td>
					<td><select name="gender" path="gender" /><option>Select</option><option value="M">Male</option><option value = "F">Female</option><option value = "O">Others</option></select></td>
				</tr>

				<tr>
					<td>Contact Number</td>
					<td><form:input name="contactNumber" path="contactNumber" /></td>
				</tr>

				<tr>
					<td>User Id</td>
					<td><form:input name="userId" path="userId" /></td>
				</tr>

				<tr>
					<td>Password</td>
					<td><form:password name="password" path="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><form:textarea name="address" path="address" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="register" /></td>
				</tr>
			</table>
		</form:form> <br>
		<a href = "/index">Home</a>
	</center>
</body>
</html>