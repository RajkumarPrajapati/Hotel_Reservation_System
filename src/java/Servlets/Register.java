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

/**
 *
 * @author Rajkumar
 */
public class Register extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
         int mobile = Integer.parseInt(request.getParameter("mobile"));
       String email = request.getParameter("email");
   String  username = request.getParameter("username");
    String password = request.getParameter("password");
        String city = request.getParameter("city");
       String state = request.getParameter("state");
         out.print("sjsksks"+name+mobile+email+username+password+city+state);
         
         try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "redhat");
           System.out.println("---------------1--------------");
           PreparedStatement pstmt = con.prepareStatement("insert into user(name,mobile,email,username,password,city,state) values(?,?,?,?,?,?,?)");
           pstmt.setString(1, name);
           pstmt.setInt(2, mobile);
           pstmt.setString(3, email);
           pstmt.setString(4, username);
           pstmt.setString(5, password);
           pstmt.setString(6, city);
           pstmt.setString(7, state);
           
           int i = pstmt.executeUpdate();
             System.out.println(i +"Recors Inserted");
             con.close();
      
         }
         catch(Exception e){
             System.out.println(e);
         }
    }

    
}
