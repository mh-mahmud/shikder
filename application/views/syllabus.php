<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="syllabus-area">
                    <h3>Syllabus</h3>
                    <div class="col-md-12">
                        <div class="syllabus-book">
                            <?php foreach ($syllabus as $v):
                                    $subcat = $this->db->get_where("sub_category", array("SUB_CATEGORY_ID"=>$v->SUB_CAT_ID))->row();
                                    //print_r($subcat);
                                ?>
                            <div class="col-md-6">
                                <div class="online-btn-block1">
                                    <?php if( file_exists($this->webspice->get_path('file_full').$v->FILE_ID.'.pdf') ): ?>
                                    <a target="_blank" class="btn" href="<?php echo $this->webspice->get_path('file').$v->FILE_ID.'.pdf'; ?>"><?php echo $v->FILE_CAPTION . " " . $subcat->SUB_CATEGORY_NAME; ?></a>
                                    <?php endif;  ?>
                                </div>
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>