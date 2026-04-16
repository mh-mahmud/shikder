<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="teacher-list">
                    <table border="0">
                        <thead> 
                            <tr>
                                <td width="50" bgcolor="#66CCFF"></td>
                                <td bgcolor="#66CCFF"><b>Name</b></td>
                                <td bgcolor="#66CCFF"><b>Post</b></td>
                                <td bgcolor="#66CCFF"><b>Gender</b></td>
                                <td bgcolor="#66CCFF"><b>Qualification</b></td>
                                <td bgcolor="#66CCFF"><b>Mobile</b></td>
                            </tr> 
                        </thead> 
                        <tbody>
                            <?php foreach ($teacher as $v):
                                  
                                    if($v->TEACHER_TYPE=="Senior_section"){
                                ?>
                            <tr>
                                <td>
                                    <form id="form1" name="form1" method="post" action="<?php echo $url_prefix; ?>single_teacher">
                                        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                        <input name="views" id="views" value="<?php echo $v->TEACHER_ID; ?>" type="hidden" hidden=""> 
                                        <input data-inline="true" id="submit" value="View" type="submit">
                                    </form>
                                </td>
                                <td><?php echo $v->TEACHER_NAME; ?></td>
                                <td>
                                    <?php
                                         $desig = $this->db->get_where("designation", array("DESIGNATION_ID"=>$v->DESIGNATION_ID))->row();
                                          echo $desig->DESIGNATION_NAME;
                                         ?>
                                </td>
                                <td><?php echo $v->GENDER; ?></td>
                                <td><?php echo $v->EDUCATIONAL_BACK; ?></td>
                                <td><?php echo $v->PHONE; ?></td>
                            </tr>
                                    <?php } endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>