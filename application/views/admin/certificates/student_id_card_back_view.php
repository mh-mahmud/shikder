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
	                              <a target="_blank" class="btn btn-info" href="<?php echo $url_prefix; ?>print_student_id_card_back/<?php echo $class_id; ?>/<?php echo $student_id; ?>/<?php echo $year; ?>">Print ID Card</a>
	                              <!-- <a class="btn btn-success" href="<?php //echo $url_prefix; ?>manage_testimonial/save_testimonial/<?php //echo $my_data; ?>">Save Testimonial</a> -->
	                            </div>
                                <div class="span12 id_card_main">
                                    <div class="id_card_area">
                                    	<div class="id-card-info-area">
                                    		<div class="school-title">
	                                          <p style="color: #000 !important;">Shikder Cadet Academy</p>
	                                    	</div>
                                    		<div class="id-st-info info id-st-info_p">
                                          <table class="backside_table">
                                            <?php $section = $this->db->query("SELECT SECTION_NAME FROM section WHERE SECTION_ID=".$get_record[0]->SECTION_ID)->row(); ?>
                      											<tr class="crs">
                                            <p class="clrs">Class : <?php echo $get_record[0]->CLASS_NAME .","; ?>Roll: <?php echo $get_record[0]->ROLL_NO .", "; ?>
                                                Section: <?php echo $section->SECTION_NAME .","; ?>
                                                Session : <?php echo $get_record[0]->YEAR; ?></p>
                                            </tr>
                                            <tr>
                                              <p class="sl">Father's Name : <?php echo $get_record[0]->FATHER_NAME; ?></p>
                                            </tr> 
                                            <tr>
                                              <p class="sl">Mother's Name : <?php echo $get_record[0]->MOTHER_NAME; ?></p>
                                            </tr>  
                                            <tr>
                                              <p class="sl">Phone &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $get_record[0]->PHONE; ?></p>
                                            </tr>
                                            <tr class="isbg">
                                              <p class="sl">&nbsp;&nbsp; &nbsp; Blood Group &nbsp; &nbsp; : <?php echo $get_record[0]->BLOOD_GROUP; ?></p>
                                            </tr> 
                                    		</table>
                                    		</div>
                                    		<div class="clear"></div>
                                    		<div class="id-address">
                                    			<p> &nbsp; &nbsp; &nbsp;Shikder mansion, Joynabari, Ghatail, Tangail 
                                    				<br>Email : sca2505700@gmail.com 
                                    				<br> <span>Mobile : 01711702635 , 01734279545</span>
                                    				<br>www.shikdercadetacademy.com
                                    			</p>
                                    		</div>
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