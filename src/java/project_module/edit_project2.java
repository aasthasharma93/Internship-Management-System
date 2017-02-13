/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_module;

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
 * @author jashan
 */
public class edit_project2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
            
          String p_name = request.getParameter("p_name");  
          String p_detail = request.getParameter("p_detail"); 
          
          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

           PreparedStatement ps1=conn.prepareStatement("UPDATE `internship`.`projects` SET details='"+p_detail+"' WHERE `project`='"+p_name+"'");
                    
            
                
            
           
              int i=0; 
               if(p_name != null && !p_detail.equals("")){
               
               ps1.executeUpdate();
                i++;}
                
              
              if(i>0){
                   request.getSession().setAttribute("e", "Project Edited");
                   
                   String login = "edit_project.jsp";

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