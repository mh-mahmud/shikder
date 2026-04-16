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



    <?php if( $this->uri->segment(1)=='print_student_id_card'): ?>
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
                <img src="<?php echo $url_prefix; ?>global/assets/images/id_front_back.jpg" id="my-bg">
            	<div class="id-card-info-area">
            		<div class="id-img-area">
                      <img class="id-img" src="<?php echo $url_prefix; ?>global/assets/images/id_logo.jpg">
                        </div>
                        <div class="school-title">
                      <p style="color: #4094D4 !important;">Shikder Cadet Academy</p>
                    </div>
            		<div class="id-student-img">
            			<?php if( file_exists($this->webspice->get_path('student_full').$get_record[0]->STUDENT_ID.'.jpg') ): ?>
                              <img src="<?php echo $this->webspice->get_path('student').$get_record[0]->STUDENT_ID.'.jpg'; ?>"  alt="" class="img-responsive" width="100px;"/>
                          <?php endif;  ?>
            		</div>
            		<div class="id-st-info">
            			<table class="frontsidetable">
            				<tr class="ispd">
            					<p style="color: #000 !important;" class="cl">Name :<?php echo $get_record[0]->NAME; ?></p>
            				</tr>		
                            <tr>
                                <p style="color: #000 !important;" class="cl">Student Id :&nbsp; <?php echo $get_record[0]->PUBLIC_ID; ?></p>
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
</body>
</html>