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
      
            
           
           <%@include file="admin_nav_bar.jsp" %>
          
        
         <%
            String c_name= (String)  session.getAttribute("c");
           
            String job_group = request.getParameter("job_group");
            

            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

             ResultSet rs3 = stmt.executeQuery("SELECT position FROM internship.job_group WHERE job_group ='"+job_group+"' AND company ='"+c_name+"'");
                 
               
         
            %>
            
            
            <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Position</label>
    <div class="col-md-4">

      <select class="form-control" name="p" id="job_title">
                
               <option selected>Select Position</option>
   <%  while (rs3.next()) { %> 
             <option><%=rs3.getString("position")%> </option> 
	     
                      <% } %> 
            </select>
    </div>
</div>
          
            <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job type</label>
    <div class="col-md-4">

      <select class="form-control" name="j_type" id="job_title">
                
               <option selected>Paid</option>
               <option >Un-Paid</option>
     
            </select>
    </div>
</div>
            
            <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Student Status</label>
    <div class="col-md-4">

      <select class="form-control" name="s_status" id="job_title">
                
               <option selected>Hired</option>
               <option >Available</option>
     
            </select>
    </div>
</div>
           
            
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>