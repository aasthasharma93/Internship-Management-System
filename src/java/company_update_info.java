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


public class company_update_info extends HttpServlet {



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
          String c_notes = request.getParameter("c_notes");;
          
            HttpSession session = request.getSession(true);
            String c_searched_company  = session.getAttribute("c_name").toString();
          

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement ("UPDATE  `internship`.`company` SET c_name='"+c_name+"',address='"+c_address+"',postalcode='"+c_postalcode+"',city='"+c_city+"',country='"+c_country+"',firstname='"+c_f_name+"',lastname='"+c_l_name+"',telephone='"+c_telephone+"',position='"+c_position+"',email='"+c_email+"',website='"+c_website+"',notes='"+c_notes+"' WHERE `c_name`='"+c_searched_company+"';");
            
            
            
               int i=0; 
               if(c_name != null && !c_name.equals("")){
               ps.executeUpdate();
               i++;}
               
              
              
              if(i!=0){
                   
                 
                String login = "search_company.jsp";

        response.sendRedirect(login);
                  
              }  
              else{  
                
                 
                 String login = "admin_home.jsp";

        response.sendRedirect(login);
               }  
                
        
          
           conn.close();
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}