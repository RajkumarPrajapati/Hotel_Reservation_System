/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rajkumar
 */
public class Admin_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       out.print(username+"  "+password);
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
           PreparedStatement pstmt = con.prepareStatement("select username,password from admin");
           ResultSet rs = pstmt.executeQuery();
           HttpSession session = request.getSession();
           
           while(rs.next()){
             String uname  = rs.getString("username");
             String pass = rs.getString("password");
             out.println(uname);
             out.println(pass);
             if(username.equals(uname) && password.equals(pass)){
           session.setAttribute("currentID", uname);
           RequestDispatcher rdisp = request.getRequestDispatcher("Admin.jsp");
           rdisp.forward(request, response);
     
           }
            
           }
           
           System.out.println("---------------1--------------");
       }
       catch(Exception e){
           System.out.println("Error :"+e);
       }
    }
   

}
