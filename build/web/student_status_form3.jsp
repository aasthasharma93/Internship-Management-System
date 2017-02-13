<%@page import="java.sql.*"%>
<%@ page import="student_status.*"%>

<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
   <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    
             
    </head>
    <body>
          <% String c_name = request.getParameter("company_name");
          
          
        session.setAttribute("c", c_name);
          %>
       
       
           
            <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">

      <select class="form-control" name="j_group" id="job_group" onchange="go2()" >
                
              
    
        
	     
            <option selected>Select specification</option>
            <option>Web Development</option>
            <option>Mobile Development</option>
            <option>System Development</option>
            <option>Technical Support</option>
            <option>Networking</option>
            <option>Data Analysis</option>
            <option>Testing</option>
            <option>Security</option>
            <option>Data Management</option>
            <option>Other</option>
            </select>
    </div>
</div>
            
           
           <%@include file="admin_nav_bar.jsp" %>
          
        
        
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>