<?php include(APPPATH."views/admin/admin_header.php"); ?>

  <style type="text/css">
    .progress_report h4{
        color: #f00;
    }

    .progress_report p{
        color: #f00;
    }

   .progress_report table{
        width: 100%;
        height: auto;
        text-align: center;
   }

   .progress_report table th{
        border: 1px solid #000;
   }

   .progress_report table td{
        border: 1px solid #000;
   }
    
  </style>

        <div class="container" id="wrapper">
            <div class="progress_report">
            		<h3>Shikder Cadet Academy's Result Sheet</h3>
            		<h4>Weekly / Model Test Examination's Result Sheet</h4>
            		<p>Exam Name : </p>
                    <p>Date Of Exam : </p>
                    <p>Total Number: 100 / 200</p>
                <table>
                    <thead>
                        <th>Serial No.</th>
                        <th>Student's Name</th>
                        <th>Student's ID No.</th>
                        <th Colspan="3">Number
                            <table>
                                <th>Subject</th>
                                <th>Total Number</th>
                                <th>Propto Number</th>
                            </table>
                        </th>
                        <th>Total Propto Number</th>
                        <th>Class Height's Number</th>
                        <th>Merit List</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td rowspan="10">Nipa Akhter</td>
                            <td rowspan="10">2452</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                            <td rowspan="10">780</td>
                            <td rowspan="10">54</td>
                            <td rowspan="10">1st</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>Bangla</td>
                            <td>100</td>
                            <td>80</td>
                        </tr>
                    </tbody>
                 </table>
            </div>
            
<?php include(APPPATH."views/admin/admin_footer.php"); ?>