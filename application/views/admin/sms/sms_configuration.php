<?php include(APPPATH."views/admin/admin_header.php"); ?>

        <div class="container">
            <div class="row-fluid">
                <div class="span12" id="content">
                    <div class="row-fluid">

                        <!-- here will goes alert message -->
                        <!-- <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Success</h4>
                            The operation completed successfully
                        </div> -->
                        <!-- alert message end -->

                          <div class="navbar">
                              <div class="navbar-inner">
                                  <ul class="breadcrumb">
                                      <li>
                                          <b>SMS Configuration</b>  
                                      </li>
                                  </ul>
                              </div>
                          </div>
                      </div>


                         <!-- validation -->
                        <div class="row-fluid">
                             <!-- block -->
                            <div class="block">
                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left">SMS Configuration</div>
                                </div>
                                <div class="block-content collapse in">
                                    <div class="span12">
                                      <!-- BEGIN FORM-->
                                      <form method="post" action=""  enctype="multipart/form-data" id="" class="form-horizontal">

                                          <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                          <input type="hidden" name="sms_id" value="<?php if( isset($edit['SMS_ID']) && $edit['SMS_ID'] ){echo $this->webspice->encrypt_decrypt($edit['SMS_ID'], 'encrypt');} ?>" />
                                          <fieldset>
                                            <div class="control-group">
                                                <label class="control-label">SMS User Name<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input type="text" name="sms_user" data-required="1" class="span6 m-wrap" value="<?php echo set_value('sms_user',$edit['SMS_USER']); ?>" />
                                                <span class="fred"><?php echo form_error('sms_user'); ?></span>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label">SMS Password<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input type="text" name="sms_pass" data-required="1" class="span6 m-wrap" value="<?php echo set_value('sms_pass',$edit['SMS_PASS']); ?>" />
                                                <span class="fred"><?php echo form_error('sms_pass'); ?></span>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label">SMS URL<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input type="text" name="sms_url" data-required="1" class="span6 m-wrap" value="<?php echo set_value('sms_url',$edit['SMS_URL']); ?>" />
                                                <span class="fred"><?php echo form_error('sms_url'); ?></span>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label">SMS Header Name<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input type="text" name="sms_header_name" data-required="1" class="span6 m-wrap" value="<?php echo set_value('sms_header_name',$edit['SMS_HEADER_NAME']); ?>" />
                                                <span class="fred"><?php echo form_error('sms_header_name'); ?></span>
                                                </div>
                                            </div>
                                                
                                            <div class="form-actions">
                                                <input type="submit" name="submit" class="btn btn-success" value="Submit Data"  />
                                                <a class="btn btn-danger" href="<?php echo $url_prefix; ?>">Cancel</a>
                                            </div>
                                          </fieldset>
                                      </form>
                                      <!-- END FORM-->
                                    </div>
                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                         <!-- /validation -->
                    
                    
                    
                </div>
        
            </div>
            
<?php include(APPPATH."views/admin/admin_footer.php"); ?>