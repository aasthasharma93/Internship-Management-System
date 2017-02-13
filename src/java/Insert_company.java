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


public class Insert_company extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
            
          String c_name = request.getParameter("c_name");  
          String c_address = request.getParameter("c_address");  
          String c_city= request.getParameter("c_city");  
          String c_postalcode = request.getParameter("c_postalcode");  
          String c_country = request.getParameter("c_country");  
          String c_f_name = request.getParameter("c_f_name");  
          String c_l_name = request.getParameter("c_l_name");  
          String c_position = request.getParameter("c_position");  
          String c_telephone = request.getParameter("c_telephone");  
          String c_email = request.getParameter("c_email");         
          String c_website = request.getParameter("c_website");
          String c_notes = request.getParameter("c_notes");
                   
          
          
            

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("INSERT INTO `internship`.`company` (c_name, address, postalcode, city,country,firstname,lastname,position,telephone,email,website,notes) VALUES ('"+c_name+"','"+c_address+"','"+c_postalcode+"','"+c_city+"','"+c_country+"','"+c_f_name+"','"+c_l_name+"','"+c_position+"','"+c_telephone+"','"+c_email+"','"+c_website+"','"+c_notes+"');"); 
            
            
            
           
              int i=0; 
               if(c_name != null && !c_name.equals("")){
               ps.executeUpdate(); 
                i++;}
                
              
              if(i>0){
                   
                 
                 String login = "add_company.jsp";

        response.sendRedirect(login);
                  
                  
              }  
              else{  
                 String login = "index.jsp";

        response.sendRedirect(login);
                  
                 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
                 rd.forward(request,response);
               }  
                
        
          
           
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}