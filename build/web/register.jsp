<%-- 
    Document   : register
    Created on : Mar 31, 2020, 12:23:03 AM
    Author     : Rajkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration  Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="Style.css">

    </head>
    <body class='login'>
        <div>
               <header class="header">
               <nav class="navbar_1">
                   <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-1"></div>
                           <div class="col-md-6"style="margin-top: 5px">
                               <h1>Hotel Reservation System</h1>
                               <h5>Welcome We Are Happy To Serve You !</h5>
                           </div>
                           <div class="col-md-1S"style="margin-top: 18px">
                               <a href = "index.html"><h4>Home  |</h4></a>
                           </div>
                             <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "about.html"><h4>About Us  |</h4></a>
                           </div>
                             <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "contec.html"><h4>Contact Us  |</h4></a>
                           </div>
                            <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "Admin_Login.jsp"><h4>Admin Login</h4></a>
                           </div>
                        </div>
                   </div>
                </nav>
            </header>
<!-- ========================================================== Section Part =====================================================  -->            
            <section>
                <div class='row register-container d-flex align-items-center justify-content-center'>
                    <div class="col-md-4">
                        <form class='register-form text-center' action="Register" method="post">
                        <h1 class= 'font-weight-light text-uppercase'>Register</h1>
                        <div class='form-group'>
                            <input type='text' class='form-control' name='name' id='name' placeholder="Full Name" style="border-radius: 30px"> <br/>
                            <input type='text' class="form-control" name='mobile' id='name' placeholder='Mobile No' style='border-radius: 30px'><br/>
                            <input type='email' class='form-control' name='email' id='email' placeholder="Email Id" style='border-radius: 30px'><br/>
                            <input type="text" class="form-control" name='username' id="username" placeholder="Username or Email" style="border-radius: 30px"><br/>
                            <input type='password' class="form-control" name="password" id='password' placeholder="Create Password" style='border-radius: 30px'><br/>
                            <input type='text' class='form-control' name='city' id='city' placeholder="City Name" style="border-radius: 30px"><br/>
                            <select name='state' id='state'class='form-control' style="border-radius: 30px">
                                <option selected>Select</option>
                                <option>Maharashtra</option>
                                <option>Kolkata</option>
                                <option>Madhya Pradesh</option>
                                <option>Delhi</option>
                            </select><br>
                            <button type="submit" class="form-control btn btn-primary" style="border-radius: 30px">Sign Up</button>
                                
                            
                        </div>
                    </form>
                    </div>
                </div>                         
 
            </section>
            
           
        </div>
    </body>
</html>
