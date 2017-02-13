<%@page import="java.sql.*"%>
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
       
        <%@include file="student_nav_bar.jsp" %>
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
        <form class="form-horizontal" action="update_job" method="post">
<fieldset>
    <input type="hidden" name="position_old" value="<%=position%>">

<div class="container" style="margin-top:50px"> 
             <legend>  <h2>Jobs Details</h2></legend>
           
         </div>
   
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
  <input id="fn" name="j_description" type="text" value="<%=rs.getString("description")%>" class="form-control input-md" readonly >
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Responsibilities</label>  
  <div class="col-md-4">
  <input id="fn" name="j_res" type="text" value="<%=rs.getString("responsibility")%>" class="form-control input-md" readonly >
    
  </div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Requirements</label>  
  <div class="col-md-4">
  <input id="fn" name="j_req" type="text" value="<%=rs.getString("requirement")%>" class="form-control input-md" readonly >
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="mn">Salary</label>  
  <div class="col-md-4">
      
  <input name="j_salary" type="text" value="<%=rs.getString("salary")%>" class="form-control input-md" readonly >
     
  </div>
</div>

<% } %>


</fieldset>
</form>
        
        
        
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>