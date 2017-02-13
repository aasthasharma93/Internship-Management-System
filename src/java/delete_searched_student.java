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


public class delete_searched_student extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
            
           
          String sid = request.getParameter("sid");  
          
          
            

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

                
            PreparedStatement ps=conn.prepareStatement("DELETE FROM `internship`.`student_personal` WHERE `sid`='"+sid+"';" ); 
            
            PreparedStatement ps1=conn.prepareStatement("DELETE FROM `internship`.`under_grad_student` WHERE `sid`='"+sid+"';" );
            
            PreparedStatement ps2=conn.prepareStatement("DELETE FROM `internship`.`grad_student` WHERE `sid`='"+sid+"';");
            
            PreparedStatement ps3=conn.prepareStatement("DELETE FROM `internship`.`extra_edu_student` WHERE `sid`='"+sid+"';");
                     
            PreparedStatement ps4=conn.prepareStatement("DELETE FROM `internship`.`work_exp_student` WHERE `sid`='"+sid+"';");
            
            PreparedStatement ps5=conn.prepareStatement("DELETE FROM `internship`.`join` WHERE `sid`='"+sid+"';");
            
            
           
              int i=0; 
               if(i==0){
               ps.executeUpdate();
               ps1.executeUpdate();
               ps2.executeUpdate();
               ps3.executeUpdate();
               ps4.executeUpdate();
                ps5.executeUpdate();
               i++;
               }
              
              if(i>0){
                   
                
                String login = "delete.jsp";

        response.sendRedirect(login);
                  
              }  
              else{  
                
                 
                 String login = "admin_home.jsp";

        response.sendRedirect(login);
               }  
                
        
          
           
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}