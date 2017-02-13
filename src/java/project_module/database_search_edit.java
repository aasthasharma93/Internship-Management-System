/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_module;

import java.sql.*;  

  
public class database_search_edit {  
public static boolean validate(String name){  
boolean status=false;  

try{  
Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("SELECT * FROM internship.projects WHERE project ='"+name+"'");    
      
            ResultSet rs=ps.executeQuery();  
            while(rs.next())
                status=true;
   
              
          
            }catch(ClassNotFoundException | SQLException e){System.out.println(e);}  
     return status;  
}  
}  