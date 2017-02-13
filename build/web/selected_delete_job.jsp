<%@page import="java.sql.*"%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/npm.js" type="text/javascript"></script>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        <%@include file="admin_nav_bar.jsp" %>
        <% String company = request.getParameter("company");
        String position = request.getParameter("position");
          
            
            
           
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

             ResultSet rs = stmt.executeQuery("SELECT * FROM internship.jobs WHERE company='"+company+"' AND position='"+position+"'");
              
             while (rs.next()) {
          %>
        <form class="form-horizontal" action="delete_job" method="post">
<fieldset>
    <input type="hidden" name="position_old" value="<%=position%>">

<center><legend><h2>Job Details</h2></legend> </center>

<div class="form-group">
  <label class="col-md-4 control-label" for="id">Company Name</label>  
  <div class="col-md-4">
       
            <input name="c_name" type="text"  class="form-control input-md" value="<%=rs.getString("company")%>" readonly>
    </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Job Group</label>  
  <div class="col-md-4">
       <input name="j_group" type="text"  class="form-control input-md" value="<%=rs.getString("job_group")%>" readonly>
        
</div>
</div>

                     

                  
<div class="form-group">
  <label class="col-md-4 control-label" for="id">Position</label>  
  <div class="col-md-4">
  <input id="id" name="j_position" type="text" value="<%=rs.getString("position")%>" class="form-control input-md" readonly>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Description</label>  
  <div class="col-md-4">
  <input id="fn" name="j_description" type="text" value="<%=rs.getString("description")%>" class="form-control input-md" readonly>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Responsibilities</label>  
  <div class="col-md-4">
  <input id="fn" name="j_res" type="text" value="<%=rs.getString("responsibility")%>" class="form-control input-md" readonly>
    
  </div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Requirements</label>  
  <div class="col-md-4">
  <input id="fn" name="j_req" type="text" value="<%=rs.getString("requirement")%>" class="form-control input-md" readonly>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="mn">Salary</label>  
  <div class="col-md-4">
      
  <input name="j_salary" type="text" value="<%=rs.getString("salary")%>" class="form-control input-md" readonly>
     
  </div>
</div>

<% } %>

<center>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Delete</button>
  </div>
</div>
</center>
</fieldset>
</form>
        
        
        
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>