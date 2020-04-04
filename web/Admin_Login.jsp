<%-- 
    Document   : Admin_Login
    Created on : Apr 1, 2020, 11:55:40 PM
    Author     : Rajkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
        <title>This Home Page Of The Project</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="Style.css"/>

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
               <div class="login-container d-flex align-items-center justify-content-center">
                   <form class="login-form text-center" action="Admin_Login" method="post">
                       <h2 class="mb-8 font-weight-light text-uppercase">Admin Login</h2>
                       <div class="form-group">
                       <input type="text" class="form-control" name="username" id="username" placeholder="Username"  style='border-radius: 30px'/><br/>
                       <input type="password" class="form-control" name="password" id="password" placeholder="Password" style='border-radius: 30px'/><br/>
                       <input type="submit" class=" form-control btn btn-primary" style="border-radius: 30px" value="Login">
                       </div>
                   </form>
               </div>   
               
               
           </div>
    </body>
</html>
