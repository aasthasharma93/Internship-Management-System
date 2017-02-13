<%@page import="java.sql.*"%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@include file="session_check.jsp" %>
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
    
         <%@include file="admin_nav_bar.jsp" %>
         <%@include file="footer.jsp" %>
       
    </head>
    <body>
       <%    String status = request.getParameter("status");
       
       if(status.equals("Hired"))
        {
       %>
       
            
            
            
             <div class="form-group">
    <label class="col-md-4 control-label">Type of Job</label>
    <div class="col-md-4">
        <select class="form-control" name="job_type" id="job_type">
            <option selected>Select type</option>
        <option>Paid</option>
        <option>Un-Paid</option>
         <option selected disabled hidden style='display: none' value=''></option>
       </select>
    </div>
     
</div> 
      
      <% } %> 
                 
    </body>
</html>