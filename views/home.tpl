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
  <h2 class="text-center"><img src="/static/images/PolyGoodComapny_Logo.jpg" width="600px"></h2>
  </div>
  <br/>
  
 		<p>
		
			Welcome to <?php echo $site_title; ?>!
            <br />
            Check details in our Products Catalog for promotional deals and new stock!
			
		</p>
		
		<p>
			
			Here are our Featuring Products!
			
		</p>
		
        
		<div>
             
             <?php 
				foreach($itemsf as $itemf) {  ?>
					<div class="preview <?php if ($itemf->QUAN < 1) echo 'outofstock' ?>">
					<a href="desc?id=<?php echo $itemf->ID ?>"  <?php if ($itemf->QUAN < 1) echo "class='outofstock'"  ?> >
                       <?php echo $itemf->TITLE; if ($itemf->QUAN < 1) echo ' (out of stock)'; ?><br>
                       <img src="/static/images/<?php echo $itemf->IMGSRC ?>" class="thumb"/>
                    </a>
                    </div>

			<?php

				}
			 ?>
				
		</div> 
		<p style="clear:both"></p>
  

 
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  
</body>
</html>
