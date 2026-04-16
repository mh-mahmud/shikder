<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
            	<h3>Academic Calender</h3>
				<style type="text/css">
				  .calendar {
				    font-family: Arial;
				    font-size: 12px;
				  }
				  table.calendar {
				    margin: auto;
				    border-collapse: collapse;
				  }

				  .calendar .trmonth{
				  	text-align: center;
				  	height: 40px;
				  }

				  .trmonth .monthnm{
				  	text-align: center;
				  }

				  .trmonth .monnxt{
				  	float: right;
				  }

				  .calendar .trheader{
				  	background-color: #ccc !important;
				  	text-align: center;
				  	height: 40px;
				  	border: 1px solid #000;
				  }

				  .calendar .trheader td{
				  	border-left: 1px solid #000;
				  }

				  .calendar .days td {
				    width: 80px;
				    height: 80px;
				    padding: 4px;
				    border: 1px solid #999;
				    vertical-align: top;
				    background-color: #DEF;
				  }
				  .calendar .highlight {
				    font-weight: bold;
				    color: #00f;
				  }
				  .calendar .days td:hover {
				    background-color: #FFF;
				  }
				</style>

        	<div class="container" id="wrapper">
	            <div id="page_my_calendar" class="row-fluid page_identifier">
	                <div class="span12" id="content">

	                         <!-- validation -->
	                        <div class="row-fluid">
	                             <!-- block -->
	                            <div class="block">
	                                <div class="block-content collapse in">
	                                    <div class="span12">
	                                      <div class="calendar_style">
	                                        <form method="post" action=""  enctype="multipart/form-data" id="" class="form-horizontal">

	                                            <input id="token" type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">

	                                            <?php echo $calendar; ?>

	                                        </form>
	                                      </div>

	                                    </div>
	                                </div>
	                            </div>
	                            <!-- /block -->
	                        </div>
	                         <!-- /validation -->
	                    </div>
	                </div>
	            </div>
            </div>
        </div>
    </div>
</div>