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


public class set_status extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
          String sid = request.getParameter("sid"); 
          String internship_type = request.getParameter("internship_type");   
          String c_name = request.getParameter("c_name"); 
          String startup_company_name = request.getParameter("startup_company_name"); 
          String research_project_name = request.getParameter("research_project_name"); 
          String mac_project_name = request.getParameter("mac_project_name"); 
          String other = request.getParameter("other"); 
          String j_group = request.getParameter("j_group");  
          String p= request.getParameter("p");  
          String j_type = request.getParameter("j_type");  
          String s_status = request.getParameter("s_status");  
           
                 
                  
          
          
            

            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("INSERT INTO `internship`.`student_status` (sid,company, job_group, position, job_type,student_status,type_of_internship)"
                + " VALUES ('"+sid+"','"+c_name+"','"+j_group+"','"+p+"','"+j_type+"','"+s_status+"','"+internship_type+"');");
            
            PreparedStatement ps1=conn.prepareStatement("INSERT INTO `internship`.`student_status` (sid,company, job_group, job_type,student_status,type_of_internship)"
                + " VALUES ('"+sid+"','"+startup_company_name+"','"+j_group+"','"+j_type+"','"+s_status+"','"+internship_type+"');");
            
            PreparedStatement ps2=conn.prepareStatement("INSERT INTO `internship`.`student_status` (sid,company, job_group,job_type,student_status,type_of_internship)"
                + " VALUES ('"+sid+"','"+research_project_name+"','"+j_group+"','"+j_type+"','"+s_status+"','"+internship_type+"');");
            
            PreparedStatement ps3=conn.prepareStatement("INSERT INTO `internship`.`student_status` (sid,company, job_group,job_type,student_status,type_of_internship)"
                + " VALUES ('"+sid+"','"+mac_project_name+"','"+j_group+"','"+j_type+"','"+s_status+"','"+internship_type+"');");
            
            PreparedStatement ps4=conn.prepareStatement("INSERT INTO `internship`.`student_status` (sid,company,job_type,student_status,type_of_internship)"
                + " VALUES ('"+sid+"','"+other+"','"+j_type+"','"+s_status+"','"+internship_type+"');");
            
            
            
            
            
             PreparedStatement ps5=conn.prepareStatement("UPDATE  `internship`.`join` SET job_type='"+j_type+"',student_status='"+s_status+"' WHERE sid= '"+sid+"';"); 
            
            
            
          
             // ps5.executeUpdate();
              int i=0; 
               if(internship_type.equals("Company")){
               ps.executeUpdate();
               ps5.executeUpdate();
               
               i++;
        }
               else if(internship_type.equals("Startup Company")){
               ps1.executeUpdate(); 
              ps5.executeUpdate();
                i++;}
               else if(internship_type.equals("Research Project")){
               ps2.executeUpdate(); 
               ps5.executeUpdate();
                i++;}
               else if(internship_type.equals("MAC Project")){
               ps3.executeUpdate(); 
               ps5.executeUpdate();
                i++;}
               else if(internship_type.equals("Other")){
               ps4.executeUpdate(); 
               ps5.executeUpdate();
                i++;}
               else {
               }        
              
               
                
              
              if(i>0){
                   
                 String login = "student_status1.jsp";

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