

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Company_verification_delete extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    try (PrintWriter out = response.getWriter()) {
        String c=request.getParameter("c_name");
        
        
        if(database_search_company.validate(c)){
            HttpSession session = request.getSession();
            session.setAttribute("c_name", c);
            
             String login= "delete_company1.jsp";
        response.sendRedirect(login);
        }
        else{
            out.print("Sorry username or password error");
            
            String login= "delete_company.jsp";
        response.sendRedirect(login);
        }
    }  
    }  
}