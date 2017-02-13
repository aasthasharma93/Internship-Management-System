<!DOCTYPE html>
<html lang="en">

    <head>

        
    </head>

    <body>
                         <script>
                            $(document).ready(functon()){
                                $("#div1").load("abc", function(responseTxt, statusTxt, xhr){
            if(statusTxt == "success")
                alert("External content loaded successfully!");
            if(statusTxt == "error")
                alert("Error: " + xhr.status + ": " + xhr.statusText);
                      });
                                
                            });
                            
                            
                            
                            </script>
                            
                            
                            
                            <div class="form-bottom" >
			                    <form role="form" action="first_servlet" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="admin_name" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                       
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                       
                            <div id="div1"></div>
        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>