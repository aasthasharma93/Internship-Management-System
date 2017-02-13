/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student_login_and_view;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class student_login_verification extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("student_name");  
    String p=request.getParameter("password_student");  
          
    if(student_login_database_search.validate(n, p)){ 
        HttpSession session = request.getSession();
        session.setAttribute("user", n);
        request.getSession().setAttribute("Login", "You have Logged In");
        String login = "student_home.jsp";
        response.sendRedirect(login);
    }  
    else{  
        request.getSession().setAttribute("Incorrect", "Username or Password incorrect");
       String login1 = "student_login.jsp";
        response.sendRedirect(login1); 
    }  
          
    out.close();  
    }  
}