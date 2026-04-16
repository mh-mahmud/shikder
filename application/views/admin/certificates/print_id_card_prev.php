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
            	<div style="background-color: #0071BD;" class="id-card-left-area">
            		<p>S <br/> t <br/>u <br/>d <br/>e <br/>n <br/>t <br/></p>
            	</div>
            	<div class="id-card-info-area">
            		<div class="id-img-area">
            			
            		</div>
            		<div class="school-title">
            			<img class="id-img" src="<?php echo $url_prefix; ?>global/assets/images/id_logo.jpg"><p>Shikder Cadet Academy</p>
            		</div>
            		<div class="id-student-img">
            			<?php if( file_exists($this->webspice->get_path('student_full').$get_record[0]->STUDENT_ID.'.jpg') ): ?>
                              <img src="<?php echo $this->webspice->get_path('student').$get_record[0]->STUDENT_ID.'.jpg'; ?>"  alt="" class="img-responsive" width="100px;"/>
                          <?php endif;  ?>
            		</div>
            		<div class="id-st-info">
            			<table>
            				<tr>
            					<td class="cl">Student Id : &nbsp;</td>
            					<td><?php echo $get_record[0]->PUBLIC_ID; ?></td>
            				</tr>	
            				<tr>
            					<td class="cl">Name : &nbsp;</td>
            					<td><?php echo $get_record[0]->NAME; ?></td>
            				</tr>	
            				<tr>
            					<td class="cl">Father : &nbsp;</td>
            					<td class="fl"><?php echo $get_record[0]->FATHER_NAME; ?></td>
            				</tr>	
            				<tr>
            					<td class="cl">Class : &nbsp;</td>
            					<td><?php echo $get_record[0]->CLASS_NAME; ?></td>
            				</tr>	
            				<tr>
            					<td class="cl">Blood Group : &nbsp;</td>
            					<td><?php echo $get_record[0]->BLOOD_GROUP; ?></td>
            				</tr>	
            				<tr>
            					<td class="il">Cell Number : &nbsp;</td>
            					<td><?php echo $get_record[0]->PHONE; ?></td>
            				</tr>	
            			</table>
            		</div>
            		<div class="issuing">
                  <img src="<?php echo $url_prefix; ?>global/assets/images/signature.jpg">
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
</body>
</html>