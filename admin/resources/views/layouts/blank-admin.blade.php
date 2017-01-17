<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="farizky.xyz">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Admin Panel - WoFi</title>

    @stack('stylesheets')

  </head>

  <body>

  <section id="container" >

    @include('includes/sidebar-admin')

    @include('includes/topbar-admin')

    @yield('main_container')
      
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2016 &copy; WoFi
              <a href="#" class="go-top">
                  <i class="icon-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    @stack('scripts')

  </body>
</html>
