
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
        
        <form class="form-horizontal" action="student_update_info" method="post">
<fieldset>

<div class="container" style="margin-top:50px">
<legend><h2>Student Details</h2></legend>
</div>
<center><h3 class="text-primary"> Semester Registered</h3></center>
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Term</label>
    <div class="col-md-4">
        <% String i= rs.getString("term");
        if(i.endsWith("Fall")){
        %>
        <select class="form-control" id="sel1" name="gender">
        
            <option >Winter</option>
        <option selected >Fall</option>
       </select>
        <% } else {%>
                 <select class="form-control" id="sel1" name="gender" >

            <option selected>Winter</option>
        <option >Fall</option>
       </select> <% } %> 
    </div>
</div> 

<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Year</label>
    <div class="col-md-4">

       <input type="text" name="year" class="form-control input-md"  value="<%=rs.getString("year")%>">
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
  <input id="fn" name="fname" type="text"  class="form-control input-md"  value="<%=rs.getString("fname")%>">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="mn">Middle name</label>  
  <div class="col-md-4">
  <input id="mn" name="mname" type="text" placeholder="Middle name name" class="form-control input-md" required="" value="<%=rs.getString("mname")%>">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Last name</label>  
  <div class="col-md-4">
  <input id="ln" name="lname" type="text" placeholder="last name" class="form-control input-md" required="" value="<%=rs.getString("lname")%>">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" >Email</label>  
  <div class="col-md-4">
  <input  name="mail" type="email" placeholder="Email" class="form-control input-md" required="" value="<%=rs.getString("email")%>">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Telephone</label>  
  <div class="col-md-4">
  <input name="phone" type="text" placeholder="email" class="form-control input-md" required="" value="<%=rs.getString("telephone")%>">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Gender</label>
    <div class="col-md-4">
        <% String k= rs.getString("gender");
        if(k.endsWith("Female")){
        %>
        <select class="form-control" id="sel1" name="gender">
        
            <option >Male</option>
        <option selected >Female</option>
       </select>
        <% } else {%>
                 <select class="form-control" id="sel1" name="gender" >

            <option selected>Male</option>
        <option >Female</option>
       </select> <% } %> 
    </div>
</div> 

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Term</label>
    <div class="col-md-4">
        <% String j= rs.getString("status");
        if(j.endsWith("Citizen")){
        %>
        <select class="form-control" id="sel1" name="gender">
             <option>Permanent Resident</option>
        <option>International</option>
        <option selected >Citizen</option>
       </select>
        <% } if (j.endsWith("International")){%>
                 <select class="form-control" id="sel1" name="gender" >

            <option>Permanent Resident</option>
        <option selected >International</option>
        <option  >Citizen</option>
       </select> <% } %> 
	   <%  if (j.endsWith("Permanent Resident")){%>
                 <select class="form-control" id="sel1" name="gender" >

            <option selected >Permanent Resident</option>
        <option  >International</option>
        <option  >Citizen</option>
       </select> <% } %> 
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
                            <td><input type="text" name="undergrad_major" value="<%=rs1.getString("major")%>" ></td>
                            <td><input type="text" name="undergrad_gpa" value="<%=rs1.getString("gpa")%>"></td>
                            <td><input type="text" name="undergrad_uni" value="<%=rs1.getString("uni")%>"></td>
                            <td><input type="text" name="undergrad_country" value="<%=rs1.getString("country")%>"></td>
                            <td><input type="date" name="undergrad_year" value="<%=rs1.getString("year")%>"></td>
                        </tr>
                        <% } 
                        ResultSet rs2 = stmt.executeQuery("SELECT * FROM internship.grad_student WHERE sid ='"+sid+"'");
                         while (rs2.next()) {
                        
                        %>
                        <tr>
                            <th>Graduate Degree(s)</th>
                            <td><input type="text" name="grad_major" value="<%=rs2.getString("major")%>" ></td>
                            <td><input type="text" name="grad_gpa" value="<%=rs2.getString("gpa")%>"></td>
                            <td><input type="text" name="grad_uni" value="<%=rs2.getString("uni")%>"></td>
                            <td><input type="text" name="grad_country" value="<%=rs2.getString("country")%>"></td>
                            <td><input type="date" name="grad_year" value="<%=rs2.getString("year")%>"></td>
                        </tr> <% } %>
                        
                        <th>Extra Certificates and Degrees</th> 
                        
                        <%
                            Statement stmt2 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                            ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs3 = stmt2.executeQuery("SELECT e_major,e_gpa,e_uni,e_country,e_year,serial FROM internship.extra_edu_student WHERE sid ='"+sid+"'");
                                 
                                 
                     if(rs3.next()) { //rs3.first();
                                  
                                                 
            String a = rs3.getString("e_major");
            String b = rs3.getString("e_gpa");
            String c = rs3.getString("e_uni"); 
            String d = rs3.getString("e_country");
            String e = rs3.getString("e_year");
            String f = rs3.getString("serial");
                        %>
                        <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_m" value="<%=a%>" ></td>
                            <td><input type="text" name="extra_degree_gpa" value="<%=b%>"></td>
                            <td><input type="text" name="extra_degree_uni" value="<%=c%>" ></td>
                            <td><input type="text" name="extra_degree_country" value="<%=d%>"></td>
                            <td><input type="date" name="extra_degree_year" value="<%=e%>"></td>
                            <td><input type="hidden" name="serial1" value="<%=f%>"></td>
                            <td><input type="hidden" name="serial1_0" value="serial1_0"></td>
                        </tr>
                        
                        <% } else { %>
                        <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_m"  ></td>
                            <td><input type="text" name="extra_degree_gpa"></td>
                            <td><input type="text" name="extra_degree_uni"  ></td>
                            <td><input type="text" name="extra_degree_country" ></td>
                            <td><input type="date" name="extra_degree_year" ></td>
                            <td><input type="hidden" name="serial1_1" value="serial1_1"></td>
                        </tr>



                           <% }if(rs3.next()) { %>
                           <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_2_m" value="<%=rs3.getString("e_major")%>" ></td>
                            <td><input type="text" name="extra_degree_2_gpa" value="<%=rs3.getString("e_gpa")%>"></td>
                            <td><input type="text" name="extra_degree_2_uni" value="<%=rs3.getString("e_uni")%>" ></td>
                            <td><input type="text" name="extra_degree_2_country" value="<%=rs3.getString("e_country")%>"></td>
                            <td><input type="date" name="extra_degree_2_year" value="<%=rs3.getString("e_year")%>"></td>
                            <td><input type="hidden" name="serial2" value="<%=rs3.getString("serial")%>"></td>
                            <td><input type="hidden" name="serial2_0" value="serial2_0"></td></tr>
                        <% } else { %>
                        
                             <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_2_m"  ></td>
                            <td><input type="text" name="extra_degree_2_gpa" ></td>
                            <td><input type="text" name="extra_degree_2_uni"  ></td>
                            <td><input type="text" name="extra_degree_2_country" ></td>
                            <td><input type="date" name="extra_degree_2_year" ></td>
                                <td><input type="hidden" name="serial2_1" value="serial2_1"></td>                     

                           
                            <% } if(rs3.next()) {  %>   
                            
                        
                        <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_3_m" value="<%=rs3.getString("e_major")%>" ></td>
                            <td><input type="text" name="extra_degree_3_gpa" value="<%=rs3.getString("e_gpa")%>"></td>
                            <td><input type="text" name="extra_degree_3_uni" value="<%=rs3.getString("e_uni")%>" ></td>
                            <td><input type="text" name="extra_degree_3_country" value="<%=rs3.getString("e_country")%>"></td>
                            <td><input type="date" name="extra_degree_3_year" value="<%=rs3.getString("e_year")%>"></td>
                            <td><input type="hidden" name="serial3" value="<%=rs3.getString("serial")%>"></td>
                            <td><input type="hidden" name="serial3_0" value=serial3_0"></td>

                        </tr>
                        <% } else { %>
                         <tr>
                            <td> </td>
                            <td><input type="text" name="extra_degree_3_m"  ></td>
                            <td><input type="text" name="extra_degree_3_gpa" ></td>
                            <td><input type="text" name="extra_degree_3_uni"  ></td>
                            <td><input type="text" name="extra_degree_3_country" ></td>
                            <td><input type="date" name="extra_degree_3_year" ></td>
                                 <td><input type="hidden" name="serial3_1" value=serial3_1" ></td>                        


                        </tr>
                            <% } %>
                          </table>
                        
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
                            Statement stmt3 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                            ResultSet.CONCUR_UPDATABLE);
                             ResultSet rs4 = stmt3.executeQuery("SELECT * FROM internship.work_exp_student WHERE sid ='"+sid+"'");
                             
                            
                                if (rs4.next()) { 
                        
                        %>
                         <tr>
                            <td><input type="text" name="c_name1" value="<%=rs4.getString("c_name")%>"></td>
                            <td><input type="text" name="c_date1" value="<%=rs4.getString("c_year")%>" ></td>
                            <td><input type="text" name="c_title1" value="<%=rs4.getString("c_title")%>"></td>
                            <td><input type="text" name="c_duties1" value="<%=rs4.getString("c_duties")%>"></td>
                            <td><input type="hidden" name="serial_1" value="<%=rs4.getInt("serial")%>"></td>
                            
                        </tr>
                      <% } else { %>
                        <tr>
                            <td><input type="text" name="c_name1"></td>
                            <td><input type="text" name="c_date1"></td>
                            <td><input type="text" name="c_title1"></td>
                            <td><input type="text" name="c_duties1"></td>
                            <td><input type="hidden" name="serial_1"></td>
                            
                        </tr>
                      <% } if (rs4.next()) { %>
                      <tr>
                            <td><input type="text" name="c_name2" value="<%=rs4.getString("c_name")%>"></td>
                            <td><input type="text" name="c_date2" value="<%=rs4.getString("c_year")%>" ></td>
                            <td><input type="text" name="c_title2" value="<%=rs4.getString("c_title")%>"></td>
                            <td><input type="text" name="c_duties2" value="<%=rs4.getString("c_duties")%>"></td>
                            <td><input type="hidden" name="serial_2" value="<%=rs4.getInt("serial")%>"></td>
                            
                        </tr>
                        <% } else { %>
                        <tr>
                            <td><input type="text" name="c_name2"></td>
                            <td><input type="text" name="c_date2"></td>
                            <td><input type="text" name="c_title2"></td>
                            <td><input type="text" name="c_duties2"></td>
                            <td><input type="hidden" name="serial_2"></td>
                            
                        </tr>
                        <% } if (rs4.next()) { %>
                        <tr>
                            <td><input type="text" name="c_name3" value="<%=rs4.getString("c_name")%>"></td>
                            <td><input type="text" name="c_date3" value="<%=rs4.getString("c_year")%>" ></td>
                            <td><input type="text" name="c_title3" value="<%=rs4.getString("c_title")%>"></td>
                            <td><input type="text" name="c_duties3" value="<%=rs4.getString("c_duties")%>"></td>
                            <td><input type="hidden" name="serial_3" value="<%=rs4.getInt("serial")%>"></td>
                            
                        </tr>
                        <% } else { %>
                        <tr>
                            <td><input type="text" name="c_name3" ></td>
                            <td><input type="text" name="c_date3" ></td>
                            <td><input type="text" name="c_title3"</td>
                            <td><input type="text" name="c_duties3"</td>
                            <td><input type="hidden" name="serial_3"</td>
                            
                        </tr>
                        <% } if (rs4.next()) { %>
                        <tr>
                            <td><input type="text" name="c_name4" value="<%=rs4.getString("c_name")%>"></td>
                            <td><input type="text" name="c_date4" value="<%=rs4.getString("c_year")%>" ></td>
                            <td><input type="text" name="c_title4" value="<%=rs4.getString("c_title")%>"></td>
                            <td><input type="text" name="c_duties4" value="<%=rs4.getString("c_duties")%>"></td>
                            <td><input type="hidden" name="serial_4" value="<%=rs4.getInt("serial")%>"></td>
                            
                        </tr>
                        <% } else { %>
                        <tr>
                            <td><input type="text" name="c_name4" ></td>
                            <td><input type="text" name="c_date4" ></td>
                            <td><input type="text" name="c_title4" ></td>
                            <td><input type="text" name="c_duties4"></td>
                            <td><input type="hidden" name="serial_4"></td>
                            
                        </tr>
                        <% } if (rs4.next()) { %>
                        <tr>
                            <td><input type="text" name="c_name5" value="<%=rs4.getString("c_name")%>"></td>
                            <td><input type="text" name="c_date5" value="<%=rs4.getString("c_year")%>" ></td>
                            <td><input type="text" name="c_title5" value="<%=rs4.getString("c_title")%>"></td>
                            <td><input type="text" name="c_duties5" value="<%=rs4.getString("c_duties")%>"></td>
                            <td><input type="hidden" name="serial_5" value="<%=rs4.getInt("serial")%>"></td>
                            
                        </tr>
                        <% } else { %>
                        <tr>
                            <td><input type="text" name="c_name5" ></td>
                            <td><input type="text" name="c_date5" ></td>
                            <td><input type="text" name="c_title5" ></td>
                            <td><input type="text" name="c_duties5"></td>
                            <td><input type="hidden" name="serial_5"></td>
                            
                        </tr>
                        <% } %>
                 </tbody>     
            </table>
      </div>
  </div>

</div>
</center>


<!-- Button --><center>
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