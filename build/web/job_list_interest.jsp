<%@ page import="student_login_and_view.*"%>
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
    
             
        <style>
        input[type="text"]{
    background-color: transparent;
    border: 0px;
    outline: none;
    cursor:default;
}
</style>
    </head>
    <body>
       
        <%@include file="student_nav_bar.jsp" %>
         <%
             
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

             ResultSet rs = stmt.executeQuery("SELECT company,job_group,position FROM internship.jobs");
             
             
            
        
            
            %>
        

 <div class="container" style="margin-top:50px"> 
             <legend>  <h2>Jobs Currently listed</h2></legend>
           
         </div>
   
   



 <% if ( session.getAttribute("Interest") != null) { %>    
<div class="alert alert-success col-md-4">
    <a href="job_list_interest.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> ${Interest}
  </div>
   <%session.removeAttribute("Interest");
   }
   %>
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">   

<table class="table">
    <thead>
        
        <tr>
                  <th class="text-primary">Company Name</th>
                  <th class="text-primary">Job Group</th>
                  <th class="text-primary">Position</th>
        </tr>
    </thead>
    <tbody>
        <%   while (rs.next()) { %>
        <form  action="show_interest" method="POST">
        <tr>
            <td><input  type="text" value="<%=rs.getString("company")%>" name="c_name" readonly></td>
            <td><input  type="text" value="<%=rs.getString("job_group")%>" name="job_group" readonly></td>
            <td><input  type="text" value="<%=rs.getString("position")%>" name="position" readonly></td>
            <td><a href="job_details_student.jsp?company=<%=rs.getString("company")%>&position=<%=rs.getString("position")%>" class="btn btn-default">Details</a> </td>
              
            <td> <div class="form-group">
		<input type="submit" class="btn btn-default" value="Show Interest">
                 </div></td>
        </tr>
        </form>
         <% } %> 
    
    </tbody>
  
</table>

   </div>
        </div>
        </div>
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>