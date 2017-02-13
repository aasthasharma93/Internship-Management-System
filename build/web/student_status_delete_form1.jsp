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
        <div class="container" style="margin-top:50px"> 
             <legend>  <h2>Student Status</h2></legend>
           
         </div>
            <%  String Internship_type = (String)  session.getAttribute("internship_type");
                String sid = (String)  session.getAttribute("sid");
            
            
              Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                                                                  ResultSet.CONCUR_UPDATABLE);

            
            ResultSet rs1 = stmt.executeQuery("SELECT sid, fname FROM internship.student_personal WHERE sid ='"+sid+"'");  
                
         while(rs1.next()) { 
            %>
          <form class="form-horizontal" action="delete_status" method="POST">
        
           <div class="form-group">
  <label class="col-md-4 control-label" for="id">Student Id</label>  
  <div class="col-md-4">
      
      <input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%= rs1.getString("sid") %>" readonly>
     
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">First name</label>  
  <div class="col-md-4">
      <input id="fn" name="fname" type="text" placeholder="first name" class="form-control input-md" value="<%=rs1.getString("fname")%>" readonly>
   
  </div>
</div>
       
   <% } %>
  
  
  <% ResultSet rs = stmt.executeQuery("SELECT * FROM internship.student_status WHERE sid ='"+sid+"'");  
      if(Internship_type.equals("Company"))
               
        {
            while(rs.next())
            {%>
  
  
  
            
            <div class="form-group">
         <label class="col-md-4 control-label" >Company name</label>  
         <div class="col-md-4">
             <input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("company")%>" readonly>
         
    
  </div>
</div>
 
         <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">
        <input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("job_group")%>" readonly>
      
    </div> 
</div>
        <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Position</label>
    <div class="col-md-4">
        <input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("position")%>" readonly>
      
    </div>
</div>
            
            <div class="form-group">
               
    <label class="col-md-4 control-label" for="fn">Job type</label>
    <div class="col-md-4">
<input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("job_type")%>" readonly>
     
    </div>
</div>
            
            <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Student Status</label>
    <div class="col-md-4">
<input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("student_status")%>" readonly>
     
    </div>
</div>
           
           
        <%     }}
     if (Internship_type.equals("Startup Company"))
{

while(rs.next())
            {
%>

 
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Startup Name</label>  
  <div class="col-md-4">
      <input type="text" class="form-control" name="startup_company_name" value="<%=rs.getString("company")%>" readonly>
    
  </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">
<input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("job_group")%>" readonly>
     
      
    </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job type</label>
    <div class="col-md-4">
        <input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("job_type")%>" readonly>
     
      
    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Student Status</label>
    <div class="col-md-4">
        <input id="id" name="sid" type="text" placeholder="Student ID" class="form-control input-md" value="<%=rs.getString("student_status")%>" readonly>
     
    </div>
</div>
 
    <%
}
}
if (Internship_type.equals("Research Project"))
{

while(rs.next())
            {
    %>
    
    
 <div class="form-group">
  <label class="col-md-4 control-label" for="ln">Project name</label>  
  <div class="col-md-4">
      <input type="text" class="form-control" name="research_project_name" id="research_project_name" value="<%=rs.getString("company")%>" readonly>
    
  </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="research_project_name" id="research_project_name" value="<%=rs.getString("job_group")%>" readonly>
    
      
    </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job type</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="research_project_name" id="research_project_name" value="<%=rs.getString("job_type")%>" readonly>
  
      
    </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Student Status</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="research_project_name" id="research_project_name" value="<%=rs.getString("student_status")%>" readonly>
  
      
    </div>
</div>
 
    <%
}
}
 if (Internship_type.equals("MAC Project"))
{
while(rs.next())
            {
    %>
    
   
 
    <div class="form-group">
  <label class="col-md-4 control-label" for="ln"> MAC Project name</label>  
  <div class="col-md-4">
      <input type="text" class="form-control" name="mac_project_name" id="mac_project_name" value="<%=rs.getString("company")%>" readonly>
    
  </div>
</div>
    <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job_group</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="mac_project_name" id="mac_project_name" value="<%=rs.getString("job_group")%>" readonly>
    
      
    </div>
</div>
    <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job type</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="mac_project_name" id="mac_project_name" value="<%=rs.getString("job_type")%>" readonly>
    
      
    </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Student Status</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="mac_project_name" id="mac_project_name" value="<%=rs.getString("student_status")%>" readonly>
   
      
    </div>
</div>
               
 
    <%
}
}
 if (Internship_type.equals("Other"))
{
while(rs.next())
            {
    %>
    
    
 
    <div class="form-group">
  <label class="col-md-4 control-label" for="ln"> Internship Details</label>  
  <div class="col-md-4">
   <input type="text" class="form-control" name="other" id="other" value="<%=rs.getString("company")%>" readonly>
    
  </div>
</div>
    
    <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Job type</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="other" id="other" value="<%=rs.getString("job_type")%>" readonly>
    
      
    </div>
</div>
    <div class="form-group">
    <label class="col-md-4 control-label" for="fn">Student Status</label>
    <div class="col-md-4">
        <input type="text" class="form-control" name="other" id="other" value="<%=rs.getString("student_status")%>" readonly>
    
      
    </div>
</div>
               
     
    <%
        }
}
%>

<!-- Button --><center>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Delete</button>
  </div>
</div>
</center>

 </form>
    </body>
</html>
