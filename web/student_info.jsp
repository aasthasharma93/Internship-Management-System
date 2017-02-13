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
    <body >
       
        <%@include file="admin_nav_bar.jsp" %>
        
         <div class="container" style="margin-top:50px"> 
             <legend>  <h2>Student Details</h2></legend>
           
         </div>
            
  <form class="form-horizontal" action="student_info_register" method="post">
<fieldset>
    

    
        
<center><h3 class="text-primary"> Semester Registered</h3></center>
<div class="form-group">
    <label class="col-md-4 control-label">Term</label>
    <div class="col-md-4">
        <select class="form-control" name="t">
            <option selected>Select term</option>
        <option>Fall</option>
        <option>Winter</option>
       </select>
    </div>
</div> 

<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Year</label>
    <div class="col-md-4">

       <input type="text" name="year" placeholder="Year" class="form-control input-md" required="">
    </div>
</div>
                     
<center> <h3 class="text-primary"> Student Personal Details</h3></center>
                  
<div class="form-group">
  <label class="col-md-4 control-label" for="id">Student Id</label>  
  <div class="col-md-4">
  <input id="id" name="sid" type="number"   placeholder="Student ID" class="form-control input-md" required="">
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">First name</label>  
  <div class="col-md-4">
  <input id="fn" name="fname" type="text"  min="3" max="20" placeholder="First name" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="mn">Middle name</label>  
  <div class="col-md-4">
  <input id="mn" name="mname" type="text"  min="3" max="20" placeholder="Middle name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Last name</label>  
  <div class="col-md-4">
  <input id="ln" name="lname" type="text"  min="3" max="20" placeholder="Last name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" >Email</label>  
  <div class="col-md-4">
  <input  name="mail" type="email" placeholder="Email" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" >Telephone</label>  
  <div class="col-md-4">
  <input name="phone" type="text"  min="9" max="12" placeholder="Mobile or Land-line" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Gender</label>
    <div class="col-md-4">
        <select class="form-control" id="sel1" name="gender">
        
        <option>Male</option>
        <option>Female</option>
       </select>
    </div>
</div> 

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="fn">Status</label>
    <div class="col-md-4">
        <select class="form-control" id="sel1" name="status">
        <option>Citizen</option>
        <option>Permanent Resident</option>
        <option>International</option>
       </select>
    </div>
</div> 

<div class="form-group">
  <label class="col-md-4 control-label" >Address</label>  
  <div class="col-md-4">
  <input name="address" type="text"  min="9" max="12" placeholder="Permanent Address" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" >City</label>  
  <div class="col-md-4">
  <input name="city" type="text"  min="9" max="12" placeholder="City" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" >Country</label>  
  <div class="col-md-4">
  <input name="country" type="text"  min="9" max="12" placeholder="country of origin" class="form-control input-md" required="">
    
  </div>
</div>

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
                  <th>Year Completed</th>
                  </tr>
            </thead>
        <tbody>
                        <tr>
                            <th>Undergraduate Degree(s)</th>
                            <td><input type="text"  min="3" max="20" name="undergrad_major"></td>
                            <td><input type="text"  min="3" max="20" name="undergrad_gpa"></td>
                            <td><input type="text" min="3" max="20" name="undergrad_uni"></td>
                            <td><input type="text"  min="3" max="20" name="undergrad_country"></td>
                            <td><input type="date"  min="3" max="20" name="undergrad_year"></td>
                        </tr>
                        <tr>
                            <th>Graduate Degree(s)</th>
                            <td><input type="text"  min="3" max="20" name="grad_major"></td>
                            <td><input type="text"  min="3" max="20" name="grad_gpa"></td>
                            <td><input type="text"  min="3" max="20" name="grad_uni"></td>
                            <td><input type="text"  min="3" max="20" name="grad_country"></td>
                            <td><input type="date" min="3" max="20" name="grad_year"></td>
                        </tr>
                        <tr>
                            <th>Extra Certificates and Degrees</th>
                            
                            <td><input type="text"  min="3" max="20"name="extra_degree_m" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_gpa" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_uni" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_country" ></td>
                            <td><input type="date"  min="3" max="20"name="extra_degree_year" ></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_2_m" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_2_gpa" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_2_uni" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_2_country" ></td>
                            <td><input type="date"  min="3" max="20"name="extra_degree_2_year" ></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_3_m" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_3_gpa" ></td>
                            <td><input type="text"  min="3" max="20"name="extra_degree_3_uni" ></td>
                            <td><input type="text" min="3" max="20" name="extra_degree_3_country" ></td>
                            <td><input type="date" min="3" max="20" name="extra_degree_3_year" ></td>
                        </tr>
        </tbody>     
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
                            <th>Date(MM-YY)</th>
                            <th>Title</th>
                            <th>Duties</th>
                   </tr>
            </thead>
        <tbody>
                         <tr>
                            <td><input type="text"  min="3" max="20"name="c_name1"></td>
                            <td><input type="month"  min="3" max="20"name="c_date1" ></td>
                            <td><input type="text"  min="3" max="20"name="c_title1" ></td>
                            <td><input type="text"  min="3" max="20"name="c_duties1" ></td>
                        </tr>
                         <tr>
                            <td><input type="text"  min="3" max="20" name="c_name2"></td>
                            <td><input type="month"  min="3" max="20"name="c_date2" ></td>
                            <td><input type="text"  min="3" max="20"name="c_title2" ></td>
                            <td><input type="text"  min="3" max="20"name="c_duties2" ></td>
                        </tr>
                         <tr>
                              <td><input type="text"  min="3" max="20"name="c_name3"></td>
                            <td><input type="month"  min="3" max="20"name="c_date3" ></td>
                            <td><input type="text" name="c_title3" ></td>
                            <td><input type="text" name="c_duties3" ></td>
                        </tr>
                         <tr>
                              <td><input type="text" min="3" max="20" name="c_name4"></td>
                            <td><input type="month" min="3" max="20" name="c_date4" ></td>
                            <td><input type="text" min="3" max="20" name="c_title4" ></td>
                            <td><input type="text" min="3" max="20" name="c_duties4" ></td>
                        </tr>
                         <tr>
                              <td><input type="text" min="3" max="20" name="c_name5"></td>
                            <td><input type="month"  min="3" max="20"name="c_date5" ></td>
                            <td><input type="text"  min="3" max="20"name="c_title5" ></td>
                            <td><input type="text" min="3" max="20" name="c_duties5" ></td>
                        </tr>
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