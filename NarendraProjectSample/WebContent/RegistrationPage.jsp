<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>

/* Center the image and position the close button */
.imgcontainer {
  
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

</style>


</head>
<body>
<div id="registrationPage" >
  
  <form  id="regForm" name="regForm">
	<div class="container">
    <h1>Registration </h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
	<label for="firstname">First Name</label>
	<input type="text" placeholder="Enter First Name" name="fname" required="required">
	<label for="middlename">Middle Name</label>
	<input type="text" placeholder="Enter Middle Name" name="mname">
	<label for="lastname">Last Name</label>
	<input type="text" placeholder="Enter First Name" name="lname" required="required">
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required="required">
	
	<label for="mobilenumber">Mobile Number</label>
	<input type="text" placeholder="Enter Mobile Number" name="mobilenum" required="required">
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required="required">
    <label for="psw-cfnm"><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" name="cfn-repeat" required="required">
    <hr>
    
    <button type="submit" class="registerbtn" onclick="getLoginPage()">Register</button>
  </div>
  
  <!-- <div class="container signin ">
  Already have an account? <button onclick ="getLoginPage()">Sign in</button>
    
  </div> -->
    
  </form>
</div>
<script>

/* function getDetails() {
	alert("going to editing details")  
   window.location.replace("homepage.jsp");
	  return false;
	
} */


function getLoginPage(){
	window.location.replace("homepage.jsp");
	return false;
}
</script>
			
</body>



</html>