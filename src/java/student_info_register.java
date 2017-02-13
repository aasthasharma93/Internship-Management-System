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


public class student_info_register extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
            
          
          String year = request.getParameter("year");  
          String sid = request.getParameter("sid");  
          String fname = request.getParameter("fname");  
          String mname = request.getParameter("mname");  
          String lname = request.getParameter("lname");  
          String mail = request.getParameter("mail");  
          String phone = request.getParameter("phone");  
          String status = request.getParameter("status");  
          String gender = request.getParameter("gender");
          String t = request.getParameter("t"); 
          String address = request.getParameter("address"); 
          String city = request.getParameter("city");
          String country = request.getParameter("country"); 
          
          
          
          String undergrad_major = request.getParameter("undergrad_major");
          String undergrad_gpa = request.getParameter("undergrad_gpa");
          String undergrad_uni = request.getParameter("undergrad_uni");
          String undergrad_country = request.getParameter("undergrad_country");
          String undergrad_year = request.getParameter("undergrad_year");
          
          String grad_major = request.getParameter("grad_major");
          String grad_gpa = request.getParameter("grad_gpa");
          String grad_uni = request.getParameter("grad_uni");
          String grad_country = request.getParameter("grad_country");
          String grad_year = request.getParameter("grad_year");
          
          
          String extra_degree_m = request.getParameter("extra_degree_m");
          String extra_degree_gpa = request.getParameter("extra_degree_gpa");
          String extra_degree_uni = request.getParameter("extra_degree_uni");
          String extra_degree_country = request.getParameter("extra_degree_country");
          String extra_degree_year = request.getParameter("extra_degree_year");
          
          
          String extra_degree_2_m = request.getParameter("extra_degree_2_m");
          String extra_degree_2_gpa = request.getParameter("extra_degree_2_gpa");
          String extra_degree_2_uni = request.getParameter("extra_degree_2_uni");
          String extra_degree_2_country = request.getParameter("extra_degree_2_country");
          String extra_degree_2_year = request.getParameter("extra_degree_2_year");
          
          
          String extra_degree_3_m = request.getParameter("extra_degree_3_m");
          String extra_degree_3_gpa = request.getParameter("extra_degree_3_gpa");
          String extra_degree_3_uni = request.getParameter("extra_degree_3_uni");
          String extra_degree_3_country = request.getParameter("extra_degree_3_country");
          String extra_degree_3_year = request.getParameter("extra_degree_3_year");
          
          String c_name1 = request.getParameter("c_name1");
          String c_date1 = request.getParameter("c_date1");
          String c_title1 = request.getParameter("c_title1");
          String c_duties1 = request.getParameter("c_duties1");
          
          String c_name2 = request.getParameter("c_name2");
          String c_date2 = request.getParameter("c_date2");
          String c_title2 = request.getParameter("c_title2");
          String c_duties2 = request.getParameter("c_duties2");
          
          String c_name3 = request.getParameter("c_name3");
          String c_date3 = request.getParameter("c_date3");
          String c_title3 = request.getParameter("c_title3");
          String c_duties3 = request.getParameter("c_duties3");
          
          String c_name4 = request.getParameter("c_name4");
          String c_date4 = request.getParameter("c_date4");
          String c_title4 = request.getParameter("c_title4");
          String c_duties4 = request.getParameter("c_duties4");
          
          String c_name5 = request.getParameter("c_name5");
          String c_date5 = request.getParameter("c_date5");
          String c_title5 = request.getParameter("c_title5");
          String c_duties5 = request.getParameter("c_duties5");
          
            

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("INSERT INTO `internship`.`student_personal` (sid, fname, mname, lname,email,telephone,status,gender,term,year,address,city,country) VALUES ('"+sid+"','"+fname+"','"+mname+"','"+lname+"','"+mail+"','"+phone+"','"+status+"','"+gender+"','"+t+"','"+year+"','"+address+"','"+city+"','"+country+"');"); 
            
            PreparedStatement ps1=conn.prepareStatement("INSERT INTO `internship`.`under_grad_student` (major, gpa, uni, country,year,sid) VALUES ('"+undergrad_major+"','"+undergrad_gpa+"','"+undergrad_uni+"','"+undergrad_country+"','"+undergrad_year+"','"+sid+"');");
            
            PreparedStatement ps2=conn.prepareStatement("INSERT INTO `internship`.`grad_student` (major, gpa, uni, country,year,sid) VALUES ('"+grad_major+"','"+grad_gpa+"','"+grad_uni+"','"+grad_country+"','"+grad_year+"','"+sid+"');");
            
            PreparedStatement ps3=conn.prepareStatement("INSERT INTO `internship`.`extra_edu_student` (e_major, e_gpa, e_uni, e_country,e_year,sid) VALUES ('"+extra_degree_m+"','"+extra_degree_gpa+"','"+extra_degree_uni+"','"+extra_degree_country+"','"+extra_degree_year+"','"+sid+"');");
            
            PreparedStatement ps4=conn.prepareStatement("INSERT INTO `internship`.`extra_edu_student` (e_major, e_gpa, e_uni, e_country,e_year,sid) VALUES ('"+extra_degree_2_m+"','"+extra_degree_2_gpa+"','"+extra_degree_2_uni+"','"+extra_degree_2_country+"','"+extra_degree_2_year+"','"+sid+"');");
            
            PreparedStatement ps5=conn.prepareStatement("INSERT INTO `internship`.`extra_edu_student` (e_major, e_gpa, e_uni, e_country,e_year,sid) VALUES ('"+extra_degree_3_m+"','"+extra_degree_3_gpa+"','"+extra_degree_3_uni+"','"+extra_degree_3_country+"','"+extra_degree_3_year+"','"+sid+"');");
            
            
            PreparedStatement ps6=conn.prepareStatement("INSERT INTO `internship`.`work_exp_student` (c_name,c_year,c_title, c_duties,sid) VALUES ('"+c_name1+"','"+c_date1+"','"+c_title1+"','"+c_duties1+"','"+sid+"');");
            
            PreparedStatement ps7=conn.prepareStatement("INSERT INTO `internship`.`work_exp_student` (c_name,c_year,c_title, c_duties,sid) VALUES ('"+c_name2+"','"+c_date2+"','"+c_title2+"','"+c_duties2+"','"+sid+"');");
            
            PreparedStatement ps8=conn.prepareStatement("INSERT INTO `internship`.`work_exp_student` (c_name,c_year,c_title, c_duties,sid) VALUES ('"+c_name3+"','"+c_date3+"','"+c_title3+"','"+c_duties3+"','"+sid+"');");
            
            PreparedStatement ps9=conn.prepareStatement("INSERT INTO `internship`.`work_exp_student` (c_name,c_year,c_title, c_duties,sid) VALUES ('"+c_name4+"','"+c_date4+"','"+c_title4+"','"+c_duties4+"','"+sid+"');");
            
            PreparedStatement ps10=conn.prepareStatement("INSERT INTO `internship`.`work_exp_student` (c_name,c_year,c_title, c_duties,sid) VALUES ('"+c_name5+"','"+c_date5+"','"+c_title5+"','"+c_duties5+"','"+sid+"');");
            
            PreparedStatement ps11=conn.prepareStatement("INSERT INTO `internship`.`join` (sid, fname,gender,term,year,country) VALUES ('"+sid+"','"+fname+"','"+gender+"','"+t+"','"+year+"','"+country+"');"); 
            
            
             PreparedStatement ps12=conn.prepareStatement("INSERT INTO `internship`.`student_login` (student_id, password) VALUES ('"+sid+"','"+fname+"');"); 
                        
            
                 
              int i=0; 
               if(sid != null && !sid.equals("")){
               ps.executeUpdate();
               ps11.executeUpdate();
                ps12.executeUpdate();
                i++;}
               if(undergrad_major != null && !undergrad_major.equals("")){
               ps1.executeUpdate();
                i++;}
               if(grad_major != null && !grad_major.equals("")){
               ps2.executeUpdate();
               i++;}
               if(extra_degree_m != null && !extra_degree_m.equals("")){
               ps3.executeUpdate();
               i++;}
               if(extra_degree_2_m != null && !extra_degree_2_m.equals("")){
               ps4.executeUpdate();
               i++;}
               if(extra_degree_3_m != null && !extra_degree_3_m.equals("")){
               ps5.executeUpdate();
               i++;}
              if(c_name1 != null && !c_name1.equals("")){
               ps6.executeUpdate();
               i++;}
               if(c_name2 != null && !c_name2.equals("")){
               ps7.executeUpdate();
               i++;}
               if(c_name3 != null && !c_name3.equals("")){
               ps8.executeUpdate();
               i++;}
               if(c_name4 != null && !c_name4.equals("")){
               ps9.executeUpdate();
               i++;}
               if(c_name5 != null && !c_name5.equals("")){
               ps10.executeUpdate();
               i++;
               }
              
              if(i>0){
                   
                 
                String login = "student_info.jsp";

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