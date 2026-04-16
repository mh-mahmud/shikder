<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="routine-area">
                     <h3>Routine Class <?php echo $class_name; ?> (<?php echo $section_name; ?>)</h3>
                    <p>CLASS ROUTINE-2016</p>
                    <h5>Class <?php echo $class_name; ?> (<?php echo $section_name; ?>)</h5>

                              <!-- TABLE LISTING STARTS -->
                              <div class="tab-pane active" id="list">
                              <div class="panel-group joined" id="accordion-test-2">
                              <?php 
                              //$toggle = true;
                              //$classes = $this->db->get('class')->result_array();
                              //foreach($classes as $row):
                              ?>


                              <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion-test-2" href="#collapse<?php //echo $row['class_id'];?>">
                                        <i class="entypo-rss"></i> Class <?php echo $class_name; ?> (<?php echo $section_name; ?>)
                                    </a>
                                    </h4>
                                </div>

                                <div id="collapse<?php //echo $row['class_id'];?>" class="panel-collapse  <?php //if($toggle){echo 'in';$toggle=false;}?>">
                                    <div class="panel-body">
                                        <table cellpadding="0" cellspacing="0" border="0"  class="table table-bordered">
                                            <tbody>
                                              <?php
                                              // $ROUTINE = new Student_controller();
                                              for($d=1;$d<=7;$d++):

                                                if($d==1)$day='Sunday';
                                                else if($d==2)$day='Monday';
                                                else if($d==3)$day='Tuesday';
                                                else if($d==4)$day='Wednesday';
                                                else if($d==5)$day='Thursday';
                                                else if($d==6)$day='Friday';
                                                else if($d==7)$day='Saturday';
                                                ?>
                                                <tr class="gradeA">
                                                  <td width="100"><?php echo strtoupper($day);?></td>
                                                  <td>
                                                    <?php
                                                    // $this->db->order_by("ROUTINE_ID", "ASC");
                                                    $this->db->order_by("TIME_FROM", "DESC");
                                                    $this->db->where('DAY' , $day);
                                                    $this->db->where('SECTION_ID' , $section_id);
                                                    $routines = $this->db->get('class_routine')->result_array();
                                                    // dd($routines, true);
                                                    foreach($routines as $row2):
                                                    ?>
                                                      <div class="btn-group">
                                                        <button class="rbtn" data-toggle="dropdown">
                                                          <?php echo $this->webspice    ->subject_name($row2['SUBJECT_ID']);?>
                                                          <?php echo '('.$row2['TIME_FROM'].'-'.$row2['TIME_TO'].')';?>
                                                          <br />
                                                          <?php
                                                            $teacher = $this->db->query("SELECT TEACHER_NAME FROM teacher WHERE TEACHER_ID=".$row2['TEACHER_ID'])->row()->TEACHER_NAME;
                                                            echo $teacher;
                                                          ?>
                                                         
                                                        </button>
                                                        
                                                      </div>
                                                    <?php endforeach;?>

                                                  </td>
                                                </tr>
                                              <?php endfor;?>
                                                
                                            </tbody>
                                        </table>
                                        
                                    </div>
                                </div>
                              </div>
                              <?php
                              //endforeach;
                              ?>
                              </div>
                              </div>
                              <!-- TABLE LISTING ENDS -->
                    

                </div>
            </div>
        </div>
    </div>
</div>