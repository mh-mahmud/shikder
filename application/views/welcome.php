<!DOCTYPE html>
<html>
  <head>
      <title>Welcome</title>
      <?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
      <!-- Bootstrap -->
      <link href="<?php $url_prefix; ?>global/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
      <link href="<?php $url_prefix; ?>global/admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
      <link href="<?php $url_prefix; ?>global/admin/assets/styles.css" rel="stylesheet" media="screen">
       <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
      <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
      <script src="<?php $url_prefix; ?>global/admin/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>
  <body id="login">
      <div class="container">
          <a href="<?php echo $url_prefix ?>"><h2 class="form-signin-heading" style="text-align:center;margin:20% 0%;background: #000 linear-gradient(#000, #4c4c4c, #000) repeat scroll 0 0;padding:3% 0%;color:#fff;font-size:50px;">Welcome To Shamim Cadet Coaching</h2></a>

      </div> <!-- /container -->
      <script src="<?php $url_prefix; ?>global/admin/vendors/jquery-1.9.1.min.js"></script>
      <script src="<?php $url_prefix; ?>global/admin/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>