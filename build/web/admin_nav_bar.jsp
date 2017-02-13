<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>IMS</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/creative.css" type="text/css">

   
 
 <style>
    body
        {
            background:url('header.jpg') no-repeat center center fixed;
            background-size: cover;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            margin: 0;
            padding: 0;
        }

        label {
    color: white;
             }
        th {
    color: white;
            }
           
h2{
    color: white;
            }

    </style>

</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="admin_home.jsp">University of Windsor</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Student <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="student_info.jsp">Add Student</a></li>
                <li><a href="edit.jsp">Edit Student</a></li>
                   <li><a href="delete.jsp">Delete Student</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a  class="dropdown-toggle" data-toggle="dropdown"> Internship<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="add_company.jsp">Add Company</a></li>
                 <li><a href="edit_company.jsp">Edit Company</a></li>
                 <li><a href="delete_company.jsp">Delete Company</a></li>
                  <li class="divider"></li>
                 <li><a href="add_project.jsp">Add Project</a></li>
                 <li><a href="edit_project.jsp">Edit Project</a></li>
                 <li><a href="delete_project.jsp">Delete Project</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a  class="dropdown-toggle" data-toggle="dropdown"> Jobs<b class="caret"></b></a>
            <ul class="dropdown-menu">
               <li><a href="add_job.jsp" method="post" >Add Job</a></li>
                 <li><a href="edit_job.jsp">Edit Job</a></li>
                 <li><a href="delete_job.jsp">Delete Job</a></li>
            </ul>
        </li>
         <li><a href="job_interests_admin.jsp" method="post" >Job Interests</a></li>
        <li class="dropdown">
            <a  class="dropdown-toggle" data-toggle="dropdown"> Student Status<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="student_status1.jsp" method="post" >Set Student Status</a></li>
                 <li><a href="edit_student_status.jsp">View Student Status</a></li>
                 <li><a href="delete_status1.jsp">Delete Student Status</a></li>
                 
            </ul>
        </li>
        
         <li><a href="reports.jsp" method="post">Reports </a></li>
             
        
        <li><a href="destroy_servlet" method="post" >LogOut</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

     <!-- jQuery -->
   
</body>

</html>
