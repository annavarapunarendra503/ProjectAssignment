<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}


.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

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

<h2>Login Form</h2>

<div id="loginForm">
<form action="SaveName.jsp">
  <div class="container">
      <label for="uname"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="uname" id="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
        
      <button type="submit" onclick="getAuthenticate()">Login</button>
     <!--  <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
 --> 
    </div>

    <div class="container" style="background-color:#f1f1f1">
    
    <button type="button" onclick="document.getElementById('registrationPage').style.display='block'" >SignUp</button>
      <!-- <button type="button" onclick="getRegistrationPage()">SignUp</button> -->
    </div>
</form>


</div>


 <div id="registrationPage" class="modal" data-backdrop="static" data-keyboard="false">
  
  <form class="modal-content animate" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('registrationPage').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/dp.png" alt="Avatar" class="avatar">
    </div>
	<div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
	<label for="firstname">First Name</label>
	<input type="text" id="fname" placeholder="Enter First Name" name="fname" required>
	<label for="middlename">Middle Name</label>
	<input type="text" id="mname"  placeholder="Enter Middle Name" name="mname">
	<label for="lastname">Last Name</label>
	<input type="text" id="lname"  placeholder="Enter Last Name" name="lname" required>
    <label for="email"><b>Email</b></label>
    <input type="text" id="email"  placeholder="Enter Email" name="email" required>
	
	<label for="mobilenumber">Mobile Number</label>
	<input type="text" id="mobile"  placeholder="Enter Mobile Number" name="mobilenum" required>
    <label for="psw"><b>Password</b></label>
    <input type="password" id="pwd"  placeholder="Enter Password" name="psw" required>
    <label for="psw-cfnm"><b>Confirm Password</b></label>
    <input type="password" id="cfnmpwd"  placeholder="Confirm Password" name="cfn-pwd" required>
    <hr>
    

    <button type="submit" class="registerbtn" onclick="getDetails()">Register</button>
  </div>
    
  </form>
</div> 

 <script>

// Get the modal
var modal = document.getElementById('registrationPage');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
	

function getDetails() {
	  
	var nameValue = document.getElementById("fname").value;
	
	var emailId= document.getElementById("email").value;
	alert("going details"+nameValue+emailId);
	window.location.replace("index.jsp");
	  return false;
	
}

function getAuthenticate(){
	
	var uname="narendra";
	var pwd="nari";
	var username=document.getElementById("uname").value;
	var password=document.getElementById("psw").value;

	 if(username==uname && password==pwd){
			
	 window.location.replace("editpage.jsp");
	 }
	 else{
		alert("Some Thig Went Wrong");
	} 
}

</script>

</body>
</html>
