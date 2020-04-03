
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Room_Upload extends HttpServlet {

   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String date = request.getParameter("date");
        int capacity = Integer.parseInt(request.getParameter("capacity"));
        String photo = request.getParameter("photo");
        float cost = Float.parseFloat(request.getParameter("cost"));
        String type = request.getParameter("type");
       /* out.println(date);
        out.println(capacity);
        out.println(photo);
        out.println(cost);
        out.println(type);
         */      
        HttpSession session = request.getSession();
        String name = (String)session.getAttribute("currentID");
        out.print(name);
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
           System.out.println("--------------12121-1--------------");
           PreparedStatement pstmt = con.prepareStatement("insert into rooms(date,capacity,photo,cost,type,add_by) values(?,?,?,?,?,?)");
           pstmt.setString(1, date);
           pstmt.setInt(2, capacity);
           pstmt.setString(3, photo);
           pstmt.setFloat(4, cost);
           pstmt.setString(5, type);
           pstmt.setString(6, name);
           
           int i = pstmt.executeUpdate();
             System.out.println(i +"Recors Inserted");
             con.close();
      
         }
         catch(Exception e){
             System.out.println("Error :"+e);
         }
      response.sendRedirect("Room_Upload.jsp");
    }
}
