<%-- 
    Document   : roomes
    Created on : Apr 2, 2020, 10:06:03 AM
    Author     : Rajkumar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style.css">

    </head>
    <body>
        <%
         String uname = (String)session.getAttribute("currentID");
         String name = (String)session.getAttribute("name");
         if(uname == null){
           response.sendRedirect("roomes.jsp");
         }
               
        %> 
        <header class="header">
               <nav class="navbar_1">
                   <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-1"></div>
                           <div class="col-md-6"style="margin-top: 5px">
                               <h1>Hotel Reservation System</h1>
                               <h5>Welcome :<%=" "+name%></h5>
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
                                 <a href ="logout.jsp"><h4>Logout</h4></a>
                           </div>
                        </div>
                   </div>
                </nav>
            </header>
        <%
         try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
             PreparedStatement pstmt = con.prepareStatement("select * from rooms");
             ResultSet rs = pstmt.executeQuery();
             %>
             <div class="row">
             <%
             while(rs.next()){
             %>  
             <div class="col-md-4">
                 <div class="card" style="width: 34rem">
                     <img class="card-img-top" src="images/<%=rs.getString("photo")%>.jpg" alt="Room1 Image" width="350" height="400">
                     <div class="card-block  btn-primary">
                         <h4 class="card-title" style="text-align:center">Room no :<%=rs.getInt("id")%></h4>
                         <h4 class="card-title" style="text-align: center">Room avl :<%=rs.getInt("capacity")%> </h3>
                         <h4 class="card-title" style="text-align: center">Cost per day :<%=rs.getInt("cost")%> </h4>
                          <h4 class="card-title" style="text-align: center">Room type : <%=rs.getString("type")%> </h4>
                          <a href="booking.jsp?id=<%=rs.getInt("id")%>" class="btn btn-success" style="text-align: center"><h4>Book Now</h4></a>

                     </div>
                 </div>
             </div>
             
             <%
             }
         }
         catch(Exception e){
         System.out.println("Error :"+e);
         }
        %>
          
         </div> 
    </body>
</html>
