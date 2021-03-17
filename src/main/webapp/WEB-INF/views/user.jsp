<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script>
 function ValidateDOB() {
     var lblError = document.getElementById("lblError");

     //Get the date from the TextBox.
     var dateString = document.getElementById("txtDate").value;
     var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;

     //Check whether valid dd/MM/yyyy Date Format.
     if (regex.test(dateString)) {
         var parts = dateString.split("/");
         var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
         var dtCurrent = new Date();
         lblError.innerHTML = "Eligibility 18 years ONLY."
         if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
             return false;
         }

         if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {

             //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
             if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                 return false;
             }
             if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                 //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                 if (dtCurrent.getDate() < dtDOB.getDate()) {
                     return false;
                 }
             }
         }
         lblError.innerHTML = "";
         return true;
     } else {
         lblError.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
         return false;
     }
 }
function userValidateForm() {
  var a = document.forms["user_form"]["firstName"].value;
  if (a == "") {
    alert("First name must be filled out");
    return false;
  }
  var b = document.forms["user_form"]["lastName"].value;
  if (b == "") {
    alert("Last name must be filled out");
    return false;
  }
  var c = document.forms["user_form"]["dateOfBirth"].value;
  if (c == "") {
    alert("Date of birth must be filled out");
    return false;
  }
  var d = document.forms["user_form"]["gender"].value;
  if (d == "") {
    alert("gender must be choose");
    return false;
  }
  var e = document.forms["user_form"]["contactNumber"].value;
  if (e == "") {
    alert("Contact number must be filled out");
    return false;
  }
  var f = document.forms["user_form"]["userId"].value;
  if (f == "") {
    alert("UserId must be filled out");
    return false;
  }
  var g = document.forms["user_form"]["password"].value;
  if (g == "") {
    alert("Password must be filled out");
    return false;
  }
  var h = document.forms["user_form"]["address"].value;
  if (h == "") {
    alert("Address must be filled out");
    return false;
  }
  
}
</script>
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
      <form:form method="get" action="/contactUs">
      <button type="submit" class="btn btn-dark" style="float:center">Contact Us</button>
      </form:form>
    </div>	
</div>
	<div class="container mt-5">
	<div class="row">
	<div class="col-md-4 mt-5">
	
	<img alt="logo"  src='/images/user.png' style="position: absolute; padding-top: 40%">
	</div>
	<div class="col-md-8">
	<h1 style="text-align: center;">USER REGISTRATION</h1>

	<form:form name="user_form" method="post" onsubmit="return userValidateForm()" action="/userRegister" modelAttribute="user"> 
 
		<h5 style="text-align:center; font-family: cursive; color: red;">	${status }  </h5>
			<div class="form-group mt-3">
			<label>First Name<b style="color:red">*</b>:</label>
			<form:input name="firstName" class="form-control" path="firstName" size="150" title="Name should be in range 4-50" />
			</div>
			
			<div class="form-group">
			<label>Last Name<b style="color:red">*</b>:</label>
			<form:input name="lastName" class="form-control" path="lastName" size="150" />
			</div>

			<div class="form-group">
			<label>Date Of Birth<b style="color:red">*</b>:</label>
			<form:input id="txtDate" onblur="ValidateDOB()" name="dateOfBirth" class="form-control" path="dateOfBirth" size="150" />
			<span class="error" id="lblError"></span><br>
			<input type="button" id="btnValidate" value="Validate" class="btn btn-success" onclick="return ValidateDOB()" />
			</div>

			<div class="form-group">
			<label>Gender<b style="color:red">*</b>:</label>
			<select name="gender" class="form-control" path="gender" >
			<option>Select</option>
			<option value="M">Male</option>
			<option value = "F">Female</option>
			<option value = "O">Others</option>
			</select>
			</div>
			
			<div class="form-group">
			<label>Contact Number<b style="color:red">*</b>:</label>
			<form:input name="contactNumber" class="form-control" path="contactNumber" size="150" title="contact number should be of 10 digits" />
			</div>
			
			<div class="form-group">
			<label>User Id<b style="color:red">*</b>:</label>
			<form:input name="userId" class="form-control" path="userId" size="150" />
			</div>
			
			<div class="form-group">
			<label>Password<b style="color:red">*</b>:</label>
			<form:input type="password" name="password" class="form-control" path="password" size="150" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
  			title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters"  />
			</div>

			<div class="form-group">
			<label>Address of the User<b style="color:red">*</b>:</label>
			<form:textarea class="form-control" name="address" path="address" size="150" placeholder="Enter your full address...." />
			</div>
			
			<div class="form-check">
                        <input id="my-input" class="form-check-input" type="checkbox" name="" value="false">
                        <label for="my-input" class="form-check-label">Accept the terms and conditions</label>
                    </div>
			<div class="form-check"><br>
 			
 					<b style="color:red">Note: * mandatory field </b>
 		    </div>
			<div class="container mt-3" style="text-align: center;">
                 <div class="row">
                     <div class="col-sm-4"></div>
                     <div class="col-sm-2">
                         <button type="submit" class="btn btn-success">Register</button>
                     </div>
                     <div class="col-sm-2">
                         <button class="btn btn-info" type="reset">Reset</button>
                     </div>
                     <div class="col-sm-2">
                    <div class="container text-center">
                  <a href="/userLogin" class="btn btn-success">LOGIN</a>
                </div>
                </div>
                 </div>
                       
             </div>
	 
			
		</form:form> <br>
		
	</div>
	</div>
	</div>
</body>
</html>