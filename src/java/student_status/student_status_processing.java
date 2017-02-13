package student_status;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpSession;


public class student_status_processing extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
          String sid = (String) request.getAttribute("sid"); 
                       
          
          
            

            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            
        String query = ("SELECT type_of_internship FROM internship.student_status WHERE sid ='"+sid+"'");
                
            
           Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            String internship_type= rs.getString("type_of_internship");
            
            HttpSession session = request.getSession();
        session.setAttribute("internship_type", internship_type);
             
            
                   
        String login = "student_status_edit_form1.jsp";

        response.sendRedirect(login);
                
                  
              
                
        
          
           
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}