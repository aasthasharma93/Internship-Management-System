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
    
             
        <style>
        input[type="text"]{
    background-color: transparent;
    border: 0px;
    outline: none;
    cursor:default;
}

td{
    color: white;
}
</style>
    </head>
    <body>
       
        <%@include file="admin_nav_bar.jsp" %>
         <%
              String country = request.getParameter("country");
              String job_type = request.getParameter("job_type");
              String status = request.getParameter("status");
              String gender = request.getParameter("gender");
              String term = request.getParameter("term");
              
              ResultSet rs=null;
             
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");
            
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
           
           if(country!=null && job_type!=null && status!=null && gender!=null && term!=null )
              rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"' AND country='"+country+"' AND student_status='"+status+"' AND job_type='"+job_type+"';");
           else if(country!=null && job_type==null && status!=null && gender!=null && term!=null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"' AND country='"+country+"' AND student_status='"+status+"' ;");
          else if(country==null && job_type!=null && status!=null && gender!=null && term!=null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"'  AND student_status='"+status+"' ;");
          else if(country==null  && status==null && gender!=null && term!=null )
          rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"'  ;");
          else if(country==null && job_type!=null && status!=null && gender==null && term!=null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND student_status='"+status+"' AND job_type='"+job_type+"';");
          else if(country==null && job_type==null && status!=null && gender==null && term!=null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND student_status='"+status+"' ;");
          else if(country==null && job_type!=null && status!=null && gender!=null && term==null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE   gender='"+gender+"' AND student_status='"+status+"' AND job_type='"+job_type+"';");
           else if(country==null && job_type==null && status!=null && gender!=null && term==null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE   gender='"+gender+"' AND student_status='"+status+"' ;");
         else if(country==null && status==null && gender==null && term!=null ) 
          rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"';");
            else if(country==null && status==null && gender!=null && term==null ) 
            rs = stmt.executeQuery("SELECT * from internship.join WHERE gender='"+gender+"';");
           if(country==null && job_type==null && status==null && gender==null && term==null )
            rs = stmt.executeQuery("SELECT * from internship.join ;");
            else if(country==null && job_type!=null && status!=null && gender==null && term==null )
           rs = stmt.executeQuery("SELECT * from internship.join WHERE  student_status='"+status+"'AND job_type='"+job_type+"' ;");
           else if(country==null && job_type==null && status!=null && gender==null && term==null )
           rs = stmt.executeQuery("SELECT * from internship.join WHERE  student_status='"+status+"' ;");
           else if(country!=null && job_type==null && status!=null && gender!=null && term!=null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"' AND country='"+country+"' AND student_status='"+status+"' ;");
          else if(country==null && job_type==null && status!=null && gender!=null && term!=null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"'  AND student_status='"+status+"';");
          else if(country==null && job_type!=null && status!=null && gender!=null && term!=null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND gender='"+gender+"'  AND student_status='"+status+"' AND job_type='"+job_type+"';");
          else if(country!=null && status==null && gender==null && term!=null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND country='"+country+"';");
          else if(country!=null && status==null && gender!=null && term==null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE   gender='"+gender+"' AND  country='"+country+"';");
         else if(country!=null && status==null && gender==null && term==null ) 
          rs = stmt.executeQuery("SELECT * from internship.join WHERE country='"+country+"';");
         else if(country==null && job_type!=null && status!=null && gender==null && term==null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE  student_status='"+status+"'  AND job_type='"+job_type+"';");
          else if(country==null && job_type==null && status!=null && gender==null && term==null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE  student_status='"+status+"'  ;");

        else if(country!=null  && job_type!=null && status!=null && gender==null && term!=null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND student_status='"+status+"'  AND country='"+country+"' AND job_type='"+job_type+"';");
          else if(country!=null && job_type!=null && status!=null && gender==null && term==null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE country='"+country+"' AND student_status='"+status+"'  AND job_type='"+job_type+"';");
         
         else if(country!=null  && job_type==null && status!=null && gender==null && term!=null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE term='"+term+"' AND student_status='"+status+"'  AND country='"+country+"';");
          else if(country!=null && job_type==null && status!=null && gender==null && term==null )
            rs = stmt.executeQuery("SELECT * from internship.join WHERE student_status='"+status+"' AND country='"+country+"';");
         
           else if(country!=null  && job_type!=null && status!=null && gender!=null && term==null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE gender='"+gender+"' AND student_status='"+status+"'  AND country='"+country+"' AND job_type='"+job_type+"';");
         
         else if(country!=null  && job_type==null && status!=null && gender!=null && term==null )
         rs = stmt.executeQuery("SELECT * from internship.join WHERE gender='"+gender+"' AND student_status='"+status+"'  AND country='"+country+"' ;");
        
        else if(country!=null   && status==null && gender!=null && term!=null )
             rs = stmt.executeQuery("SELECT * from internship.join WHERE gender='"+gender+"'   AND country='"+country+"' AND term='"+term+"';");
         
        
         %>
        
<div class="container" id="div_id">

<div class="container" style="margin-top:50px"> 
             <legend>  <h2>Students Currently Enrolled</h2></legend>
           
         </div>



	<div class="row">
		
        
        <div class="col-md-12">   

<table class="table">
    <thead>
        
        <tr>
                   <th class="text-primary">Student ID</th>
                  <th class="text-primary">Student Name</th>
                  <th class="text-primary">Status</th>
                  
        </tr>
    </thead>
    <tbody>
        <%   while (rs.next()) { %>
        <tr>
            <td><input  type="text" value="<%=rs.getString("sid")%>" readonly></td>
            <td><input  type="text" value="<%=rs.getString("fname")%>" readonly></td>
           <td><input  type="text" value="<%=rs.getString("student_status")%>" readonly></td>
           
        </tr>
         <% } %> 
    
    </tbody>
  
</table>
   </div>
        </div>
        </div>
        
       <script type="text/javascript">
  function doPrint() {  
  var prtContent = document.getElementById("div_id");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}
</script>


        <!-- Button --><center>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button onclick="doPrint();" id="submit" name="submit" class="btn btn-primary">Print</button>
  </div>
</div>
</center>     
        
        <%@include file="footer.jsp" %>
        
           </body>
</html>