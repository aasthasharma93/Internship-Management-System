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


public class update_job extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
          String old_p= request.getParameter("position_old");
          String c_name = request.getParameter("c_name");  
          String j_group = request.getParameter("j_group");  
          String j_position= request.getParameter("j_position");  
          String j_description = request.getParameter("j_description");  
          String j_res = request.getParameter("j_res");  
          String j_req = request.getParameter("j_req");  
          String j_salary = request.getParameter("j_salary");  
          
                   
          
          
            

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("UPDATE `internship`.`jobs` SET "
                    + " position='"+j_position+"', description='"+j_description+"',responsibility='"+j_res+"',"
                    + "requirement='"+j_req+"',salary='"+j_salary+"' WHERE company='"+c_name+"' AND position='"+old_p+"'");
                   
            
            
            PreparedStatement ps1=conn.prepareStatement("UPDATE `internship`.`job_group` SET position='"+j_position+"' WHERE job_group='"+j_group+"'");
              
            
            
           
              int i=0; 
               if(c_name != null && !c_name.equals("")){
               ps.executeUpdate(); 
               ps1.executeUpdate();
                i++;}
                
              
              if(i>0){
                   
                 String login = "edit_job.jsp";

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