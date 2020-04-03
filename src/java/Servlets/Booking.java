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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rajkumar
 */
public class Booking extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("Hello");
        int roomno = Integer.parseInt(request.getParameter("roomno"));
        String name = request.getParameter("name");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        int guest = Integer.parseInt(request.getParameter("guest"));
        String type = request.getParameter("type");
        float cost = Float.parseFloat(request.getParameter("cost"));
       
         try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
        out.println("--------------------------10-----------");
        PreparedStatement pstmt = con.prepareStatement("insert into booking(roomno,name,checkin,checkout,guest,type,cost) values(?,?,?,?,?,?,?)");
        pstmt.setInt(1, roomno);
        pstmt.setString(2, name);
        pstmt.setString(3, checkin);
        pstmt.setString(4, checkout);
        pstmt.setInt(5, guest);
        pstmt.setString(6, type);
        pstmt.setFloat(7, cost);
        
        pstmt.executeUpdate();
       con.close();
       System.out.println("22222222222222222222222222222222222");
        }catch(Exception e){
            System.out.println("Error :"+e);
        }
         
         
         
         
         
         try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
        out.println("--------------------------10-----------");
        PreparedStatement pstmt = con.prepareStatement("update rooms set capacity=capacity-1 where id ='"+roomno+"'");
       int i = pstmt.executeUpdate();
             System.out.println(1  +"Record updates Success");
       con.close();
       System.out.println("33333333333333333333333333333333");
        }catch(Exception e){
            System.out.println("Error :"+e);
        }
         
         RequestDispatcher rd = request.getRequestDispatcher("recipt.jsp");
         rd.forward(request, response);
       
         
    }

}
