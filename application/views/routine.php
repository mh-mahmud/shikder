<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="syllabus-area">
                    <h3>Class Routine</h3>
                    <div class="col-md-12">
                        <div class="syllabus-book">
                            <?php foreach ($class as $v):  ?>
                            <div class="col-md-6">
                                <div class="online-btn-block1">
                                    <a class="btn" href="<?php echo $url_prefix; ?>class_wise_routine/<?php echo $v->SECTION_ID; ?>">
                                        <?php
                                            $class_name = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID='".$v->CLASS_ID."'")->row()->CLASS_NAME;
                                          
                                            $section_name = $this->db->query("SELECT SECTION_NAME FROM section WHERE SECTION_ID='".$v->SECTION_ID."'")->row()->SECTION_NAME;
                                            echo $class_name . "(" . $section_name . ")";
                                        ?>
                                    </a>
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