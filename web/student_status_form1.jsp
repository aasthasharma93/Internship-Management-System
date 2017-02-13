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
       <%
            String sid = (String)  session.getAttribute("sid");
           
            %>
            
            <script type="text/javascript">
        function go()
        {
            var internship_type=document.getElementById("internship_type").value;
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("sp3").innerHTML = xmlhttp.responseText;
                }
            };
            xmlhttp.open("GET", "student_status_form2.jsp?internship_type=" +internship_type,true);
            xmlhttp.send();
        }
        
        function go1()
        {
            var company_name=document.getElementById("company_name").value;
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("sp1").innerHTML = xmlhttp.responseText;
                }
            };
            xmlhttp.open("GET", "student_status_form3.jsp?company_name=" +company_name, true);
            xmlhttp.send();
        }
         function go2()
        {
            var job_group=document.getElementById("job_group").value;
            
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                        document.getElementById("sp2").innerHTML = xmlhttp.responseText;
                    }
                }
            xmlhttp.open("GET", "student_status_form4.jsp?job_group=" +job_group,true);
                xmlhttp.send();

        }
        </script>
        <%@include file="admin_nav_bar.jsp" %>
        <form class="form-horizontal" action="set_status" method="POST">


<!-- Form Name -->
<div class="container" style="margin-top:50px"> 
             <legend>  <h2>Set Student status</h2></legend>
           
         </div>
                  

<div class="form-group">
  <label class="col-md-4 control-label" for="id">Student ID:</label>  
  <div class="col-md-4">
  <input id="id" name="sid" type="text"  class="form-control input-md" value="<%= sid %>" readonly>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Type of Internship</label>  
  <div class="col-md-4">
        <select class="form-control" name="internship_type" id="internship_type"onchange="go()">
            
            <option selected>Select Internship</option>
       
             <option>Company</option> 
	     <option>Startup Company</option>
	     <option>Research Project</option>
             <option>MAC Project</option>
	     <option>Other</option>


       </select>
      
    </div>
</div>
<span id="sp3"></span>
<span id="sp1"></span>
    <span id="sp2"></span>

        
        
        
        <div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">SUBMIT</button>
  </div>
</div>
        
        </form>  
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>