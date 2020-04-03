<%-- 
    Document   : logout
    Created on : Apr 3, 2020, 2:07:42 AM
    Author     : Rajkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
           response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
           response.setHeader("cache-control","no-cache,no-store,must-revalidate");
           session.removeAttribute("currentID");
           response.sendRedirect("Login.jsp");
           session.removeAttribute("currentID");
           session.removeAttribute("name");
           session.invalidate();
       %>
    </body>
</html>
