<% String user = (String)  session.getAttribute("user");
    if (session == null || session.getAttribute("user") == null) {
            
            String login = "index.jsp";

        response.sendRedirect(login);// No logged-in user found, so redirect to login page.
        } else { }%>
        
      