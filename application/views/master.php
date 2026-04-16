<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title><?php if(isset($siteTitle)){
        
            echo $siteTitle;
        }?></title>
        
        <?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/assets/css/style.css" />
        <link href="<?php echo $url_prefix; ?>global/assets/css/liMarquee.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/assets/css/monthly.css" >
    </head>
    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <div class="toparea">
                            <p><?php 
                                $date = date("d.m.Y");
                                 echo(strftime("%d %B %Y",strtotime($date))) . ", ". date("l");
                                 
                ?>           </p>
                        </div>
                        <div class="logoarea">
                            
                                <img src="<?php echo $url_prefix; ?>global/assets/images/logo.jpg" alt="logo.png">
                            <div class="school-name">
                                <p class="name" style="margin-top:10px;">Shikder Cadet Academy</p>
                                <!--<p class="e">National Curriculum English Medium</p>-->
                            </div>
                        </div>
                        <div class="header-menu">
                            <nav> 
                                <a id="resp-menu" class="responsive-menu" href="#"><i class="fa fa-reorder"></i> Menu</a>
                                <ul class="menu">
                                    <li><a class="homer" href="<?php echo $url_prefix; ?>">Home</a></li>
                                    <li><a  href="<?php echo $url_prefix; ?>academic_info">About Us</a></li>
                                    <li><a href="">Teachers Info</a>
                                        <ul class="sub-menu">
                                            <li><a href="<?php echo $url_prefix; ?>senior_section">Senior Section</a></li>
                                            <li><a href="<?php echo $url_prefix; ?>junior_section">Junior Section</a>
                                                <!--<ul>
                                                    <li><a href="#">Campus 1</a></li>
                                                    <li><a href="#">Campus 2</a></li>
                                                    <li><a href="#">Campus 3</a></li>
                                                </ul>-->
                                            </li>
                                            <li><a href="<?php echo $url_prefix; ?>all_teacher">All View</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<?php echo $url_prefix; ?>all_notice">Notice</a></li>
                                    <li><a href="<?php echo $url_prefix; ?>syllabus">Syllabus</a></li>
                                    <li><a href="<?php echo $url_prefix; ?>routine">Routine</a></li>
                                    <li><a href="<?php echo $url_prefix; ?>all_gallery">Gallery</a></li>
                                    <!-- <li><a href="">Career</a></li> -->
                                    <!-- <li><a href="<?php echo $url_prefix; ?>online_education">Online Education</a></li> -->
                                    <!-- <li><a href="<?php //echo $url_prefix; ?>results">Results</a></li> -->
                                    <li><a href="<?php echo $url_prefix; ?>display">Event Calender</a></li>
                                    <li><a href="<?php echo $url_prefix; ?>video">Video</a></li>
                                    <li><a href="<?php echo $url_prefix; ?>contact_us">Contact Us</a></li>
                                </ul>
                        </div>
                        <div class="marquee">
                            <div class="str1 str_wrap">
                                <ul class="list-inline">
                                    <?php foreach ($notice as $v): ?>
                                    <li><a href="<?php echo $url_prefix; ?>single_notice/<?php echo $v->NOTICE_ID; ?>"><?php echo $v->NOTICE_TITLE; ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>

       <?php 
            if(isset($content)){
                echo $content;
            }
       ?>

        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="footer-txt">
                            <p>&copy; Shikder Cadet Academy 2016 | developed by <a target="_blank" href="http://base4bd.com/content/default.aspx">base4 Technologies</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/assets/js/jquery.1.12.4.min.js"></script>
        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/assets/js/script.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/jquery.liMarquee.js"></script>
        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/assets/js/jssor.slider-21.1.5.min.js"></script>
        <link href="<?php echo $url_prefix; ?>global/assets/js/dist/css/lightgallery.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lightgallery.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-fullscreen.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-thumbnail.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-video.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-autoplay.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-zoom.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-hash.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/dist/js/lg-pager.js"></script>
        <script src="<?php echo $url_prefix; ?>global/assets/js/lib/jquery.mousewheel.min.js"></script>
        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/assets/js/monthly.js"></script>

        <script>
            jssor_1_slider_init();
        </script>
    </body>
</html>