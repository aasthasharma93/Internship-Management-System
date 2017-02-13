
package student_status;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;


public class sid_verification_status_for_edit extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
              String internship_type = null;

    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
     try{       
    String s=request.getParameter("sid");  
                

          
    if(database_search_student_status.validate(s)){ 
        HttpSession session = request.getSession();
        session.setAttribute("sid", s);
        
 
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                                                                  ResultSet.CONCUR_UPDATABLE);

            ResultSet rs = stmt.executeQuery("SELECT type_of_internship FROM internship.student_status WHERE sid ='"+s+"'");
            while(rs.next())
            {          //  String internship_type;

            internship_type= rs.getString("type_of_internship");}
            
            session.setAttribute("internship_type",internship_type);
                   
        String login = "student_status_edit_form1.jsp";

        response.sendRedirect(login);
          
        
    }  
    else{  
        out.print("Sorry no student found");  
        String login2 = "edit_student_status.jsp";

        response.sendRedirect(login2);
          
    }  
    }  
        catch (Exception e){  
          out.println(e);  
        }  
          
    out.close();  
    }  
}