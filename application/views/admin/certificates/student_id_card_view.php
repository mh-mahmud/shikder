<?php include(APPPATH."views/admin/admin_header.php"); ?>
		<style type="text/css">
	
		</style>
        <div class="container" id="wrapper">
            <div id="page_create_parent" class="row-fluid page_identifier">
                <div class="span12" id="content">
                    <div class="row-fluid">
                          <div class="navbar">
                              <div class="navbar-inner">
                                  <ul class="breadcrumb">
                                      <li>
                                          <b>ID Card</b>  
                                      </li>
                                  </ul>
                              </div>
                          </div>
                    </div>
					<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

                     <!-- validation -->
                    <div class="row-fluid">
                         <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">ID Card</div>
                            </div>
	                            <?php
	                              /*$my_data = array();
	                              $my_data['class_name'] = $class_name;
	                              $my_data['student_name'] = $student_name;
	                              $my_data['year'] = $year;
	                              $my_data['class_id'] = $class_id;
	                              $my_data['student_id'] = $student_id;
	                              $my_data['year'] = $year;
	                              $my_data = implode("|", $my_data);
	                              $my_data = $this->webspice->encrypt_decrypt($my_data, 'encrypt');*/
	                              //dd($roll_no);
	                            ?>
                            
                            <div class="block-content collapse in">
                            	<div class="button_set">
	                              <a target="_blank" class="btn btn-info" href="<?php echo $url_prefix; ?>print_student_id_card/<?php echo $class_id; ?>/<?php echo $student_id; ?>/<?php echo $year; ?>">Print ID Card</a>
                                <a target="_blank" class="btn btn-info" href="<?php echo $url_prefix; ?>student_id_card_back/<?php echo $class_id; ?>/<?php echo $student_id; ?>/<?php echo $year; ?>">Backside</a>
	                              <!-- <a class="btn btn-success" href="<?php //echo $url_prefix; ?>manage_testimonial/save_testimonial/<?php //echo $my_data; ?>">Save Testimonial</a> -->
	                            </div>
                                <div class="span12 id_card_main">
                                    <div class="id_card_area">
                                      <img src="<?php echo $url_prefix; ?>global/assets/images/id_front_back.jpg" id="my-bg">
                                    	<div class="id-card-info-area">
                                    		<div class="id-img-area">
                                          <img class="id-img" src="<?php echo $url_prefix; ?>global/assets/images/id_logo.jpg">
                                    		</div>
                                    		<div class="school-title">
                                          <p>Shikder Cadet Academy</p>
                                    		</div>
                                    		<div class="id-student-img">
                                    			<?php if( file_exists($this->webspice->get_path('student_full').$get_record[0]->STUDENT_ID.'.jpg') ): ?>
                                                      <img src="<?php echo $this->webspice->get_path('student').$get_record[0]->STUDENT_ID.'.jpg'; ?>"  alt="" class="img-responsive" width="100px;"/>
                                                  <?php endif;  ?>
                                    		</div>
                                    		<div class="id-st-info">
                                          <table class="frontsidetable">
                                    				<tr class="ispd">
                                    					<p class="cl">Name : <?php echo $student_name; ?></p>
                                    				</tr>	
                                            <tr class="ispd">
                                              <p class="cl">Student Id : <?php echo $public_id; ?></p>
                                            </tr> 
                                    			</table>
                                    		</div>
                                    		<div class="issuing">
                                          <img src="<?php echo $url_prefix; ?>global/assets/images/signature.png">
                                    			<p>Issuing Authority</p>
                                    		</div>
                                    		<div class="clear"></div>
                                    	</div>
                                    </div>	      
                                </div>
                            </div>
                        </div>
                          <!-- /block -->
                    </div>
                     <!-- /validation -->                    
                </div>       
            </div>            
<?php include(APPPATH."views/admin/admin_footer.php"); ?>
<script>
/*// AJAX call for autocomplete 
$(document).ready(function(){
  $("#search-box").keyup(function(){
    var keyword = $(this).val();
    var token = $("#token").val();

    $.ajax({
      type: "POST",
      url: url_prefix + "student_list_search",
      data: {
        keyword: keyword,
        csrf_webspice_tkn: token
      },
      beforeSend: function(){
        $("#search-box").css("background","#FFF url(LoaderIcon.gif) no-repeat 165px");
      },
      success: function(data){
        $("#suggesstion-box").show();
        $("#suggesstion-box").html(data);
        $("#search-box").css("background","#FFF");
      }
    });
  });
}

//To select country name
function selectCountry(val) {
  $("#search-box").val(val);
  $("#suggesstion-box").hide();
}*/
</script>