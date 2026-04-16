<?php include(APPPATH."views/admin/admin_header.php"); ?>

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
</style>

        <div class="container" id="wrapper">
            <div id="page_student_marksheet" class="row-fluid page_identifier">
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
                                          <b>Model Test Report</b>  
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
                                    <div class="muted pull-left">Model Test Report</div>
                                </div>
                                <div class="block-content collapse in">
                                  <div class="span12">
                                    <!-- BEGIN FORM-->


                                    <!-- setup total mark for merit positing -->
                                    <?php
                                      if(isset($students)) {
                                        $merit_list = $this->db->query("SELECT sd.STUDENT_DATA_ID, sd.STUDENT_ID, sd.ROLL_NO, m.`EXAM_ID`, SUM(m.`MARK_OBTAINED`) AS TOTAL_MARK FROM student_data AS sd INNER JOIN marks AS m ON m.`STUDENT_ID`=sd.STUDENT_DATA_ID WHERE m.`CLASS_ID`='".$class_id."' AND m.`EXAM_ID`='".$exam_id."' AND m.`YEAR`='".$year."' GROUP BY m.`STUDENT_ID` ORDER BY TOTAL_MARK DESC")->result_array();
                                        $hightest_mark = $merit_list[0]['TOTAL_MARK'];
                                        
                                        for($i=0; $i<count($merit_list); $i++) {
                                          array_push($merit_list[$i], $i+1);
                                        }
                                      }

                                      // dd($merit_list);


                                    ?>




                                    <form method="post" action=""  enctype="multipart/form-data" id="" class="form-horizontal">

                                        <input id="token" type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                        <fieldset>
                                               <table cellpadding="0" cellspacing="0" border="0" class="table table-striped">
                                                  <tr>
                                                      <th>Class Name</th>
                                                      <th>Exam Name</th>
                                                      <th>Year</th>
                                                      <th>Action</th>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                        <select id="class_list" class="span12 m-wrap" name="class_id" required>
                                                          <option value="">Select...</option>
                                                          <?php
                                                            $options = $this->db->query("SELECT CLASS_ID, CLASS_NAME FROM class WHERE STATUS = 7")->result();
                                                          ?>
                                                          <?php foreach($options as $option) : ?>
                                                            <option value="<?php echo $option->CLASS_ID?>" <?php echo (isset($edit['CLASS_ID']) && $edit['CLASS_ID'] == $option->CLASS_ID) ? "selected" : ""; ?> ><?php echo $option->CLASS_NAME ?></option>
                                                          <?php endforeach; ?>
                                                        </select>
                                                      </td>

                                                      <td>
                                                        <div class="control-group">
                                                          <!-- <div class="controls"> -->
                                                            <select required class="span12 m-wrap" name="exam_id">
                                                              <option value="">Select...</option>
                                                              <?php
                                                                $options = $this->db->query("SELECT * FROM exam WHERE STATUS =7")->result();
                                                              ?>
                                                              <?php foreach($options as $option) : ?>
                                                                <option value="<?php echo $option->EXAM_ID;?>"><?php echo $option->EXAM_NAME; ?></option>
                                                              <?php endforeach; ?>
                                                            </select>
                                                            <span class="fred"><?php //echo form_error('exam_id'); ?></span>
                                                          <!-- </div> -->
                                                        </div>
                                                      </td>

                                                      <td>
                                                        <select name="year" class="form-control">
                                                          <?php
                                                              $year = date("Y");
                                                           for($i=2015;$i<=2020;$i++):?>
                                                              <option value="<?php echo $i;?>"
                                                                  <?php if(isset($year) && $year==$i)echo 'selected="selected"';?>>
                                                                      <?php echo $i;?>
                                                              </option>
                                                            <?php endfor;?>
                                                        </select>
                                                      </td>
                                                      <td>
                                                          <input type="submit" name="filter" class="btn btn-primary" value="Submit Data"  />
                                                      </td>
                                                  </tr>
                                                </table>

                                                  <div style="margin-top: 100px;"></div>

                                                  <!-- here will goes alert message -->
                                                  <?php if(isset($has_data_err)) : ?>
                                                    <div class="alert alert-danger">
                                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                        <h4>Failed</h4>
                                                        <?php echo $has_data_err; ?>
                                                    </div>
                                                  <?php endif; ?>
                                                  <!-- alert message end -->

                                                  <?php /*$stu_name_cls = new Settings_controller();*/ if(isset($subjects)) : ?>

                                                  <div style="margin-top: 20px;"></div>
                                                    <?php
                                                    /*$res = $this->db->query("SELECT m.CLASS_ID, m.SECTION_ID, c.CLASS_ID, c.CLASS_NAME, s.SECTION_ID, s.SECTION_NAME FROM marks AS m INNER JOIN class AS c ON c.CLASS_ID = m.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID WHERE m.CLASS_ID='".$class_id."'")->result();*/
                                                     ?>
                                                    <table>
                                                        <tr>
                                                          <td><a target="_blank" class="btn btn-danger" href="<?php echo $url_prefix; ?>print_model_test_report/<?php echo $class_id; ?>/<?php echo $exam_id; ?>/<?php echo $year; ?>">Print Report</a></td>
                                                        </tr>
                                                        <tr>
                                                          <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td><p>Class Name : </p></td>
                                                          <td><p><?php echo $class_name; ?></p></td>
                                                        </tr>
                                                        <tr>
                                                            <td><p>Exam Name : </p></td>
                                                          <td><p><?php echo $exam_name; ?></p></td>
                                                        </tr>
                                                    </table>
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
                                                 <?php else: ?>
                                                  <!-- data nai vai -->
                                                <?php endif; ?>
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