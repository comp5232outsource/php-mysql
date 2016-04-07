<!DOCTYPE html>
<html>
<head>
	<title><?php echo $site_title; ?> </title>
	<meta charset="utf8">  
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
   <link href="/static/bootstrap.min.css" rel="stylesheet" media="screen">
   <link href="/static/bootstrap-responsive.css" rel="stylesheet">
   <link href="/static/bootstrap.css" rel="stylesheet">
   <link href="/static/ourStyle.css" rel="stylesheet">

  <style type="text/css">
	
  </style>
</head>
<body>
  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          
          <a class="brand pull-left" href="/"><em><b><?php echo $site_title; ?></b></em></a>
	  
          <div class="nav-collapse collapse">
          	<?php
            	include('nav_menu.php');
          	?>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>  <!-- end of div for nav bar-->
  
  <div class="container">
  <!-- <table class="table table-hover">
  <tr> -->
  <div class="hero-unit">
  <div>
  <h2 class="text-center"><em><?php echo $site_title; ?></em></h2>
  </div>
  <br/>
  
 		<p>
		
			Contact Us
			
		</p>
		
		<p>
			<form class="emailform" name="contactform" method="post" action="">
            	<table>
                	<tr>
                    	<td valign="top"><label for="first_name">First Name *</label></td>
                        <td valign="top"><input  type="text" name="first_name" maxlength="50" size="30"></td>
                    </tr>
                    <tr>
                    	<td valign="top"><label for="last_name">Last Name *</label></td>
                        <td valign="top"><input  type="text" name="last_name" maxlength="50" size="30"></td>
                    </tr>
                    <tr>
                    	<td valign="top"><label for="email">Email Address *</label></td>
                        <td valign="top"><input  type="text" name="email" maxlength="80" size="30"></td>
                    </tr>
                    <tr>
                    	<td valign="top"><label for="telephone">Telephone Number</label></td>
                        <td valign="top"><input  type="text" name="telephone" maxlength="30" size="30"></td>
                    </tr>
                    <tr>
                    	<td valign="top"><label for="comments">Comments *</label></td>
                        <td valign="top"><textarea  name="comments" maxlength="1000" cols="80" rows="6"></textarea></td>
                    </tr>
                    <tr>
                    	<td colspan="2" style="text-align:center"><input type="submit" value="Submit"></td>
                    </tr>
               </table>
           </form>
		</p>

		<p style="clear:both"></p>
  
 
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  
</body>
</html>
