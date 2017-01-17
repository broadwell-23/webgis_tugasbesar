<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>TEMPLATE SIG-LANJUTAN LOGIN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Bluth Company">
    <link rel="shortcut icon" href="assets/ico/favicon.html">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/alertify.css" rel="stylesheet">
    <link rel="Favicon Icon" href="../img/logountan.png">
    <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    <div id="wrap">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          	<div class="row-fluid">
				<div class="widget container-narrow">
				<h4 style="text-align:center">TEMPLATE SIG-LANJUTAN-2016</h4>
				<p style="text-align:center">HALAMAN LOGIN</p>
		<!--h2 class="heading">
			Halaman Login   
		</h2-->
					<div class="widget-header">
						<i class="icon-user"></i>
						<h5>Silakan Isi Username dan Password Anda</h5>
					</div>  
					<div class="widget-body clearfix" style="padding:25px;">
		      			<form action="auth.php" method="POST">
							<div class="control-group">
								<div class="controls">
									<input class="btn-block" type="text" name="username" id="username" placeholder="Username">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input class="btn-block" type="password" name="password" placeholder="Password">
								</div>
							</div>				
							<button type="submit" name="login" class="btn pull-right">Login</button>
		      			</form>
					</div>  
				</div>  
      			<div style="text-align:center">
      				<p><a href="../"><i class="icon-home"></i> Halaman Depan</a></p>
      			</div>
        	</div><!--/row-fluid-->
        </div><!--/span10-->
      </div><!--/row-fluid-->
    </div><!--/.fluid-container-->
    </div><!-- wrap ends-->

    <script type="text/javascript" src="assets/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui-1.9.2.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='assets/js/sparkline.js'></script>
    <script type="text/javascript" src='assets/js/morris.min.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.elfinder.min.html"></script> 
    <script type="text/javascript" src="assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="assets/js/realm.js"></script>
	
	<script type="text/javascript">
		$('#username').focus();
	</script>
  </body>
</html>
