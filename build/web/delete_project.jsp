<%@page import="java.sql.*"%>
<%@page language="java" %>
<%@ page import="project_module.*"%>
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

td{
    color: white;
}
</style>
    </head>
    <body>
        <% if ( session.getAttribute("delete") != null) { %> 
        <div class="container">
<div class="alert alert-danger col-md-4">
    <a href="Admin_Login.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Deleted !</strong> ${delete}
  </div>
        </div>
   <%session.removeAttribute("delete");
   }
   %>
        <%@include file="admin_nav_bar.jsp" %>
         <%
             
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

             ResultSet rs = stmt.executeQuery("SELECT Project FROM internship.projects");
             
             
            
        
            
            %>
        


<div class="container" style="margin-top:50px"> 
<legend><h2>Internship Type - Project</h2> </legend>

</div>


<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">   

<table class="table">
    <thead>
        
        <tr>
                  <th class="text-primary">Project Name</th>
                  
                  <th>  </th>
        </tr>
    </thead>
    <tbody>
        <%   while (rs.next()) { %>
        <form  action="delete_project" method="POST">
        <tr>
            
            <td><input  type="text" value="<%=rs.getString("project")%>" name="p_name" readonly></td> 
   
            <td> <div class="form-group">
		<input type="submit" class="btn btn-default" value="Delete">
                 </div></td>
        </form>
        </tr>
         <% } %> 
    
    </tbody>
  
</table>
   </div>
        </div>
        </div>
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>