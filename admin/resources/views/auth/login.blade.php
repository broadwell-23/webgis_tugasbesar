<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Admin Panel - WoFi</title>

    <!-- Essential CSS Files -->
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/simplelightbox.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Color Styles -->
    <link rel="stylesheet" href="css/colors/color-blue.css">
    <link rel="stylesheet" href="css/colors/color-aqua.css">
    <link rel="stylesheet" href="css/colors/color-purple.css">
    <link rel="stylesheet" href="css/colors/default-color.css">
    <link rel="stylesheet" href="css/colors/color-green.css">
    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">

    <!-- Google Web Fonts =:= Raleway , Montserrat and Roboto -->
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,500,600,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:700,400' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:700,500,400' rel='stylesheet' type='text/css'>

    <!-- Essential JS Files -->
    <script src="js/vendor/jquery-1.11.3.min.js"></script>
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-body">
    <section class="hero-section hero-particle-bg" id="top" data-stellar-background-ratio="0.1">
        <div id="particles-js" style="height: 50%"></div>
        <div class="slider-caption">
          <!-- Contact Us Section -->

          <section>
              <div class="container">
                  <!-- Contact Us Section Title -->
                  <h2 class="section-title contact-title text-center">Login</h2>
                  <div class="row">
                      <div class="col-md-3"></div>
                      <div class="col-md-4 col-md-offset-1 col-lg-4 col-lg-offset-1 col-sm-4 col-sm-offset-1 col-xs-12">
                          <div class="contact-form-section mt-50">
                              <form method="POST" action="" id="contactForm" name="contact-form" role="form" action="{{ url('/login') }}">
                              {{ csrf_field() }}

                                  <div class="row">
                                      <div class="col-sm-12 col-md-12">
                                          <!-- Email Field -->
                                          <div class="form-group">
                                            <input type="email" placeholder="Email" id="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
                                          </div>
                                          <!-- Nama Field -->
                                          <div class="form-group">
                                            <input type="password" placeholder="Password" id="password" class="form-control" name="password" required>
                                          </div>
                                          <button class="btn-primary btn-contact btn-block" name="submit" type="submit">Sign in</button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
          </section>

          <!-- End Of Contact Us Section -->
        </div>

      </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Particle JS -->
    <script src="js/particles.min.js"></script>
    <script src="js/particles-config.js"></script>

    <!-- JS Files -->
    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.min.js"></script>
    <!-- PreLoader -->
    <script src="js/queryloader2.min.js"></script>
    <!-- Particle JS -->
    <script src="js/particles.min.js"></script>
    <script src="js/particles-config.js"></script>
    <!-- Background Prallax -->
    <script src="js/jquery.stellar.min.js"></script>
    <!-- WOW JS Animation -->
    <script src="js/wow.min.js"></script>
    <!-- Simple Lightbox -->
    <script src="js/simple-lightbox.min.js"></script>
    <!-- Sticky -->
    <script src="js/jquery.sticky.js"></script>
    <!-- OWL-Carousel -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- jQuery inview -->
    <script src="js/jquery.inview.js"></script>
    <!-- Shuffle jQuery -->
    <script src="js/jquery.shuffle.min.js"></script>
    <!-- jQuery CountTo -->
    <script src="js/jquery.counTo.js"></script>
    <!-- Goole map API -->
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <!-- gmap.js plugin -->
    <script src="js/gmap.js"></script>
    <!-- Main JS -->
    <script src="js/main.js"></script>

  </body>
</html>