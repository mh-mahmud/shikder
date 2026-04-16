<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>

<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="gallery-area">
                    <h3>Video</h3>
                    <div class="demo-video">
                        <?php foreach ($video as $vg):?>
                        <div class="element-item transition metal-<?php echo $vg['SUB_CAT_ID']; ?> col-md-4 col-lg-4 col-sm-6 col-xs-12" data-category="transition">
                            <div class="video-section">
                                <iframe class="embed-responsive-item" src="<?php echo $vg['EMBED_CODE']; ?>" allowfullscreen></iframe>
                            </div>
                            <h4>
                            	<?php 
                            		$sub_name = $this->db->get_where("sub_category", array("SUB_CATEGORY_ID"=>$vg['SUB_CAT_ID']))->row_array();
                            		echo $sub_name['SUB_CATEGORY_NAME'];
                            	 ?>
                            </h4>
                        </div>
                       <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>