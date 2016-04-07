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
		
			About Us
			
		</p>
		
		<p>
			Poly Good Company Limited is an O2O (Online to Offline) store in Hong Kong.
            <br/>
            You can view our lastest products in our website. And the prices of products will be shown on our website.
            <br/>
            Different special promotions are frequently announced on Poly Good Company Limited.
            <br/>
            If you have any questions, please feel free to contact us.
		</p>

		<p style="clear:both"></p>
		<p>
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1845.6536501690593!2d114.18058566743694!3d22.304214952571062!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2shk!4v1460010028571" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</p>
  
 
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  
</body>
</html>
