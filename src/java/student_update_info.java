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


public class student_update_info extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
            response.setContentType("text/html");  
            PrintWriter pw = response.getWriter(); 

            
            

        try{  
            
            
            
          String term = request.getParameter("term");  
          String year = request.getParameter("year");  
          String sid = request.getParameter("sid");  
          String fname = request.getParameter("fname");  
          String mname = request.getParameter("mname");  
          String lname = request.getParameter("lname");  
          String mail = request.getParameter("mail");  
          String phone = request.getParameter("phone");  
          String status = request.getParameter("status");  
          String gender = request.getParameter("gender");
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
          String serial1 = request.getParameter("serial1");

          
          String extra_degree_2_m = request.getParameter("extra_degree_2_m");
          String extra_degree_2_gpa = request.getParameter("extra_degree_2_gpa");
          String extra_degree_2_uni = request.getParameter("extra_degree_2_uni");
          String extra_degree_2_country = request.getParameter("extra_degree_2_country");
          String extra_degree_2_year = request.getParameter("extra_degree_2_year");
          String serial2 = request.getParameter("serial2");

          
          String extra_degree_3_m = request.getParameter("extra_degree_3_m");
          String extra_degree_3_gpa = request.getParameter("extra_degree_3_gpa");
          String extra_degree_3_uni = request.getParameter("extra_degree_3_uni");
          String extra_degree_3_country = request.getParameter("extra_degree_3_country");
          String extra_degree_3_year = request.getParameter("extra_degree_3_year");
          String serial3 = request.getParameter("serial3");

          String c_name1 = request.getParameter("c_name1");
          String c_date1 = request.getParameter("c_date1");
          String c_title1 = request.getParameter("c_title1");
          String c_duties1 = request.getParameter("c_duties1");
          String serial_1 = request.getParameter("serial_1");
          
          String c_name2 = request.getParameter("c_name2");
          String c_date2 = request.getParameter("c_date2");
          String c_title2 = request.getParameter("c_title2");
          String c_duties2 = request.getParameter("c_duties2");
          String serial_2 = request.getParameter("serial_2");
          
          String c_name3 = request.getParameter("c_name3");
          String c_date3 = request.getParameter("c_date3");
          String c_title3 = request.getParameter("c_title3");
          String c_duties3 = request.getParameter("c_duties3");
          String serial_3 = request.getParameter("serial_3");
          
          String c_name4 = request.getParameter("c_name4");
          String c_date4 = request.getParameter("c_date4");
          String c_title4 = request.getParameter("c_title4");
          String c_duties4 = request.getParameter("c_duties4");
          String serial_4 = request.getParameter("serial_4");
          
          String c_name5 = request.getParameter("c_name5");
          String c_date5 = request.getParameter("c_date5");
          String c_title5 = request.getParameter("c_title5");
          String c_duties5 = request.getParameter("c_duties5");
          String serial_5 = request.getParameter("serial_5");
          
          String serial1_0 = request.getParameter("serial1_0");
          String serial1_1 = request.getParameter("serial1_1");
          
          String serial2_0 = request.getParameter("serial2_0");
          String serial2_1 = request.getParameter("serial2_1");
          
          String serial3_0 = request.getParameter("serial2_0");
          String serial3_1 = request.getParameter("serial2_1");

          Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement ("UPDATE  `internship`.`student_personal` SET  fname='"+fname+"', mname='"+mname+"', lname='"+lname+"',email='"+mail+"',telephone='"+phone+"',status='"+status+"',gender='"+gender+"',term='"+term+"',year='"+year+"',address='"+address+"',city='"+city+"',country='"+country+"' WHERE sid='"+sid+"';");
            
            PreparedStatement ps1=conn.prepareStatement("UPDATE  `internship`.`under_grad_student` SET major='"+undergrad_major+"', gpa='"+undergrad_gpa+"', uni='"+undergrad_uni+"', country='"+undergrad_country+"',year='"+undergrad_year+"' WHERE sid='"+sid+"';");
            
            PreparedStatement ps2=conn.prepareStatement("UPDATE `internship`.`grad_student` SET major='"+grad_major+"', gpa='"+grad_gpa+"', uni='"+grad_uni+"', country='"+grad_country+"',year='"+grad_year+"' WHERE sid='"+sid+"';");
            
            PreparedStatement ps3=conn.prepareStatement("UPDATE  `internship`.`extra_edu_student` SET e_major='"+extra_degree_m+"', e_gpa='"+extra_degree_gpa+"', e_uni='"+extra_degree_uni+"', e_country='"+extra_degree_country+"',e_year='"+extra_degree_year+"' WHERE sid='"+sid+"' AND serial='"+serial1+"';");
           
            PreparedStatement ps11=conn.prepareStatement("INSERT INTO `internship`.`extra_edu_student` (e_major, e_gpa, e_uni, e_country,e_year,sid) VALUES ('"+extra_degree_m+"','"+extra_degree_gpa+"','"+extra_degree_uni+"','"+extra_degree_country+"','"+extra_degree_year+"','"+sid+"');");
           
            PreparedStatement ps4=conn.prepareStatement("UPDATE  `internship`.`extra_edu_student` SET e_major='"+extra_degree_2_m+"', e_gpa='"+extra_degree_2_gpa+"', e_uni='"+extra_degree_2_uni+"', e_country='"+extra_degree_2_country+"',e_year='"+extra_degree_2_year+"' WHERE sid='"+sid+"'AND serial='"+serial2+"';");
            
           PreparedStatement ps12 = conn.prepareStatement("INSERT INTO `internship`.`extra_edu_student` (e_major, e_gpa, e_uni, e_country,e_year,sid) VALUES ('"+extra_degree_2_m+"','"+extra_degree_2_gpa+"','"+extra_degree_2_uni+"','"+extra_degree_2_country+"','"+extra_degree_2_year+"','"+sid+"');");
            
            PreparedStatement ps5 = conn.prepareStatement("UPDATE  `internship`.`extra_edu_student` SET e_major='"+extra_degree_3_m+"', e_gpa='"+extra_degree_3_gpa+"', e_uni='"+extra_degree_3_uni+"', e_country='"+extra_degree_3_country+"',e_year='"+extra_degree_3_year+"' WHERE sid='"+sid+"'AND serial='"+serial3+"';");
            
            PreparedStatement ps13 =conn.prepareStatement("INSERT INTO `internship`.`extra_edu_student` (e_major, e_gpa, e_uni, e_country,e_year,sid) VALUES ('"+extra_degree_3_m+"','"+extra_degree_3_gpa+"','"+extra_degree_3_uni+"','"+extra_degree_3_country+"','"+extra_degree_3_year+"','"+sid+"');");
            
            
            PreparedStatement ps6=conn.prepareStatement("UPDATE  `internship`.`work_exp_student` SET c_name='"+c_name1+"',c_year='"+c_date1+"',c_title='"+c_title1+"', c_duties='"+c_duties1+"' WHERE sid='"+sid+"' AND serial='"+serial_1+"';");
            
            PreparedStatement ps7=conn.prepareStatement("UPDATE  `internship`.`work_exp_student` SET c_name='"+c_name2+"',c_year='"+c_date2+"',c_title='"+c_title2+"', c_duties='"+c_duties2+"' WHERE sid='"+sid+"' AND serial='"+serial_2+"';");
            
            PreparedStatement ps8=conn.prepareStatement("UPDATE  `internship`.`work_exp_student` SET c_name='"+c_name3+"',c_year='"+c_date3+"',c_title='"+c_title3+"', c_duties='"+c_duties3+"' WHERE sid='"+sid+"' AND serial='"+serial_3+"';");
            
            PreparedStatement ps9=conn.prepareStatement("UPDATE  `internship`.`work_exp_student` SET c_name='"+c_name4+"',c_year='"+c_date4+"',c_title='"+c_title4+"', c_duties='"+c_duties4+"' WHERE sid='"+sid+"' AND serial='"+serial_4+"';");
            
            PreparedStatement ps10=conn.prepareStatement("UPDATE  `internship`.`work_exp_student` SET c_name='"+c_name5+"',c_year='"+c_date5+"',c_title='"+c_title5+"', c_duties='"+c_duties5+"' WHERE sid='"+sid+"' AND serial='"+serial_5+"';");
            
           
            PreparedStatement ps14=conn.prepareStatement("DELETE FROM `internship`.`extra_edu_student` WHERE `serial`='"+serial1+"';");
            
            PreparedStatement ps15=conn.prepareStatement("DELETE FROM `internship`.`extra_edu_student` WHERE `serial`='"+serial2+"';");
            
            PreparedStatement ps16=conn.prepareStatement("DELETE FROM `internship`.`extra_edu_student` WHERE `serial`='"+serial3+"';");
            
            
            
               int i=0; 
               if(sid != null && !sid.equals("")){
               ps.executeUpdate(); 
                i++;}
               if(undergrad_major != null && !undergrad_major.equals("")){
               ps1.executeUpdate();
                i++;}
               if(grad_major != null && !grad_major.equals("")){
               ps2.executeUpdate();
               i++;}
               
               if(extra_degree_m != null && !extra_degree_m.equals("")){
                  if (serial1 != null){ 
                   ps3.executeUpdate();
                  i++;}
                  else  {
                   ps11.executeUpdate ();
                   i++;
               }
               } 
               else {
                          ps14.executeUpdate ();
               }
              if(extra_degree_2_m != null && !extra_degree_2_m.equals("")){
                  if (serial2 != null){ 
                   ps4.executeUpdate();
                  i++;}
                  else  {
                   ps12.executeUpdate ();
                   i++;
               }
               }
               else {
                          ps15.executeUpdate ();
               }
               
               if(extra_degree_3_m != null && !extra_degree_3_m.equals("")){
                  if (serial3 != null){ 
                   ps5.executeUpdate();
                  i++;}
                  else {
                   ps13.executeUpdate ();
                   i++;
               }
               }
                else {
                          ps16.executeUpdate ();
               }
              
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
               i++;}
               
              
              
              if(i!=0){
                   
                 RequestDispatcher rd=request.getRequestDispatcher("student_info.jsp");  
                 rd.forward(request,response);
                
                  
              }  
              else{  
                
                 RequestDispatcher rd=request.getRequestDispatcher("student_info.jsp");  
                 rd.forward(request,response);
               }  
                
        
          
           conn.close();
           
         
          
          
        }  
        catch (Exception e){  
          pw.println(e);  
        }  

}

}