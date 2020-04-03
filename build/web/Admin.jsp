<%-- 
    Document   : Room_Upload
    Created on : Apr 2, 2020, 12:00:53 AM
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
    <body class='login'>
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
        <div class='container-fluid row '>
            <div class='col-md-1'></div>
            <div class="col-md-4 upload">
                <a href='Room_Upload.jsp'><h2>Add Rooms</h2></a>
            </div>
            
            <div class='col-md-1'></div>
            <div class="col-md-4 upload">
                <a href='view_booking.jsp'><h2>View Bookings</h2></a>
            </div>
        </div>
            
    </body>
</html>
