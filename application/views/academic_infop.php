<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="layoutpost">
                    <h3>Academic Information</h3>
                    <h5 class="eiin">EIIN NO: 133717 School Code: 1760 College Code: 1499</h5>
                    <h3>Academic Plan</h3>
                    <h4>Exam System</h4>
                    <p>There are six examinations in an academic year. Every 2 months there will be an examination, which covers instruction, examination, grading, results and a break.</p>
                    <h4>Academic Calendar</h4>
                    <p>The academic system of SS&C follows the academic calendar as follows:</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name of the Examination</th>
                                <th>Probable Date of Examination</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($exam as $v): ?>
                            <tr>
                                <td><?php echo $v->EXAM_NAME; ?></td>
                                <td><?php $date = $v->EXAM_DATE;
                                        $month_name = ucfirst(strftime("%d %B", strtotime($date)));
                                        echo $month_name;
                                       ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <h4>Evaluation System</h4>
                    <p>The evaluation is based on:</p>
                    <ol type="1">
                        <li>The annual examination</li>
                        <li>Half Yearly examination</li>
                        <li>Four monthly tests</li>
                        <li>Assignments or Home Work.</li>
                    </ol> 
                    <p>The exact distribution of marks may vary from course to course.</p>
                    <h4>Letter Grading</h4>
                    <p>The following letter grading is used:</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Marks Obtained(Out of 100)</th>
                                <th>Letter Grade</th>
                                <th>Grade Point Equivalent</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($grade as $v): ?>
                            <tr>
                                <td><?php echo $v->MARK_FROM . "-".$v->MARK_UPTO; ?></td>
                                <td><?php echo $v->GRADE_NAME; ?></td>
                                <td>
                                    <?php if($v->MARK_FROM >=80 && $v->MARK_FROM <= 99){
                                            echo "5.00";
                                        } elseif($v->MARK_FROM >=70 && $v->MARK_FROM <= 79){
                                            echo "4.00";
                                        }elseif($v->MARK_FROM >=60 && $v->MARK_FROM <= 69){
                                            echo "3.50";
                                        }elseif($v->MARK_FROM >=50 && $v->MARK_FROM <= 59){
                                            echo "3.00";
                                        }elseif($v->MARK_FROM >=40 && $v->MARK_FROM <= 49){
                                            echo "2.00";
                                        }elseif($v->MARK_FROM >=33 && $v->MARK_FROM <= 39){
                                            echo "1.00";
                                        }elseif($v->MARK_FROM >=00 && $v->MARK_FROM <= 32){
                                            echo "0.00";
                                        }
                                ?>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
   
                </div>
            </div>
        </div>
    </div>
</div>