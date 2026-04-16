<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <h3>Student info</h3>
                <div id="student-info-table">
                    <table width="459" border="0">
                        <tbody>
                           
                            <tr>
                                <td><strong>Class</strong></td>
                                <td style="text-align: center;"><strong>Section</strong></td>
                                <td style="text-align: center;"><strong>Total Student</strong></td>
                            </tr>
                             <?php foreach ($class as $v): ?>
                            <tr>
                                <td><?php echo $v->CLASS_NAME; ?></td>
                                <td style="text-align: center;">
                                    <?php $section = $this->db->get_where("section", array("CLASS_ID"=>$v->CLASS_ID))->result();
                                        echo count($section);
                                    ?>
                                </td>
                                <td style="text-align: center;">
                                    <?php $student = $this->db->get_where("student_data", array("CLASS_ID"=>$v->CLASS_ID))->result();
                                        echo count($student);
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