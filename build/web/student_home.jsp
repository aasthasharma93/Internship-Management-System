

            
        <%@page import="java.sql.*"%>
<%@ page import="student_login_and_view.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% if (session == null || session.getAttribute("user") == null) {
            
            String login = "index.jsp";

        response.sendRedirect(login);// No logged-in user found, so redirect to login page.
        } else { %>
<html>
    <head>
        
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>IMS</title>

    
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

   
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    
    <link rel="stylesheet" href="css/creative.css" type="text/css">

   
</head>
   <body>
              
              
       <%@include file="student_nav_bar.jsp" %>
       <header>
   <div class="header-content">
         <% if ( session.getAttribute("Login") != null) { %>  
               <div class="container">
<div class="alert alert-success col-md-4">
    <a href="admin_home.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> ${Login}
  </div>
               </div>
   <%session.removeAttribute("Login");
   }
   %>    
       
       
        <% if ( session.getAttribute("Login") != null) { %>  
               <div class="container">
<div class="alert alert-success col-md-4">
    <a href="admin_home.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> ${Login}
  </div>
               </div>
   <%session.removeAttribute("Login");
   }
           String s = (String)session.getAttribute("user");
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                                                                  ResultSet.CONCUR_UPDATABLE);

          ResultSet rs = stmt.executeQuery("SELECT fname FROM internship.student_personal WHERE sid='"+s+"'");
           while(rs.next()){
   %>   
            <div class="header-content-inner">
                <h1>Welcome <%= rs.getString("fname") %></h1>
               
               </div>
        </div>
                <% } %>
       </header>
   <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.fittext.js"></script>
    <script src="js/wow.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>
  
   
   
   
   
   
       
        <%@include file="footer.jsp" %>
    </body>
</html>
<% } %>