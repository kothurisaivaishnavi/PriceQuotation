<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body style="background-color: lavender">
	<h1>
		<center>Vendor Registration</center>
	</h1>


	<center>
		<form:form method="post" action="/vendorRegister" modelAttribute="vendor">
			${vStatus} 
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
					<td>Gender</td>
					<td><select name="gender" path="gender" /><option>Select</option><option value="M">Male</option><option value = "F">Female</option><option value = "O">Others</option></select></td>
				</tr>

				<tr>
					<td>Contact Number</td>
					<td><form:input name="contactNumber" path="contactNumber" /></td>
				</tr>

				<tr>
					<td>Vendor Id</td>
					<td><form:input name="vendorId" path="vendorId" /></td>
				</tr>

				<tr>
					<td>Password</td>
					<td><form:password name="password" path="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><form:textarea name="address" path="address" /></td>
				</tr>
				 </div>
                    <!--Google map-->
                    <div id="map-container-google-2" class="z-depth-1-half map-container">
                      <iframe src="https://maps.google.com/maps?q=chicago&t=&z=13&ie=UTF8&iwloc=&output=embed"
                    style="border:0"></iframe>
                    </div>
				<tr>
					<td><input type="submit" value="register" /></td>
				</tr>
			</table>
		</form:form><br>
		 <a href = "/index">Home</a>
	</center>
</body>
</html>