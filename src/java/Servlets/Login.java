/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rajkumar
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.println(username+"   "+password );
        HttpSession session = request.getSession();
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
        out.println("--------------------------1-9-----------");
        PreparedStatement pstmt = con.prepareStatement("select username,password,name from user");
        ResultSet rs = pstmt.executeQuery();
        while(rs.next()){
        String uname = rs.getString("username");
        String pass = rs.getString("password");
        String name = rs.getString("name");
        out.println(uname+" and "+pass);
        if(uname.equals(username) && pass.equals(password)){
        session.setAttribute("currentID", username);
        session.setAttribute("name", name);
        RequestDispatcher rd = request.getRequestDispatcher("roomes.jsp");
        rd.forward(request, response);
        
        }
        else{
        // request.getRequestDispatcher("error.jsp").forward(request, response);

        }
        }
        con.close();
        }
        catch(Exception e){
            System.out.println("Error :"+e);
        }
    }

 

}
