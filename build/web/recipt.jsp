<%-- 
    Document   : recipt
    Created on : Apr 3, 2020, 12:42:47 AM
    Author     : Rajkumar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style.css">
    </head>
    <body class="login">
       <%
          String user = (String)session.getAttribute("currentID");
          String name = (String)session.getAttribute("name");


          if(user==null){
          response.sendRedirect("Login.jsp");
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
                                 <a href = "logout.jsp"><h4>Logout</h4></a>
                           </div>
                        </div>
                   </div>
                </nav>
            </header>
                             <%
         try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
             PreparedStatement pstmt = con.prepareStatement("select * from booking where name='"+name+"'");
             ResultSet rs = pstmt.executeQuery();
             %>
             <div class="row">
             <%
             while(rs.next()){
             %>  
             <div class="col-md-4">
                 <div class="card" style="width: 34rem">
                     <div class="card-block  btn-primary">
                         <h5 class="card-title" style="text-align:center">Room no :<%=rs.getInt("roomno")%></h5>
                         <h5 class="card-title" style="text-align: center">Name :<%=name%> </h5>
                         <h5 class="card-title" style="text-align: center">Checkin date : <%=rs.getString("checkin")%> </h5>
                          <h5 class="card-title" style="text-align: center">Checkout date : <%=rs.getString("checkout")%> </h5>
                          <h5 class="card-title" style="text-align:center">Room Type :<%=rs.getString("type")%><h5>
                          <h5 class="card-title" style="text-align:center">Per day cost :<%=rs.getFloat("cost")%><h5>

                     </div>
                 </div>
             </div>
             
             <%
             }
             con.close();
         }
         catch(Exception e){
         System.out.println("Error :"+e);
         }
        %>
        
        
        
                           
    </body>
</html>
