<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>

<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="gallery-area">
                    <h3>Gallery</h3>
                    <div class="demo-gallery">
                        <ul id="lightgallery" class="list-unstyled row">
                            <?php foreach ($gallery as $v): ?>
                            <li class="col-xs-12 col-sm-4 col-md-3" data-responsive="img/1-375.jpg 375, img/1-480.jpg 480, img/1.jpg 800" data-src="<?php echo $this->webspice->get_path('gallery').$v->IMAGE_ID.'.jpg'; ?>" data-sub-html="">
                                <a href="">
                                    <img class="img-responsive" style="max-width:100%; height: 180px; margin:15px;" src="<?php echo $this->webspice->get_path('gallery').$v->IMAGE_ID.'.jpg'; ?>">
                                </a>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>