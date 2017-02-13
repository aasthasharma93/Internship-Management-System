

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class first_servlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("admin_name");  
    String p=request.getParameter("password_admin");  
          
    if(login_servlet.validate(n, p)){ 
        HttpSession session = request.getSession();
        session.setAttribute("user", n);
        request.getSession().setAttribute("Login", "You Have Logged In");
        String login = "admin_home.jsp";
        response.sendRedirect(login);
    }  
    else{  
        request.getSession().setAttribute("Incorrect", "Username or Password is Incorrect"); 
       String login1 = "Admin_Login.jsp";
        response.sendRedirect(login1); 
    }  
          
    out.close();  
    }  
}