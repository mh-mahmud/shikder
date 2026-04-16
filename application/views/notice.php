<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="notice-area">
                    <h3>Notice</h3>
                    <?php foreach ($notice as $v): ?>
                        <p><a href="<?php echo $url_prefix; ?>single_notice/<?php echo $v->NOTICE_ID; ?>">[<?php echo $v->PUBLISH_DATE; ?>] <?php echo $v->NOTICE_TITLE; ?></a></p>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>