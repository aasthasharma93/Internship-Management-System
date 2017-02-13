/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student_login_and_view;

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

/**
 *
 * @author jashan
 */
public class show_interest extends HttpServlet {

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 
        try  {
            
            
            HttpSession session = request.getSession();  
            String sid= (String) session.getAttribute("user");
            String c_name = request.getParameter("c_name");  
            String j_position= request.getParameter("position");  
           
          
                   
          
          
            

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("INSERT INTO `internship`.`job_interest` (company, position,student_id)"
                    + " VALUES ('"+c_name+"','"+j_position+"','"+sid+"');"); 
            
            
            
            
            
           
              int i=0; 
               if(c_name != null && !c_name.equals("")){
               ps.executeUpdate(); 
                              i++;}
                
              
              if(i>0){
                   request.getSession().setAttribute("Interest", "Interest Recorded Successfully");
                 String login = "job_list_interest.jsp?";

                  response.sendRedirect(login);
                
                  
              }  
              else{  
                
                 String login = "student_home.jsp";

        response.sendRedirect(login);
               }  
                
        
          
           
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}