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
           <div class="container" style="margin-top:50px"> 
             <legend>  <h2>Generate Reports</h2></legend>
           
         </div>
        <form class="form-horizontal" action="view_all_students.jsp" method="POST">
            
            <center> <h2>View all students</h2> </center>
            
           
            <!-- Button --><center>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">View All</button>
  </div>
</div>
</center> 
        </form>
        
        <hr>
        <hr>
          <center> <h2>View students specifically</h2> </center>
        
                 <form class="form-horizontal" action="view_specific_students.jsp" method="POST">
   <div class="form-group">
    <label class="col-md-4 control-label">Term</label>
    <div class="col-md-4">
        <select class="form-control" name="term" id="term">
            <option >Select term</option>
        <option>Fall</option>
        <option>Winter</option>
        <option selected disabled hidden style='display: none' value=''></option>
       </select>
    </div>
</div> 
  <div class="form-group">
    <label class="col-md-4 control-label">Gender</label>
    <div class="col-md-4">
        <select class="form-control" name="gender" id="gender">
            <option selected>Select Gender</option>
        <option>Male</option>
        <option>Female</option>
        <option selected disabled hidden style='display: none' value=''></option>
       </select>
    </div>
</div> 
          
<%
           
            String sid = (String)  session.getAttribute("sid");
            
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                                                                  ResultSet.CONCUR_UPDATABLE);

            ResultSet rs = stmt.executeQuery("SELECT Distinct(country) FROM internship.student_personal");
             
           
            
            %>
            <script>   
            function go()
        {
            var status=document.getElementById("status").value;
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("sp3").innerHTML = xmlhttp.responseText;
                }
            };
            xmlhttp.open("GET", "reports_ajax.jsp?status=" +status,true);
            xmlhttp.send();
        }
        </script>
                     
      <div class="form-group">
    <label class="col-md-4 control-label">Country</label>
    <div class="col-md-4">
        <select class="form-control" name="country" id="country">
            <option selected>Select Country</option>
       <%      while (rs.next()) {  %>
        
        <option><%=rs.getString("country")%></option>
        <option selected disabled hidden style='display: none' value=''></option>
        <% } %>
       </select>
    </div>
</div> 
       <div class="form-group" onchange="go()">
    <label class="col-md-4 control-label">Status</label>
    <div class="col-md-4">
        <select class="form-control" name="status" id="status">
            <option selected>Select Status</option>
        <option>Hired</option>
        <option>Available</option>
        <option selected disabled hidden style='display: none' value=''></option>
       </select>
    </div>
</div> 
       
 <span id="sp3"></span>   
       
       <!-- Button --><center>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">View Students</button>
  </div>
</div>
</center>
</form>
       
                 
    </body>
</html>