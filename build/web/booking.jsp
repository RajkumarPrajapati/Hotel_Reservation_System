<%-- 
    Document   : booking.jsp
    Created on : Apr 2, 2020, 6:33:26 PM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style.css">
    </head>
    <body class="login">
        <%
          String user = (String)session.getAttribute("currentID");
          if(user==null){
              response.sendRedirect("Login.jsp");
          }
          String name = (String)session.getAttribute("name");
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
                                 <a href = "Admin_Login.jsp"><h4>Admin Login</h4></a>
                           </div>
                           <div class="col-md-1S"style="margin-top: 18px">
                                 <a href = "logout.jsp"><h4>Logout</h4></a>
                           </div>
                        </div>
                   </div>
                </nav>
            </header>
                           
        <%
             int id = Integer.parseInt(request.getParameter("id"));
         try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
             PreparedStatement pstmt = con.prepareStatement("select * from rooms where id='"+id+"'");
             ResultSet rs = pstmt.executeQuery();
             %>
             <div class="row" style="alignment-adjust: right">
             <%
             while(rs.next()){
             %>
             
             <div class="col-md-6">
                 <div class="card" style="width: 50rem">
                     <img class="card-img-top" src="images/<%=rs.getString("photo")%>.jpg" alt="Room1 Image" width="350" height="500">
                     <div class="card-block" style="background-color: tomato">
                         <h4 class="card-title" style="text-align:center">Room no :<%=rs.getInt("id")%></h4>
                         <h4 class="card-title" style="text-align: center">Room avl :<%=rs.getInt("capacity")%> </h3>
                         <h4 class="card-title" style="text-align: center">Cost per day :<%=rs.getInt("cost")%> </h4>
                          <h4 class="card-title" style="text-align: center">Room type : <%=rs.getString("type")%> </h4>

                     </div>
                 </div>
             </div>
             <div class="col-md-1"></div>            
             <div class="col-md-4" style="margin-top: 45px">
                 <form class="booking-form text-center" action="Booking" method="post">
                     <h1 class="font-weight-light text-uppercase">Enter Booking Details</h1><br>
                     <input type="text" class="form-control" name="roomno" value="<%=rs.getInt("id")%>" style="border-radius: 30px"><br>
                     <input type="text" class="form-control" name="name" value="<%= name%>" style="border-radius: 30px"><br>
                     <input type="date" name="checkin" id="checkin" class="form-control" style="border-radius: 30px"/>
                         <h5>From to</h5>
                         <input type="date" name="checkout" id="checkin" class="form-control" style="border-radius: 30px"/><br/>
                         <input type="text" name="guest" id="guest" class="form-control" placeholder="No of Guest" style="border-radius: 30px"><br>
                         <input type="text" name="type" id="type" class="form-control" value="<%=rs.getString("type")%>" style="border-radius: 30px"><br>
                         <input type="text" name="cost" id="cost" class="form-control" value="<%=rs.getFloat("cost")%>" style="border-radius: 30px"><br>
                         <button type="submit" class="form-control btn btn-primary" style="border-radius: 30px">Confirm Booking</button>
                     
                 </form>
             </div>
             <div class="col-md-1"></div>
                          
                   
             
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
