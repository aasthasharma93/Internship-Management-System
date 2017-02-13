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
    
             
         <%@include file="admin_nav_bar.jsp" %>
         <%@include file="footer.jsp" %>
        
    </head>
    <body>
        
       <%
           
            String Internship_type = request.getParameter("internship_type");
            
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

             ResultSet rs = stmt.executeQuery("SELECT c_name FROM internship.company");
               
        if(Internship_type.equals("Company"))
        {
            %>
           
        
         <div class="form-group">
         <label class="col-md-4 control-label" >Company name</label>  
         <div class="col-md-4">
         <select class="form-control" name="c_name" id="company_name" onchange="go1()">
                <option selected>Select Company</option>
             <%  while (rs.next()) { %>
             <option><%=rs.getString("c_name")%> </option> 
	                  <% } %>
                          
         </select>
    
  </div>
</div>
                          
    
                          
           
        <%     }
     if (Internship_type.equals("Startup Company"))
{
%>

<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Startup Name</label>  
  <div class="col-md-4">
   <input type="text" class="form-control" name="startup_company_name">
    
  </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">

      <select class="form-control" name="j_group" id="job_group" >
                
              
    
             
	     
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

    <%

}
if (Internship_type.equals("Research Project"))
{

    %>
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Project name</label>  
  <div class="col-md-4">
   <input type="text" class="form-control" name="research_project_name" id="research_project_name">
    
  </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">

      <select class="form-control" name="j_group" id="job_group" >
                
              
    
             
	     
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
    <%

}
 if (Internship_type.equals("MAC Project")){
   ResultSet rs2 = stmt.executeQuery("SELECT Project FROM internship.projects");


    %>
    <div class="form-group">
         <label class="col-md-4 control-label" >Project name</label>  
         <div class="col-md-4">
         <select class="form-control" name="mac_project_name" id="mac_project_name" >
                <option selected>Select Project</option>
             <%  while (rs2.next()) { %>
             <option><%=rs2.getString("project")%> </option> 
	                  <% } %>
                          
         </select>
    
  </div>
</div>
    <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">

      <select class="form-control" name="j_group" id="job_group">
                
              
    
             
	     
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
    <%

}
 if (Internship_type.equals("Other"))
{

    %>
    <div class="form-group">
  <label class="col-md-4 control-label" for="ln"> Internship Details</label>  
  <div class="col-md-4">
   <input type="text" class="form-control" name="other" id="other">
    
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
    <%
}
%>
 




 
        
           </body>
</html>