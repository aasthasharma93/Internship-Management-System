
package student_status;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class sid_verification_status extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String s=request.getParameter("sid");  
    
          
    if(database_search_student_status.validate(s)){ 
        HttpSession session = request.getSession();
        session.setAttribute("sid", s);
         String login = "student_status_form1.jsp";

        response.sendRedirect(login);
          
        
    }  
    else{  
        out.print("Sorry no student found");  
        String login2 = "student_status1.jsp";

        response.sendRedirect(login2);
          
    }  
          
    out.close();  
    }  
}