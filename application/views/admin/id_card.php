<?php include(APPPATH."views/admin/admin_header.php"); ?>

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
                            <div class="block-content collapse in">
                                <div class="span12 id_card_main">
                                    <div class="id_card_area">
                                    	<div class="id-card-left-area">
                                    		<p>S <br/> t <br/>u <br/>d <br/>e <br/>n <br/>t</p>
                                    	</div>
                                    	<div class="id-card-info-area">
                                    		<div class="id-img-area">
                                    			<img class="id-img" src="<?php echo $url_prefix; ?>global/assets/images/id_logo.jpg">
                                    			<img class="id-chip" src="<?php echo $url_prefix; ?>global/assets/images/chip.jpg">
                                    		</div>
                                    		<div class="school-title">
                                    			<p>Shikder Cadet Academy</p>
                                    		</div>
                                    		<div class="id-student-img">
                                    			<img src="<?php echo $url_prefix; ?>global/assets/images/id-st-1.jpg" alt="student img">
                                    		</div>
                                    		<div class="id-st-info">
                                    			<table>
                                    				<tr>
                                    					<td class="il">Student Id : &nbsp;</td>
                                    					<td class="ir">2016001</td>
                                    				</tr>	
                                    				<tr>
                                    					<td class="il">Student Name : &nbsp;</td>
                                    					<td>XYZ Akhter</td>
                                    				</tr>	
                                    				<tr>
                                    					<td class="il">Father/Guardan : &nbsp;</td>
                                    					<td>Eliyas Husain</td>
                                    				</tr>	
                                    				<tr>
                                    					<td class="il">Class : &nbsp;</td>
                                    					<td>XI</td>
                                    				</tr>	
                                    				<tr>
                                    					<td class="il">Blood Group : &nbsp;</td>
                                    					<td>A+</td>
                                    				</tr>	
                                    				<tr>
                                    					<td class="il">Emergency Cell : &nbsp;</td>
                                    					<td>01744724905</td>
                                    				</tr>	
                                    			</table>
                                    		</div>
                                    		<div class="issuing">
                                    			<p>Issuing Authority</p>
                                    		</div>
                                    		<div class="clear"></div>
                                    		<div class="id-address">
                                    			<p>Joinabari, Ghatail, Tangail <br> <span>Mobile : 01711702635/01734279545</span>
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