<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
      <title>
          Java Script Project!!!
      </title>
      <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
     <table>
         <tr>
             <td>
                  <form  onsubmit="event.preventDefault();onFormSubmit();"autocomplete="on">
                     <div>
                     <label>First Name</label>
                     <input type="text" name="firstName" id="firstName">
                    </div>
                    <div>
                      <label>Middle Name</label>
                      <input type="text" name="middleName"  id="middleName">
                    </div>
                    <div>
                        <label>Last Name</label>
                        <input type="text" name="lastName"  id="lastName">
                    </div>
                    <div>
                        <label>Email</label>
                        <input type="text" name="email"  id="email">
                    </div>
                    <div>
                        <label>Mobile Number</label>
                        <input type="text" name="mobileNumber"  id="mobileNumber">
                    </div>
                    <div>
                        <label>Password</label>
                        <input type="text" name="password"  id="password">
                    </div>
                    <div>
                        <label>Confirm Password</label>
                        <input type="text" name="confirmPassword" id="confirmPassword">
                    </div>
                    <div  class="form-action-buttons">
                        <input type="submit" value="Reset">
                    </div>
                   

            </form>
          
 
 			</td>
             <td>
                 <table class="list" id="employeeList">
                     <thead>
                         <tr>
                             <th>First Name</th>
                             <th>Middle Name</th>
                             <th>Last Name</th>
                             <th>Email</th>
                             <th>Mobile Number</th>
                             <th>Password</th>
                             <th>Confirm Password</th>
                             <th></th>
                             <th></th>
                         </tr>
                     </thead>
                     <tbody>
						<%= session.getAttribute( "theName" ) %>
						<%= session.getAttribute( "thePassWord" ) %>
                     </tbody>
                 </table>
             </td>
         </tr>
     </table>
    <script src="js/script.js">
    var fname='<%= session.getAttribute( "FirstName" ) %>';
    var mname='<%= session.getAttribute( "MiddleName" ) %>';
    var lname='<%= session.getAttribute( "LastName" ) %>';
    var email='<%= session.getAttribute( "email" ) %>';
    var mobilenumber='<%= session.getAttribute( "mobileNumber" ) %>';
    var password='<%= session.getAttribute( "password" ) %>';
    var confirmpassword ='<%= session.getAttribute( "confirmPassword" ) %>';
    window.onload = setFormData();
    
    </script>
    </body>
</html>