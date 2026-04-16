<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="single-teacher-info">
                    <h3>Teacher Information</h3>
                    <div class="col-md-4 col-lg-4">
                        <div class="teacher-img">
                            <div class="digi-pic-teach">
                                <img src="<?php echo $this->webspice->get_path('teacher').$teacher['TEACHER_ID'].'.jpg'; ?>"  alt="" class="img-responsive" />
                            </div>
                            <div class="tech-badge-1">
                                <img src="http://scholars.edu.bd/teacher/1/uploads/badge.png" width="90" height="90">
                            </div>
                            <div class="tech-name-2"><?php echo $teacher['TEACHER_NAME']; ?></div>
                            <div class="tech-post-3">
                                (<?php $desig = $this->db->get_where("designation", array("DESIGNATION_ID"=>$teacher['DESIGNATION_ID']))->row(); echo $desig->DESIGNATION_NAME; ?>)</div>
                            <div class="tech-school-4">Shahid Cadet School</div>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-8">
                        <div class="single-teacher-info-table">
                            <table>
                                <tbody>
                                    <tr>
                                        <td width="30%"><b>Name</b></td> <td>	<?php echo $teacher['TEACHER_NAME']; ?>	</td>	</tr>
                                    <tr>
                                        <td width="30%"><b>Post</b></td> <td>	<?php $desig = $this->db->get_where("designation", array("DESIGNATION_ID"=>$teacher['DESIGNATION_ID']))->row();echo $desig->DESIGNATION_NAME; ?> </td>	
                                    </tr>
                                    <tr>
                                        <td width="30%"><b>Gender</b></td> <td>	<?php echo $teacher['GENDER']; ?>	</td>	
                                    </tr>
                                    <tr>
                                        <td width="30%"><b>Religion</b></td> <td>	<?php echo $teacher['RELIGION']; ?>	</td>	
                                    </tr>
                                    <tr>
                                        <td width="30%"><b>Nationality:</b></td> <td>	Bangladeshi	</td>
                                    </tr>

                                    <tr>
                                        <td width="30%"><b>Qualification</b></td> <td><?php echo $teacher['EDUCATIONAL_BACK']; ?></td>	
                                    </tr>
                                    <tr>
                                        <td width="30%"><b>Mobile</b></td> <td>	<?php echo $teacher['PHONE']; ?></td>	
                                    </tr>
                                    <tr>
                                        <td><b>Email</b></td>
                                        <td> <?php echo $teacher['EMAIL']; ?></td> 
                                    </tr>

                                    <tr>
                                        <td width="30%"><b>Section</b></td> <td> <?php echo ucwords(str_replace('_',' ', $teacher['TEACHER_TYPE'])); ?>		</td>	</tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>