import java.sql.*;  

  
public class database_search_company {  
public static boolean validate(String name){  
boolean status=false;  

try{  
Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
            
            PreparedStatement ps=conn.prepareStatement("SELECT * FROM internship.company WHERE c_name='"+name+"'");    
      
            ResultSet rs=ps.executeQuery();  
            while(rs.next())
                status=true;
   
              
          
            }catch(ClassNotFoundException | SQLException e){System.out.println(e);}  
     return status;  
}  
}  