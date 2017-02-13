/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_module;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class edit_project extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String p=request.getParameter("p_name");  
    
          
    if(database_search_edit.validate(p)){ 
        HttpSession session = request.getSession();
        session.setAttribute("p_name", p);
        
        String login= "searched_project.jsp";
        response.sendRedirect(login);
    }  
    else{  
         
        
        request.getSession().setAttribute("fail", "No Project Found");
        String login= "edit_project.jsp";
        response.sendRedirect(login);
    }  
          
    out.close();  
    }  
}