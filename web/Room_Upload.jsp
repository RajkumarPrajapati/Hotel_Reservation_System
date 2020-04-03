<%-- 
    Document   : Room_Upload
    Created on : Apr 2, 2020, 2:38:01 AM
    Author     : Rajkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style.css">
    </head>
    <body class="login">
       <%
         String uname = (String)session.getAttribute("currentID");
         if(uname == null){
           response.sendRedirect("Admin_Login.jsp");
         }
        %>
        
        
         <header class="header">
               <nav class="navbar_1">
                   <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-1"></div>
                           <div class="col-md-6"style="margin-top: 5px">
                               <h1>Hotel Reservation System</h1>
                               <h5>Welcome Admin</h5>
                           </div>
                           <div class="col-md-1S"style="margin-top: 18px">
                               <a href = "home.jsp"><h4>Home  |</h4></a>
                           </div>
                             <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "about.html"><h4>About Us  |</h4></a>
                           </div>
                             <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "contec.html"><h4>Contact Us  |</h4></a>
                           </div>
                            <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "Admin_Login.jsp"><h4>Admin Login  |</h4></a>
                           </div>
                           <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "admin_logout.jsp"><h4>Logout</h4></a>
                           </div> 
                        </div>
                   </div>
                </nav>
            </header>
             <section>
                <div class='row register-container d-flex align-items-center justify-content-center'>
                    <div class="col-md-4">
                        <form class='register-form text-center' action="Room_Upload" method="post">
                        <h1 class= 'font-weight-light text-uppercase'>Add Rooms</h1>
                        <div class='form-group'>
                            <input type='date' class='form-control' name='date' id='date' placeholder="Full Name" style="border-radius: 30px"> <br/>
                            <input type='text' class="form-control" name='capacity' id='capacity' placeholder='Capacity' style='border-radius: 30px'><br/>
                            <input type='text' class="form-control" name="photo" id='photo' placeholder="Photo Name eg.Room1,so on.." style='border-radius: 30px'><br/>
                            <input type='text' class='form-control' name='cost' id='cost' placeholder="Per Day Cost" style="border-radius: 30px"><br/>
                            <select name='type' id='type'class='form-control' style="border-radius: 30px">
                                <option selected>Select Room Type</option>
                                <option>Standard</option>
                                <option>Deluxe</option>
                                <option>Luxury</option>
                            </select><br>
                            <button type="submit" class="form-control btn btn-primary" style="border-radius: 30px">Add</button>
                                
                            
                        </div>
                    </form>
                    </div>
                </div>                         
 
            </section>
            
    </body>
</html>
