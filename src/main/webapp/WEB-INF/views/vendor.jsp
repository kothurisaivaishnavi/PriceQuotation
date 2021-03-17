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
function validateForm() {
  var first_name = document.forms["vendor_form"]["firstName"].value;
  if (first_name == "") {
    alert("First name must be filled out");
    return false;
  }
  var last_name = document.forms["vendor_form"]["lastName"].value;
  if (last_name == "") {
    alert("Last name must be filled out");
    return false;
  }
  var password = document.forms["vendor_form"]["password"].value;
  if (password == "") {
    alert("Address must be filled out");
    return false;
  }
  var gender = document.forms["vendor_form"]["gender"].value;
  if (gender == "") {
    alert("Gender must be choosen");
    return false;
  }
  var phone = document.forms["vendor_form"]["contactNumber"].value;
  if (phone == "") {
    alert("Contact number must be filled out");
    return false;
  }
  var vendorId = document.forms["vendor_form"]["vendorId"].value;
  if (vendorId == "") {
    alert("VendorId must be filled out");
    return false;
  }
  var address = document.forms["vendor_form"]["address"].value;
  if (address == "") {
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
<img alt="logo"  src='/images/vendor.jpg'/ style="position: absolute; padding-top: 40%">
</div>
<div class="col-md-8">
<h1 style="text-align: center;">VENDOR REGISTRATION</h1>
        <form:form name="vendor_form" onsubmit="return validateForm()" method="post" action="/vendorRegister" modelAttribute="vendor">
            <h5 style="text-align:center; font-family: cursive; color: red;">    ${vStatus }  </h5>
            
            <div class="form-group mt-3">
            <label>First Name<b style="color:red">*</b>:</label>
            <form:input name="firstName" class="form-control" path="firstName" size="150" title="Name should be in range 4-50" />
            </div>
            
            <div class="form-group">
            <label>Last Name<b style="color:red">*</b>:</label>
            <form:input name="lastName" class="form-control" path="lastName" size="150" />
            </div>
            
            <div class="form-group">
            <label>Gender<b style="color:red">*</b>:</label>
            <select name="gender" class="form-control" path="gender" >
            <option></option>
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
            <label>Vendor Id<b style="color:red">*</b>:</label>
            <form:input name="vendorId" class="form-control" path="vendorId" size="150" />
            </div>
            
            <div class="form-group">
            <label>Password<b style="color:red">*</b>:</label>
            <form:input name="password" type="password" class="form-control" path="password" size="150" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
  			title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters" />
            </div>

            <div class="form-group">
            <label>Address of the Vendor<b style="color:red">*</b>:</label>
            <form:textarea class="form-control" name="address" path="address" size="150" placeholder="Enter your full address...." />
            </div>
            <br>
             <div id="map-container-google-2" class="z-depth-1-half map-container">
                      <iframe src="https://maps.google.com/maps?q=chicago&t=&z=13&ie=UTF8&iwloc=&output=embed"
                    style="border:0"></iframe>
                    </div>
                    <br>
            
            <div class="form-check">
                <input id="my-input" required="required" class="form-check-input" type="checkbox" name="" value="false">
                <label for="my-input" class="form-check-label">Accept the terms and conditions</label>
            </div>

 			<div class="form-check"><br>
 			
 					<b style="color:red">Note: * mandatory field </b>
 		    </div>

            <div class="container mt-3" style="text-align: center;">
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-2">
                                <button type="submit"  class="btn btn-success">Register</button>
                            </div>
                            <div class="col-sm-2">
                                <button class="btn btn-info" type="reset">Reset</button>
                            </div>
                           
                        </div>
                       
                    </div>
 
        </form:form><br>
        </div>
        </div>
        </div>
        
         
    
</body>
</html>