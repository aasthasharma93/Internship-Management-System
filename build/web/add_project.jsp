<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="project_module.*"%>
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
        <form class="form-horizontal" action="add_project" method="post">
<fieldset>

    
<!-- Form Name -->
<div class="container" style="margin-top:50px"> 
<legend><h2>Internship Type - Project</h2> </legend>

</div>


<% if ( session.getAttribute("s") != null) { %> 
        <div class="container">
<div class="alert alert-success col-md-4">
    <a href="Admin_Login.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success !!</strong> ${s}
  </div>
        </div>
   <%session.removeAttribute("s");
   }
   %>
                     
<center> <h3 class="text-primary"> Project Details</h3></center>
                  
<div class="form-group">
  <label class="col-md-4 control-label" for="id">Project name</label>  
  <div class="col-md-4">
  <input id="id" name="p_name" type="text" placeholder="Project name" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="mn">Details</label>  
  <div class="col-md-4">
      
      <textarea rows="4" input name="p_detail" placeholder="Project details" class="form-control"></textarea>
     
  </div>
</div>

<center>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">SUBMIT</button>
  </div>
</div>
</center>
</fieldset>
</form>
        
        
        
        
        
        
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>