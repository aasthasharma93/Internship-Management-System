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


public class delete_searched_company extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
            
           
          String c_name = request.getParameter("c_name");  
          
          
            

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
                    
            PreparedStatement ps=conn.prepareStatement("DELETE FROM `internship`.`company` WHERE `c_name`='"+c_name+"';");
            
            
           
              int i=0; 
               if(i==0){
               ps.executeUpdate();
               i++;
               }
              
              if(i>0){
                   
                
                String login = "delete_company.jsp";

        response.sendRedirect(login);
                  
                  
              }  
              else{  
                
                 
                 String login = "student_info.jsp";

        response.sendRedirect(login);
               }  
                
        
          
           
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}