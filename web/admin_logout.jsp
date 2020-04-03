<%-- 
    Document   : admin_logout
    Created on : Apr 3, 2020, 2:24:14 AM
    Author     : Rajkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
           response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
           response.setHeader("cache-control","no-cache,no-store,must-revalidate");
           session.removeAttribute("currentID");
           response.sendRedirect("Admin_Login.jsp");
           session.removeAttribute("currentID");
           session.removeAttribute("name");
           session.invalidate();
       %>
    </body>
</html>
