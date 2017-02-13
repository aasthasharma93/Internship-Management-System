

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class first_servlet_student extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("student_name");  
    String p=request.getParameter("student_password");  
          
    if(login_servlet_student.validate(n, p)){ 
        HttpSession session = request.getSession();
        session.setAttribute("user", n);
        
        String login = "Admin_Login.jsp";

        response.sendRedirect(login);
    }  
    else{  
        out.print("Sorry username or password error");  
        
        String login = "index.jsp";

        response.sendRedirect(login);
    }  
          
    out.close();  
    }  
}