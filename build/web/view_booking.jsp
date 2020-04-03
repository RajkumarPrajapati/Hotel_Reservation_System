<%-- 
    Document   : view_booking
    Created on : Apr 3, 2020, 2:28:31 AM
    Author     : Rajkumar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <%
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
             PreparedStatement pstmt = con.prepareStatement("select * from booking");
             ResultSet rs = pstmt.executeQuery();
             %>
             <h2 class="abc">All Bookings</h2>
             <div class="row" style="margin-top: 100px">
              <div class="col-md-2"></div>
              <div class="col-md-8">
              <table class="table table-hover table-response table-bordered striped">
                    <thead>
                         <tr style="background-color: blueviolet">
                            <th scope="col">Booking id</th>
                            <th scope="col">Room no</th>
                            <th scope="col">Cus Name</th>
                            <th scope="col">Checkin</th>
                            <th scope="col">Checkout</th>
                            <th scope="col">No of Guest</th>
                            <th scope="col">Room Type</th>
                            <th scope="col">Cost Per Day</th>
                            </tr>
                            </thead>    
             <%
             while(rs.next()){
             %>  
             <tbody>
                 <tr>
                     <td><%=rs.getInt(1)%></td>
                     <td><%=rs.getInt(2)%></td>
                     <td><%=rs.getString(3)%></td>
                     <td><%=rs.getString(4)%></td>
                     <td><%=rs.getString(5)%></td>
                     <td><%=rs.getInt(6)%></td>
                     <td><%=rs.getString(7)%></td>
                     <td><%=rs.getFloat(8)%></td>


                 </tr>
             </tbody>
             
             <%
             }
             %>
            </table>
            </div>
            <div class="col-md-2">
             <%
             con.close();
         }
         catch(Exception e){
         System.out.println("Error :"+e);
         }
        %>
        
    </body>
</html>
