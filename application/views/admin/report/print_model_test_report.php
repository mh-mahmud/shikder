<?php
$url_prefix = $this->webspice->settings()->site_url_prefix;
$site_url = $this->webspice->settings()->site_url;
$domain_name = $this->webspice->settings()->domain_name;
$total_column = 16;
$report_name = 'Model Test Report';

# don't edit the below area (csv)
if( $this->uri->segment(1)=='csv' ){
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
    <title><?php echo $report_name; ?></title>

    <?php if( $this->uri->segment(1)=='print_model_test_report'): ?>
        <script type="text/javascript" src="<?php echo $url_prefix; ?>global/js/jquery-1.9.1.js"></script>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/bootstrap_3_2/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo $url_prefix; ?>global/bootstrap_3_2/css/bootstrap-theme.min.css">

        <script src="<?php echo $url_prefix; ?>global/bootstrap_3_2/js/bootstrap.min.js"></script>

<style type="text/css">
  .mark-table{
    width: 100%;
    height: auto;
  }
  
  .mark-table table{
    text-align: center;
  }
  
  .mark-table table tr td{
    text-align: center;
  }
  
  .mark-table table tr td .child-table{
    width: 100%;
  }
  .mark-table table tr td .child-table tr td {
    width: 100%;
    border-bottom: 1px solid #bbb;
  }
  .mark-table table tr td .child-table tr td {
    border-left: none;
  }
  .marksheet-header {
    text-align: center;
    margin-bottom: 100px;
  }
  .mark-table {
   text-align: center; 
  }
</style>

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

<div id="printArea">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="<?php //echo $total_column; ?>">
                <div style="font-size:150%;"><?php //echo $domain_name; ?></div>
            </td>
        </tr>
    </table>

            <?php
              if(isset($students)) {
                $merit_list = $this->db->query("SELECT sd.STUDENT_DATA_ID, sd.STUDENT_ID, sd.ROLL_NO, m.`EXAM_ID`, SUM(m.`MARK_OBTAINED`) AS TOTAL_MARK FROM student_data AS sd INNER JOIN marks AS m ON m.`STUDENT_ID`=sd.STUDENT_DATA_ID WHERE m.`CLASS_ID`='".$class_id."' AND m.`EXAM_ID`='".$exam_id."' AND m.`YEAR`='".$year."' GROUP BY m.`STUDENT_ID` ORDER BY TOTAL_MARK DESC")->result_array();
                $hightest_mark = $merit_list[0]['TOTAL_MARK'];
                
                for($i=0; $i<count($merit_list); $i++) {
                  array_push($merit_list[$i], $i+1);
                }
              }
            ?>
          <div class="marksheet-header" style="text-align:center;margin-bottom:70px">
              <h2>Shikder Cadet Academy</h2>
                <p>Joynabari, Zhorka, Ghatail, Tangail</p>
                  <p>Office Phone: +88 01711702635</p>
          </div>


          <div class="mark-table">
            <table cellpadding="0" cellspacing="0" border="1" class="table table-striped table-bordered" id>
              

              <tr>
                <th>No</th>
                <th>Roll</th>
                <th>Name of Student</th>
                <th>Name of Subject</th>
                <th>Total Mark</th>
                <th>Obtained</th>
                <th>Total Obtained</th>
                <th>Highest Mark</th>
                <th>Position</th>
                <th>Remark</th>
              </tr>

              <?php
              $i=1;
              foreach($students as $stu) {

                $result = $this->db->query("SELECT s.SUBJECT_NAME, m.CLASS_ID, m.EXAM_ID, m.SECTION_ID, m.TOTAL_MARK, m.MARK_OBTAINED, m.STUDENT_ID, m.SUBJECT_ID, m.ROLL_NO, m.COMMENT FROM subject AS s LEFT JOIN marks AS m ON s.SUBJECT_ID = m.SUBJECT_ID WHERE m.STUDENT_ID='".$stu->STUDENT_DATA_ID."' AND m.EXAM_ID='".$exam_id."' AND m.CLASS_ID='".$class_id."' AND m.YEAR='".$year."' ORDER BY m.SUBJECT_ID")->result();
                // dd($result, true);

                ?>
                <tr>
                  <td><?php echo $i; ?></td>
                  <td><?php echo $stu->ROLL_NO; ?></td>
                  <td><?php echo $stu->NAME; ?></td>
                  <td>
                    <table class="child-table">
                      <?php foreach($result as $sub) : ?>
                        <tr><td><?php echo $sub->SUBJECT_NAME; ?></td></tr>
                      <?php endforeach; ?>
                    </table>
                  </td>
                  <td>
                    <table class="child-table">
                      <?php foreach($result as $total_mark) : ?>
                        <tr>
                          <td><?php echo $total_mark->TOTAL_MARK; ?></td>
                        </tr>
                      <?php endforeach; ?>
                    </table>
                  </td>
                  <td>
                    <table class="child-table">
                      <?php
                        $total_opt = array();
                        foreach($result as $opt) :
                          {
                            $total_opt[] = $opt->MARK_OBTAINED;
                          }
                          $total_obtained = array_sum($total_opt);
                      ?>
                        <tr><td><?php echo $opt->MARK_OBTAINED; ?></td></tr>
                      <?php endforeach; ?>
                    </table>
                  </td>
                  <td>
                    <?php
                      // $total_obtained = array_sum($total_opt);
                      echo $total_obtained;
                    ?>
                  </td>
                  <td><?php echo $hightest_mark; ?></td>
                  <?php
                    $sub_total = $total_obtained;
                    foreach ($merit_list as $merit) {
                      if( ($stu->STUDENT_DATA_ID==$merit['STUDENT_DATA_ID']) && ($sub_total==$merit['TOTAL_MARK']) ) {
                        echo "<td><span class='label label-success'>". $this->webspice->addOrdinalNumberSuffix($merit[0]) ."</span></td>";
                      }
                    }
                  ?>
                  <td>
                    <table class="child-table">
                      <?php foreach($result as $comm) : ?>
                        <tr><td><?php echo $comm->COMMENT; ?></td></tr>
                      <?php endforeach; ?>
                    </table>
                  </td>
                </tr>
              <?php $i++; } ?>


            </table>
          </div>




</div>
</body>
</html>