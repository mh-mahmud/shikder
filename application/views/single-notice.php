<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-lg-9">
                <div class="notice-area">
                    <h3><?php echo $sglnotice->NOTICE_TITLE; ?></h3>
                    <p>Published: <?php echo $sglnotice->PUBLISH_DATE; ?> </p>
                    <p class="details"><?php echo $sglnotice->NOTICE_DETAILS; ?></p>
                </div>
            </div>
            <div class="col-md-3 col-lg-3">
                <div class="home-notice">
                    <h3>Notice</h3>

                    <ul>
                        <?php foreach ($notice as $vn): ?>
                            <li><span class="span-date"><span>
                                        <?php
                                        //echo date("F", mktime(0, 0, 0, 3, 1));
                                        $date = $vn->PUBLISH_DATE;
                                        $month_name = ucfirst(strftime("%d %B", strtotime($date)));
                                        echo $month_name;
                                        ?>
                                    </span> <?php echo(strftime("%Y",strtotime($date))); ?> </span><a href=""><?php echo $vn->NOTICE_TITLE; ?></a></li>
                        <?php endforeach; ?>
                        <li class="home-read-notice"><a href="<?php echo $url_prefix; ?>education/notice"><i class="fa fa-chevron-right" aria-hidden="true"></i><i class="fa fa-chevron-right" aria-hidden="true"></i>Read More</a></li>
                    </ul>
                </div>
                <div class="hit-text"><h5>Total Site Visit: 31411</h5>  </div>
            </div>
        </div>
    </div>
</div>