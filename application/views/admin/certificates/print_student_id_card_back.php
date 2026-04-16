<?php
$url_prefix = $this->webspice->settings()->site_url_prefix;
$site_url = $this->webspice->settings()->site_url;
$domain_name = $this->webspice->settings()->domain_name;
$total_column = 16;
$report_name = 'Student ID Card';

# don't edit the below area (csv)
if( $this->uri->segment(2)=='csv' ){
    $file_name = strtolower(str_replace(array('_',' '),'',$report_name)).'_'.date('Y_m_d_h_i').'.xls';
    header("Content-type: application/octet-stream");
    header("Content-Disposition: attachment; filename=".$file_name);
    header("Pragma: no-cache");
    header("Expires: 0");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ID Card</title>



    <?php if( $this->uri->segment(1)=='print_student_id_card_back'): ?>
        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/js/jquery-1.9.1.js"></script>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/bootstrap_3_2/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/bootstrap_3_2/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/admin/assets/styles.css"> 
        <script src="<?php echo $url_prefix; ?>global/js/bootstrap.min.js"></script>

        <!-- print plugin -->
        <script src="<?php echo $url_prefix; ?>global/js/jquery.jqprint.js"></script>

        <script type="text/javascript">
            $(document).ready(function(){
                $('#printArea').jqprint();
                $('#print_icon').click(function(){
                    $('#printArea').jqprint();
                });
            });
        </script>
    <?php endif; ?>
</head>

<body>
	
<!--<a id="print_icon" href="#">Print</a>-->

    
<div >
  <div class="container">
    <div class="marksheet_inner_wrapper_section">
		  <div id="printArea" class="id_card_main">
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
                                              <p class="sl"> &nbsp;&nbsp; &nbsp; Blood Group &nbsp; &nbsp; : <?php echo $get_record[0]->BLOOD_GROUP; ?></p>
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
</body>
</html>