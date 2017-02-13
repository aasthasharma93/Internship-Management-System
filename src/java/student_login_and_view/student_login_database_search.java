/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student_login_and_view;

import java.sql.*;  

  
public class student_login_database_search {  
public static boolean validate(String name,String pass){  
boolean status=false;  

try{  
Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("SELECT * FROM internship.student_login WHERE student_id ='"+name+"' AND password ='"+pass+"'");    
      
            ResultSet rs=ps.executeQuery();  
            while(rs.next())
                status=true;
   
              
          
            }catch(ClassNotFoundException | SQLException e){System.out.println(e);}  
     return status;  
}  
}  