
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
        <%@include file="admin_nav_bar.jsp" %>
       <%
             String sid = (String)  session.getAttribute("sid");
            
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

             ResultSet rs = stmt.executeQuery("SELECT * FROM internship.student_personal WHERE sid ='"+sid+"'");
             
             
            
        while (rs.next()) {
            
            %>
        
        <form class="form-horizontal" action="delete_searched_student" method="post">
<fieldset>

<!-- Form Name -->
<div class="container" style="margin-top:50px"> 
             <legend>  <h2>Student Details</h2></legend>
           
         </div>

<center><h3 class="text-primary"> Semester Registered</h3></center>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Term</label>
    <div class="col-md-4">
        <select class="form-control" id="sel1" name="term" value="<%=rs.getString("term")%>" >
        <option >Fall</option>
        <option >Winter</option>
       </select>
    </div>
</div> 

<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Year</label>
    <div class="col-md-4">

        <input type="text" name="year" class="form-control input-md"  value="<%=rs.getString("year")%>" readonly>
    </div>
</div>
                     
<center> <h3 class="text-primary"> Student Personal Details</h3></center>
                  
<div class="form-group">
  <label class="col-md-4 control-label" for="id">Student Id</label>  
  <div class="col-md-4">
      <input id="id" name="sid" type="text"  class="form-control input-md" value="<%= session.getAttribute("sid") %>" readonly>
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">First name</label>  
  <div class="col-md-4">
      <input id="fn" name="fname" type="text"  class="form-control input-md"  value="<%=rs.getString("fname")%>" readonly>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="mn">Middle name</label>  
  <div class="col-md-4">
      <input id="mn" name="mname" type="text" placeholder="Middle name name" class="form-control input-md" required="" value="<%=rs.getString("mname")%>" readonly>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Last name</label>  
  <div class="col-md-4">
      <input id="ln" name="lname" type="text" placeholder="last name" class="form-control input-md" required="" value="<%=rs.getString("lname")%>" readonly>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" >Email</label>  
  <div class="col-md-4">
      <input  name="mail" type="email" placeholder="Email" class="form-control input-md" required="" value="<%=rs.getString("email")%>" readonly>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Telephone</label>  
  <div class="col-md-4">
      <input name="phone" type="text" placeholder="email" class="form-control input-md" required="" value="<%=rs.getString("telephone")%>" readonly>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Gender</label>
    <div class="col-md-4">
        <select class="form-control" id="sel1" name="gender" value="<%=rs.getString("gender")%>">
        
        <option>Male</option>
        <option>Female</option>
       </select>
    </div>
</div> 

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Status</label>
    <div class="col-md-4">
        <select class="form-control" id="sel1" name="status" value="<%=rs.getString("status")%>">
        <option>Citizen</option>
        <option>Permanent Resident</option>
        <option>International</option>
       </select>
    </div>
</div> 
        
<div class="form-group">
  <label class="col-md-4 control-label" >Address</label>  
  <div class="col-md-4">
  <input name="address" type="text"  min="9" max="12" placeholder="Permanent Address" class="form-control input-md" value="<%=rs.getString("address")%>">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" >City</label>  
  <div class="col-md-4">
  <input name="city" type="text"  min="9" max="12" placeholder="City" class="form-control input-md" value="<%=rs.getString("city")%>">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" >Country</label>  
  <div class="col-md-4">
  <input name="country" type="text"  min="9" max="12" placeholder="country of origin" class="form-control input-md" value="<%=rs.getString("country")%>">
    
  </div>
</div>     
        
        
<%    }
ResultSet rs1 = stmt.executeQuery("SELECT * FROM internship.under_grad_student WHERE sid ='"+sid+"'");
    while (rs1.next()) {   %>
<center><h3 class="text-primary"> Education and Training</h3></center>
<!-- Select Basic -->

<center>
<div class="form-group">
  
      <div class="container">
          
          <div class="table-responsive">          
            <table class="table">
            <thead>
                  <tr>
                      <th></th>
                  <th>Major</th>
                  <th>GPA</th>
                  <th>University/College</th>
                  <th>Country</th>
                  <th>Year-Year</th>
                  </tr>
            </thead>
        <tbody>
                        <tr>
                            <th>Undergraduate Degree(s)</th>
                            <td><input type="text" name="undergrad_major" value="<%=rs1.getString("major")%>" readonly ></td>
                            <td><input type="text" name="undergrad_gpa" value="<%=rs1.getString("gpa")%>"readonly></td>
                            <td><input type="text" name="undergrad_uni" value="<%=rs1.getString("uni")%>" readonly></td>
                            <td><input type="text" name="undergrad_country" value="<%=rs1.getString("country")%>" readonly></td>
                            <td><input type="date" name="undergrad_year" value="<%=rs1.getString("year")%>" readonly></td>
                        </tr>
                        <% } 
                        ResultSet rs2 = stmt.executeQuery("SELECT * FROM internship.grad_student WHERE sid ='"+sid+"'");
                         while (rs2.next()) {
                        
                        %>
                        <tr>
                            <th>Graduate Degree(s)</th>
                            <td><input type="text" name="grad_major" value="<%=rs2.getString("major")%>" readonly ></td>
                            <td><input type="text" name="grad_gpa" value="<%=rs2.getString("gpa")%>" readonly></td>
                            <td><input type="text" name="grad_uni" value="<%=rs2.getString("uni")%>" readonly></td>
                            <td><input type="text" name="grad_country" value="<%=rs2.getString("country")%>" readonly></td>
                            <td><input type="date" name="grad_year" value="<%=rs2.getString("year")%>" readonly></td>
                        </tr> <% } %>
                        
                        <th>Extra Certificates and Degrees</th> 
                        
                        <%
                            Statement stmt2 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                            ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs3 = stmt2.executeQuery("SELECT e_major,e_gpa,e_uni,e_country,e_year FROM internship.extra_edu_student WHERE sid ='"+sid+"'");
                                 
                                 
                         while (rs3.next()) {
                                  
                                                 
    String a = rs3.getString("e_major");
            String b = rs3.getString("e_gpa");
            String c = rs3.getString("e_uni"); 
String d = rs3.getString("e_country");
String e = rs3.getString("e_year");
%>
                        <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_m" value="<%=a%>" readonly></td>
                            <td><input type="text" name="extra_degree_gpa" value="<%=b%>" readonly></td>
                            <td><input type="text" name="extra_degree_uni" value="<%=c%>" readonly></td>
                            <td><input type="text" name="extra_degree_country" value="<%=d%>" readonly></td>
                            <td><input type="date" name="extra_degree_year" value="<%=e%>" readonly></td>
                        
                        </tr>
                           
            
          
                        <%   } %>  </table>
                        
          </div>    
      </div>
  </div>


</center>
                        
                        <center><h3 class="text-primary"> Work Experience </h3></center>
    
<center>
<div class="form-group">
  
      <div class="container">
          
          <div class="table-responsive">          
            <table class="table">
            <thead>
                  <tr>
                            <th>Company</th>
                            <th>Dates(MM-YY/MM-YY)</th>
                            <th>Title</th>
                            <th>Duties</th>
                   </tr>
            </thead>
        <tbody>
               <% 
                             ResultSet rs4 = stmt.executeQuery("SELECT * FROM internship.work_exp_student WHERE sid ='"+sid+"'");
                                 while (rs4.next()) { 
                        
                        %>
                         <tr>
                             <td><input type="text" name="c_name1" value="<%=rs4.getString("c_name")%>" readonly></td>
                            <td><input type="text" name="c_date1" value="<%=rs4.getString("c_year")%>" readonly ></td>
                            <td><input type="text" name="c_title1" value="<%=rs4.getString("c_title")%>" readonly></td>
                            <td><input type="text" name="c_duties1" value="<%=rs4.getString("c_duties")%>" readonly></td>
                        </tr>
                      
       
                
                <% } %> </tbody>     
            </table>
      </div>
  </div>

</div>
</center>


<!-- Button --><center>
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