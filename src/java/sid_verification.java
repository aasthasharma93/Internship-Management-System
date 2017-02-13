

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class sid_verification extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String s=request.getParameter("sid");  
    
          
    if(database_search_student.validate(s)){ 
        HttpSession session = request.getSession();
        session.setAttribute("sid", s);
        
        String login = "searched_student.jsp";

        response.sendRedirect(login);
    }  
    else{  
        out.print("Sorry username or password error");  
        
        String login = "edit.jsp";

        response.sendRedirect(login);
    }  
          
    out.close();  
    }  
}