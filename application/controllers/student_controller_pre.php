<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student_controller extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
	}

	public function add_student_info($data=null) {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'add_person');
		$this->webspice->permission_verify('add_person');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'STUDENT_ID'=>null,
				'NAME'=>null,
				'BIRTHDAY'=>null,
				'GENDER'=>null,
				'RELIGION'=>null,
				'BLOOD_GROUP'=>null,
				'AGE'=>null,
				'ADDRESS'=>null,
				'PHONE'=>null,
				'EMAIL'=>null,
				'FATHER_NAME'=>null,
				'MOTHER_NAME'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name','name','required|trim|xss_clean');
		$this->form_validation->set_rules('birthday','birthday','required|trim|xss_clean');
		$this->form_validation->set_rules('gender','gender','required|trim|xss_clean');
		$this->form_validation->set_rules('religion','religion','required|trim|xss_clean');
		$this->form_validation->set_rules('blood_group','blood group','required|trim|xss_clean');
		$this->form_validation->set_rules('age','age','required|trim|xss_clean');
		$this->form_validation->set_rules('address','address','required|trim|xss_clean');
		$this->form_validation->set_rules('phone','phone','trim|xss_clean');
		$this->form_validation->set_rules('email','email','trim|xss_clean');
		$this->form_validation->set_rules('father_name','father name','required|trim|xss_clean');
		$this->form_validation->set_rules('mother_name','mother name','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/add_student_info', $data);
			return FALSE;
		}

		// dd($_FILES);

		# get input post
		$input = $this->webspice->get_input('student_id');
		// dd($input);
		
		#duplicate test
		$this->webspice->db_field_duplicate_test("SELECT * FROM student_info WHERE NAME=? AND AGE=? AND GENDER=? AND BIRTHDAY=?", array($input->name, $input->age, $input->gender, $input->birthday), 'You are not allowed to enter duplicate student', 'STUDENT_ID', $input->student_id, $data, 'admin/add_student_info');
		
		# remove cache
		$this->webspice->remove_cache('student_info');

		# verify file type
		if( $_FILES['images']['tmp_name'] ){
			$this->webspice->check_file_type(array('jpg', 'jpeg', 'png', 'gif', 'bmp'), 'images', $data, 'admin/add_student_info');
		}

		$current_year = date("Y");
		$last_word = substr($input->name, -1, 1);
		$id_no = $this->db->query("SELECT STUDENT_ID FROM student_info ORDER BY STUDENT_ID DESC LIMIT 1")->row()->STUDENT_ID;
		$id_no = ++$id_no;
		$public_id = $current_year . $last_word . $id_no;
		// dd($public_id);

		# update process
		if( $input->student_id ){

			$sql = "
			UPDATE student_info SET NAME=?, BIRTHDAY=?, GENDER=?, RELIGION=?, BLOOD_GROUP=?, AGE=?, ADDRESS=?, PHONE=?, EMAIL=?, FATHER_NAME=?, MOTHER_NAME=?, UPDATED_BY=?,UPDATED_DATE=?
			WHERE STUDENT_ID=?";
			$this->db->query($sql, array($input->name, date("Y-m-d", strtotime($input->birthday)), $input->gender, $input->religion, $input->blood_group, $input->age, $input->address, $input->phone, $input->email, $input->father_name, $input->mother_name, $this->webspice->get_user_id(), $this->webspice->now(), $input->student_id));
			$this->webspice->process_image_single('images',$input->student_id, 'student_full', 750, 1000);
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('student_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'manage_student_info');
			return false;
		}
		
		#insert person
		$sql = "
		INSERT INTO student_info
		(NAME, BIRTHDAY, GENDER, RELIGION, BLOOD_GROUP, AGE, ADDRESS, PHONE, EMAIL, FATHER_NAME, MOTHER_NAME, PUBLIC_ID, CREATED_BY, CREATED_DATE, STATUS)
		VALUES
		( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 7 )";
		$this->db->query($sql, array($input->name, date("Y-m-d", strtotime($input->birthday)), $input->gender, $input->religion, $input->blood_group, $input->age, $input->address, $input->phone, $input->email, $input->father_name, $input->mother_name, $public_id, $this->webspice->get_user_id(), $this->webspice->now()));
		$this->webspice->process_image_single('images',$this->db->insert_id(), 'student_full', 750, 1000);

		if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('manage_student_info',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'manage_student_info');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'add_student_info');

	}

	public function manage_student_info() {
		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_student_info');
		$this->webspice->permission_verify('manage_student_info');

		// dd("Hello World");

		$this->load->database();
		$orderby = 'ORDER BY student_info.NAME ASC';
		$groupby = null;
		$where = '';
		$page_index = 0;
		$no_of_record = 200000000000;
		$limit = ' LIMIT '.$no_of_record;
		$filter_by = 'Last Created';
		$data['pager'] = null;
		$criteria = $this->uri->segment(2);
		$key = $this->uri->segment(3);
		if ($criteria == 'page') {
			$page_index = (int)$key;
			$page_index < 0 ? $page_index=0 : $page_index=$page_index;
		}

		$initialSQL = "
		SELECT  * FROM student_info	";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'student_info',
				$InputField = array(),
				$Keyword = array('NAME'),
				$AdditionalWhere = null,
				$DateBetween = null
			);

			$result['where'] ? $where = $result['where'] : $where=$where;
			$result['filter'] ? $filter_by = $result['filter'] : $filter_by=$filter_by;
		}

		# action area
		switch ($criteria) {
			case 'print':
			case 'csv':

				if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
					$_SESSION['sql'] = $initialSQL . $where . $orderby;
					$_SESSION['filter_by'] = $filter_by;
				}

				$record = $this->db->query( substr($_SESSION['sql'], 0, stripos($_SESSION['sql'],'LIMIT')) );
				$data['get_record'] = $record->result();
				$data['filter_by'] = $_SESSION['filter_by'];
				// dd($data);
				$this->load->view('admin/print_report/student/print_student_info',$data);
				return false;
			break;

			case 'pdf':
				if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
					$_SESSION['sql'] = $initialSQL . $where . $orderby;
					$_SESSION['filter_by'] = $filter_by;
				}

				$record = $this->db->query( substr($_SESSION['sql'], 0, stripos($_SESSION['sql'],'LIMIT')) );
				$data['get_record'] = $record->result();
				$data['filter_by'] = $_SESSION['filter_by'];
				// dd($data);
				$rand = substr( md5(rand()), 0, 15);
				// dd($rand);
				$pdfFilePath = "$rand.pdf";
				$html = $this->load->view('admin/print_report/student/print_student_info', $data, true);
				$this->load->library('pdf');
				$pdf = $this->pdf->load();
				$pdf->SetFooter($_SERVER['HTTP_HOST'].'|{PAGENO}|'.date(DATE_RFC822));
				$pdf->WriteHTML($html); // write the HTML into the PDF
				$pdf->Output($pdfFilePath, 'D');
				// dd($pdfFilePath);

				return false;
			break;

			case 'edit':
				$this->webspice->edit_generator($TableName='student_info', $KeyField='STUDENT_ID', $key, $RedirectController='student_controller', $RedirectFunction='add_student_info', $PermissionName='manage_student_info', $StatusCheck=null, $Log='edit_person');
				return false;
				break;
			case 'update':
				$id = $this->uri->segment(3);
				$id2 = $this->uri->segment(4);
				$id3 = $this->uri->segment(5);
				$data = $this->db->query($id . " " . $id2 . " " . $id3);
				if($data) { echo "Just for test purpose";}
				return false;
				break;
			case 'inactive':
				$this->webspice->action_executer($TableName='student_info', $KeyField='STUDENT_ID', $key, $RedirectURL='manage_student_info', $PermissionName='manage_student_info', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='student_info', $Log='inactive_student');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='student_info', $KeyField='STUDENT_ID', $key, $RedirectURL='manage_student_info', $PermissionName='manage_student_info', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='student_info', $Log='active_student');
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM student_info WHERE STUDENT_ID='".$id."' LIMIT 1");
				if(!unlink($this->webspice->get_path('student_full').$id.'.jpg')) {
					die($this->webspice->get_path('student_full').$id.'.jpg');
				}
				if($sql) {
					$this->webspice->force_redirect($url_prefix.'manage_student_info');
				}
				return false;
			break;
		}

		# default
		$sql = $initialSQL . $where . $groupby . $orderby . $limit;

		# only for pager
		if( $criteria == 'page' ){
			if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
				$sql = $sql;
			}
			$limit = sprintf("LIMIT %d, %d", $page_index, $no_of_record);		# this is to avoid SQL Injection
			$sql = substr($_SESSION['sql'], 0, strpos($_SESSION['sql'],'LIMIT'));
			$sql = $sql . $limit;
		}

		# load all records
		if( !$this->input->post('filter') ){
			$count_data = $this->db->query( substr($sql,0,strpos($sql,'LIMIT')) );
			$count_data = $count_data->result();
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_student_info/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;

		$this->load->view('admin/manage_student_info', $data);
	}

	public function admit_student($data=null) {

		// dd(date("Y"));

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'admit_student');
		$this->webspice->permission_verify('admit_student');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'STUDENT_DATA_ID'=>null,
				'STUDENT_ID'=>null,
				'PUBLIC_ID'=>null,
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
				'ROLL_NO'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('student_id','student name','required|trim|xss_clean');
		$this->form_validation->set_rules('class_id','class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id','section name','required|trim|xss_clean');
		$this->form_validation->set_rules('roll_no','roll no','required|trim|xss_clean');
		if( !$this->form_validation->run() ){
			$this->load->view('admin/admit_student', $data);
			return FALSE;
		}

		// dd($_FILES);

		# get input post
		$input = $this->webspice->get_input('student_data_id');
		// dd($input);
		
		#duplicate test
		$this->webspice->db_field_duplicate_test("SELECT * FROM student_data WHERE STUDENT_ID=? AND YEAR=?", array($input->student_id, date("Y")), 'You are not allowed to admit a student twice', 'STUDENT_DATA_ID', $input->student_data_id, $data, 'admin/admit_student');
		
		# remove cache
		$this->webspice->remove_cache('student_data');

		$y = date("Y");
		$r = $input->roll_no;
		$pid = $y ."000" + $r;
		//dd($pid);
		//die();

		# update process
		if( $input->student_data_id ){

			$sql = "
			UPDATE student_data SET STUDENT_ID=?, PUBLIC_ID=?, CLASS_ID=?, SECTION_ID=?, ROLL_NO=?, UPDATED_BY=?,UPDATED_DATE=?
			WHERE STUDENT_DATA_ID=?";
			$this->db->query($sql, array($input->student_id, $pid, $input->class_id, $input->section_id, $input->roll_no, $this->webspice->get_user_id(), $this->webspice->now(), $input->student_data_id));
			
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('student_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'manage_student_admission');
			return false;
		}

		$public_id = $this->db->query("SELECT PUBLIC_ID FROM student_info WHERE STUDENT_ID=".$input->student_id)->row()->PUBLIC_ID;
		
		#insert person
		$sql = "
		INSERT INTO student_data
		(STUDENT_ID, PUBLIC_ID, YEAR, CLASS_ID, SECTION_ID, ROLL_NO, CREATED_BY, CREATED_DATE, STATUS)
		VALUES
		( ?, ?, ?, ?, ?, ?, ?, ?, 7 )";
		$this->db->query($sql, array($input->student_id, $pid, date("Y"), $input->class_id, $input->section_id, $input->roll_no, $this->webspice->get_user_id(), $this->webspice->now()));

		if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('manage_student_admission',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'manage_student_admission');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'admit_student');

	}

	public function manage_student_admission() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_student_admission');
		$this->webspice->permission_verify('manage_student_admission');

		// dd("Hello World");

		$this->load->database();
		$orderby = 'ORDER BY student_data.STUDENT_ID DESC';
		$groupby = null;
		$where = '';
		$page_index = 0;
		$no_of_record = 20000000000;
		$limit = ' LIMIT '.$no_of_record;
		$filter_by = 'Last Created';
		$data['pager'] = null;
		$criteria = $this->uri->segment(2);
		$key = $this->uri->segment(3);
		if ($criteria == 'page') {
			$page_index = (int)$key;
			$page_index < 0 ? $page_index=0 : $page_index=$page_index;
		}

		$initialSQL = "
		SELECT  * FROM student_data	";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'student_data',
				$InputField = array(),
				$Keyword = array('STUDENT_ID'),
				$AdditionalWhere = null,
				$DateBetween = null
			);

			$result['where'] ? $where = $result['where'] : $where=$where;
			$result['filter'] ? $filter_by = $result['filter'] : $filter_by=$filter_by;
		}

		# action area
		switch ($criteria) {
			case 'print':
			case 'csv':
				if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
					$_SESSION['sql'] = $initialSQL . $where . $orderby;
					$_SESSION['filter_by'] = $filter_by;
				}

				$record = $this->db->query( substr($_SESSION['sql'], 0, stripos($_SESSION['sql'],'LIMIT')) );
				$data['get_record'] = $record->result();
				$data['filter_by'] = $_SESSION['filter_by'];

				$this->load->view('report/print_person',$data);
				return false;
				break;

			case 'edit':
				$this->webspice->edit_generator($TableName='student_data', $KeyField='STUDENT_DATA_ID', $key, $RedirectController='student_controller', $RedirectFunction='admit_student', $PermissionName='manage_student_admission', $StatusCheck=null, $Log='edit_student_data');
				return false;
				break;
			case 'update':
				$id = $this->uri->segment(3);
				$id2 = $this->uri->segment(4);
				$id3 = $this->uri->segment(5);
				$data = $this->db->query($id . " " . $id2 . " " . $id3);
				if($data) { echo "Just for test purpose";}
				return false;
				break;
			case 'inactive':
				$this->webspice->action_executer($TableName='student_data', $KeyField='STUDENT_DATA_ID', $key, $RedirectURL='manage_student_admission', $PermissionName='manage_student_admission', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='student_data', $Log='inactive_student_data');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='student_data', $KeyField='STUDENT_DATA_ID', $key, $RedirectURL='manage_student_admission', $PermissionName='manage_student_admission', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='student_data', $Log='active_student_data');
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM student_data WHERE STUDENT_DATA_ID='".$id."' LIMIT 1");
				$this->webspice->force_redirect($url_prefix.'manage_student_admission');
				// if(!unlink($this->webspice->get_path('student_full').$id.'.jpg')) {
				// 	die($this->webspice->get_path('student_full').$id.'.jpg');
				// }
				// if($sql) {
				// 	$this->webspice->force_redirect($url_prefix.'manage_student_admission');
				// }
				return false;
			break;

			case 'class':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$data = array();
				$data['get_record'] = $this->db->query("SELECT si.STUDENT_ID, si.NAME, si.PHONE, si.AGE, sd.STUDENT_DATA_ID, sd.ROLL_NO, sd.YEAR, sd.PUBLIC_ID, sd.CREATED_DATE, sd.CREATED_BY, sd.STATUS, c.CLASS_NAME, s.SECTION_NAME FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID = sd.STUDENT_ID INNER JOIN class AS c ON sd.CLASS_ID = c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID = sd.SECTION_ID WHERE c.CLASS_ID=" . $id)->result();
				$data['class_name'] = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID=".$id)->row()->CLASS_NAME;
				$this->load->view("admin/class_wise_student", $data);
				return false;
			break;
		}

		# default
		$sql = $initialSQL . $where . $groupby . $orderby . $limit;

		# only for pager
		if( $criteria == 'page' ){
			if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
				$sql = $sql;
			}
			$limit = sprintf("LIMIT %d, %d", $page_index, $no_of_record);		# this is to avoid SQL Injection
			$sql = substr($_SESSION['sql'], 0, strpos($_SESSION['sql'],'LIMIT'));
			$sql = $sql . $limit;
		}

		# load all records
		if( !$this->input->post('filter') ){
			$count_data = $this->db->query( substr($sql,0,strpos($sql,'LIMIT')) );
			$count_data = $count_data->result();
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_student_admission/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;

		$this->load->view('admin/manage_student_admission', $data);

	}
	
	public function manage_student_admission_csv(){
		$id = $this->uri->segment(2);
		$data = array();
		$data['get_record'] = $this->db->query("SELECT si.STUDENT_ID, si.NAME, si.PHONE, si.AGE, sd.STUDENT_DATA_ID, sd.ROLL_NO, sd.YEAR, sd.PUBLIC_ID, sd.CREATED_DATE, sd.CREATED_BY, sd.STATUS, c.CLASS_NAME, s.SECTION_NAME FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID = sd.STUDENT_ID INNER JOIN class AS c ON sd.CLASS_ID = c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID = sd.SECTION_ID WHERE c.CLASS_ID='". $id."'")->result();
		$data['class_name'] = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID=".$id)->row()->CLASS_NAME;
		$data['filter_by'] = $_SESSION['filter_by'];
		$this->load->view('admin/print_report/student/print_student_admission',$data);
		return false;
	}

	public function create_class_routine($data=null) {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'create_class_routine');
		$this->webspice->permission_verify('create_class_routine');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'ROUTINE_ID'=>null,
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
				'SUBJECT_ID'=>null,
				'TEACHER_ID'=>null,
				'DAY'=>null,
				'TIME_FROM'=>null,
				'TIME_TO'=>null,
				'YEAR' => null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('class_id','class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id','section name','required|trim|xss_clean');
		$this->form_validation->set_rules('subject_id','subject name','required|trim|xss_clean');
		$this->form_validation->set_rules('teacher_id','teacher name','required|trim|xss_clean');
		$this->form_validation->set_rules('day','day','required|trim|xss_clean');
		$this->form_validation->set_rules('time_from','time from','required|trim|xss_clean');
		$this->form_validation->set_rules('time_to','time to','required|trim|xss_clean');
		if( !$this->form_validation->run() ){
			$this->load->view('admin/create_class_routine', $data);
			return FALSE;
		}

		// dd($_FILES);

		# get input post
		$input = $this->webspice->get_input('routine_id');
		// dd($input);
		
		#duplicate test
		$this->webspice->db_field_duplicate_test("SELECT * FROM class_routine WHERE CLASS_ID=? AND SECTION_ID=? AND SUBJECT_ID=? AND DAY=?", array($input->class_id, $input->section_id, $input->subject_id, $input->day), 'You are not allowed to add a duplicate routine', 'ROUTINE_ID', $input->routine_id, $data, 'admin/create_class_routine');
		
		# remove cache
		$this->webspice->remove_cache('class_routine');

		# update process
		if( $input->routine_id ){

			$sql = "
			UPDATE class_routine SET CLASS_ID=?, SECTION_ID=?, SUBJECT_ID=?, TEACHER_ID=?, DAY=?, TIME_FROM=?, TIME_TO=?, UPDATED_BY=?,UPDATED_DATE=?
			WHERE ROUTINE_ID=?";
			$this->db->query($sql, array($input->class_id, $input->section_id, $input->subject_id, $input->teacher_id, $input->day, $input->time_from, $input->time_to, $this->webspice->get_user_id(), $this->webspice->now(), $input->routine_id));
			
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('routine_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'manage_class_routine');
			return false;
		}
		
		#insert person
		$sql = "
		INSERT INTO class_routine
		(CLASS_ID, SECTION_ID, SUBJECT_ID, TEACHER_ID, DAY, TIME_FROM, TIME_TO, YEAR, CREATED_BY, CREATED_DATE, STATUS)
		VALUES
		( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 7 )";
		$this->db->query($sql, array($input->class_id, $input->section_id, $input->subject_id, $input->teacher_id, $input->day, $input->time_from, $input->time_to, date("Y"), $this->webspice->get_user_id(), $this->webspice->now()));

		if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('manage_class_routine',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'manage_class_routine');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'create_class_routine');

	}

	public function manage_class_routine() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_class_routine');
		$this->webspice->permission_verify('manage_student_admission');

		// dd("Hello World");

		$this->load->database();
		$orderby = 'ORDER BY class_routine.ROUTINE_ID DESC';
		$groupby = ' GROUP BY class_routine.SECTION_ID ';
		$where = '';
		$page_index = 0;
		$no_of_record = 20;
		$limit = ' LIMIT '.$no_of_record;
		$filter_by = 'Last Created';
		$data['pager'] = null;
		$criteria = $this->uri->segment(2);
		$key = $this->uri->segment(3);
		if ($criteria == 'page') {
			$page_index = (int)$key;
			$page_index < 0 ? $page_index=0 : $page_index=$page_index;
		}

		$initialSQL = "
		SELECT  * FROM class_routine	";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'class_routine',
				$InputField = array(),
				$Keyword = array('ROUTINE_ID'),
				$AdditionalWhere = null,
				$DateBetween = null
			);

			$result['where'] ? $where = $result['where'] : $where=$where;
			$result['filter'] ? $filter_by = $result['filter'] : $filter_by=$filter_by;
		}

		# action area
		switch ($criteria) {
			case 'print':
			case 'csv':
				if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
					$_SESSION['sql'] = $initialSQL . $where . $orderby;
					$_SESSION['filter_by'] = $filter_by;
				}

				$record = $this->db->query( substr($_SESSION['sql'], 0, stripos($_SESSION['sql'],'LIMIT')) );
				$data['get_record'] = $record->result();
				$data['filter_by'] = $_SESSION['filter_by'];

				$this->load->view('report/print_person',$data);
				return false;
				break;

			case 'edit':
				$this->webspice->edit_generator($TableName='class_routine', $KeyField='ROUTINE_ID', $key, $RedirectController='student_controller', $RedirectFunction='create_class_routine', $PermissionName='manage_class_routine', $StatusCheck=null, $Log='edit_class_routine');
				return false;
				break;
			case 'update':
				$id = $this->uri->segment(3);
				$id2 = $this->uri->segment(4);
				$id3 = $this->uri->segment(5);
				$data = $this->db->query($id . " " . $id2 . " " . $id3);
				if($data) { echo "Just for test purpose";}
				return false;
				break;
			case 'inactive':
				$this->webspice->action_executer($TableName='class_routine', $KeyField='ROUTINE_ID', $key, $RedirectURL='manage_class_routine', $PermissionName='manage_class_routine', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='class_routine', $Log='inactive_class_routine');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='class_routine', $KeyField='ROUTINE_ID', $key, $RedirectURL='manage_class_routine', $PermissionName='manage_class_routine', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='class_routine', $Log='active_class_routine');
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM class_routine WHERE ROUTINE_ID='".$id."' LIMIT 1");

				$this->webspice->message_board('Record deleted successfully');
				$this->webspice->force_redirect($url_prefix . 'manage_class_routine');
				return false;
			break;

			case 'details':
				$data = array();
				$id = $this->webspice->encrypt_decrypt($key, "decrypt");
				$data['section_id'] = $id;
				$sql = $this->db->query("SELECT s.SECTION_NAME, c.CLASS_NAME FROM section AS s INNER JOIN class AS c ON s.CLASS_ID=c.CLASS_ID WHERE s.SECTION_ID=".$data['section_id'])->row();
				$data['section_name'] = $sql->SECTION_NAME;
				$data['class_name'] = $sql->CLASS_NAME;
				// dd($data);
				$this->load->view('admin/class_routine_view', $data);
				return false;
			break;
		}

		# default
		$sql = $initialSQL . $where . $groupby . $orderby . $limit;

		# only for pager
		if( $criteria == 'page' ){
			if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
				$sql = $sql;
			}
			$limit = sprintf("LIMIT %d, %d", $page_index, $no_of_record);		# this is to avoid SQL Injection
			$sql = substr($_SESSION['sql'], 0, strpos($_SESSION['sql'],'LIMIT'));
			$sql = $sql . $limit;
		}

		# load all records
		if( !$this->input->post('filter') ){
			$count_data = $this->db->query( substr($sql,0,strpos($sql,'LIMIT')) );
			$count_data = $count_data->result();
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_class_routine/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;

		// dd($data);

		$this->load->view('admin/manage_class_routine', $data);

	}

	public function subject_name($id) {
		$sub_name = $this->db->query("SELECT SUBJECT_NAME FROM subject WHERE SUBJECT_ID=" . $id)->row()->SUBJECT_NAME;
		return $sub_name;
	}

	public function teacher_name($id) {
		$teacher_name = $this->db->query("SELECT TEACHER_NAME FROM teacher WHERE TEACHER_ID=" . $id)->row()->TEACHER_NAME;
		return $teacher_name;
	}

	public function daily_attendance() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'daily_attendance');
		$this->webspice->permission_verify('daily_attendance');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('class_id','Class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id','Section name','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/attendance/daily_attendance', $data);
			return FALSE;
		}
		else {

			$input = $this->webspice->get_input('attendance_data');
			$class = $input->class_id;
			$section = $input->section_id;
			$date = date("Y-m-d");
			// dd(gettype($year));

			$dublicate = $this->db->query("SELECT * FROM attendance WHERE CLASS_ID='".$class."'  AND SECTION_ID='".$section."' AND CREATED_DATE='".$date."'")->result();
			// dd(count($dublicate));
			if(count($dublicate)) {
				$this->webspice->message_board('Sorry, You have already taken this class attendance for today');
				$this->webspice->force_redirect($url_prefix.'daily_attendance');
				return false;
			}


			$this->webspice->force_redirect($url_prefix.'manage_attendance/insert_attendance/'.$class."/".$section );
			return false;
		}

	}

	public function manage_attendance() {


		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_attendance');
		$this->webspice->permission_verify('manage_attendance');
		$this->load->database();
		$today = date("Y-m-d");
		$orderby = ' ORDER BY a.CREATED_DATE DESC ';
		$groupby = ' GROUP BY a.SECTION_ID, a.CREATED_DATE ';
		$where = " WHERE a.CREATED_DATE BETWEEN '".$today."' AND '".$today."' ";
		$page_index = 0;
		$no_of_record = 20;
		$limit = ' LIMIT '.$no_of_record;
		$filter_by = 'Last Created';
		$data['pager'] = null;
		$criteria = $this->uri->segment(2);
		$key = $this->uri->segment(3);
		if ($criteria == 'page') {
			$page_index = (int)$key;
			$page_index < 0 ? $page_index=0 : $page_index=$page_index;
		}

		$initialSQL = "
		SELECT  a.*, c.CLASS_NAME, s.SECTION_NAME FROM attendance AS a
		INNER JOIN class AS c ON c.CLASS_ID=a.CLASS_ID INNER JOIN section As s ON s.SECTION_ID=a.SECTION_ID ";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'attendance',
				$InputField = array(),
				$Keyword = array('CLASS_ID'),
				$AdditionalWhere = null,
				$DateBetween = null
			);

			$result['where'] ? $where = $result['where'] : $where=$where;
			$result['filter'] ? $filter_by = $result['filter'] : $filter_by=$filter_by;
		}

		# action area
		switch ($criteria) {
			case 'print':
			case 'csv':
				if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
					$_SESSION['sql'] = $initialSQL . $where . $orderby;
					$_SESSION['filter_by'] = $filter_by;
				}

				$record = $this->db->query( substr($_SESSION['sql'], 0, stripos($_SESSION['sql'],'LIMIT')) );
				$data['get_record'] = $record->result();
				$data['filter_by'] = $_SESSION['filter_by'];



				$this->load->view('admin/print_exam',$data);
				return false;
				break;

			case 'edit':
			// dd("Hello World");
				$class_id = $this->uri->segment(3);
				$section_id = $this->uri->segment(4);
				$date = $this->uri->segment(5);

				// dd($class_id);

				$info['class_name'] = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID=" . $class_id)->row()->CLASS_NAME;
				$info['section_name'] = $this->db->query("SELECT SECTION_NAME FROM section WHERE SECTION_ID=" . $section_id)->row()->SECTION_NAME;
				$info['date'] = $date;
				
				$info['attendance_data'] = $this->db->query("SELECT a.*, si.NAME FROM attendance AS a INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.SECTION_ID='".$section_id."' AND a.CREATED_DATE='".$date."'")->result();

				// dd($info);

				$this->load->library('form_validation');
				// $this->form_validation->set_rules('student_data_id[]','Student name','required|trim|xss_clean');
				$this->form_validation->set_rules('att_status[]','attendance status','required|trim|xss_clean');
				$this->form_validation->set_rules('att_comment[]','comment','trim|xss_clean|max_length[300]');
				// dd($info);
				
				if( !$this->form_validation->run() ){
					$this->load->view('admin/attendance/edit_attendance_data', $info);
					return FALSE;
				}

				# get input post
				$input = $this->webspice->get_input('attendance_edit_id');
				// dd($input);
				
				# remove cache
				$this->webspice->remove_cache('attendance');

				# update process

				$sql = "
				UPDATE attendance SET ATT_STATUS=?, ATT_COMMENT=?, UPDATED_BY=?,UPDATED_DATE=?
				WHERE ATT_ID=?";
				for($i=0; $i<count($input->att_id); $i++) {
					$this->db->query($sql, array($input->att_status[$i], $input->att_comment[$i], $this->webspice->get_user_id(),$this->webspice->now(), $input->att_id[$i]));
				}
				$this->webspice->message_board('Attendance data updated successfully');
				$this->webspice->log_me('insert_attendance_updated - '.$this->webspice->get_user_id()); # log activities
				$this->webspice->force_redirect($url_prefix.'manage_attendance');

				return false;
				break;

			case 'inactive':
				$this->webspice->action_executer($TableName='grade', $KeyField='	GRADE_ID', $key, $RedirectURL='manage_marks', $PermissionName='manage_marks', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='grade', $Log='inactive_grade');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='grade', $KeyField='	GRADE_ID', $key, $RedirectURL='manage_marks', $PermissionName='manage_marks', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='grade', $Log='active_grade');
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM grade WHERE 	GRADE_ID='".$id."' LIMIT 1");
				if($sql) {
					$this->webspice->force_redirect($url_prefix.'manage_marks');
				}
				return false;
			break;

			case 'insert_attendance':
			// die("Hello World");
				$info = array();
				$info['class'] = $this->uri->segment(3);
				$info['section'] = $this->uri->segment(4);
				$info['class_name'] = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID=" . $info['class'])->row()->CLASS_NAME;
				$info['section_name'] = $this->db->query("SELECT SECTION_NAME FROM section WHERE SECTION_ID=" . $info['section'])->row()->SECTION_NAME;

				// dd($info);

				if( !isset($info['edit']) ){
					$info['edit'] = array(
						'ATT_ID' => null,
						'STUDENT_ID'=>null,
						'ATT_STATUS'=>null,
						'ATT_COMMENT' => null
					);
				}
				$this->load->library('form_validation');
				$this->form_validation->set_rules('student_id[]','Student name','required|xss_clean');
				$this->form_validation->set_rules('att_status[]','Attendance status','required|xss_clean');
				$this->form_validation->set_rules('att_comment[]','comment','xss_clean|max_length[300]');
				// dd($info);
				
				if( !$this->form_validation->run() ){
					$this->load->view('admin/attendance/insert_attendance', $info);
					return FALSE;
				}

				# get input post
				$input = $this->webspice->get_input('att_id');
				// dd($input);

				$my_data = array();
				// for($i=0; $i<count($input->student_id); $i++) {
				// 	$my_data = $input->student_id[$i];
				// }
				// dd($my_data);
				// $i=0;
				// foreach($input->att_status as $key=>$val) {
				// 	if(in_array($key, $input->student_id)) {
				// 		$my_data[$input->student_id[$i]] = 1;
				// 	}

				// 	if(!in_array($key, $input->student_id)) {
				// 		$my_data[$input->student_id[$i]] = 0;
				// 	}
				// 	$i++;
				// }
				// dd($my_data);
				$status = array_keys($input->att_status);
				// dd($status);
				// dd($input->student_id);
				for( $i=0; $i<count($input->student_id); $i++ ) {
					if(in_array($input->student_id[$i], $status)) {
						$my_data[$input->student_id[$i]] = 1;
					}
					else {
						$my_data[$input->student_id[$i]] = 0;
					}
				}
				// dd($my_data);
				// die();
				
				# remove cache
				$this->webspice->remove_cache('attendance');
				
				#insert grade

				$sql = "
				INSERT INTO attendance
				(CLASS_ID, SECTION_ID, STUDENT_ID, ATT_STATUS, ATT_COMMENT, CREATED_BY, CREATED_DATE, STATUS)
				VALUES
				( ?, ?, ?, ?, ?, ?, ?, 7 )";

				// for($i=0; $i<count($input->student_id); $i++) {

				// 	$this->db->query($sql, array($input->class_id, $input->section_id, $input->student_id[$i], $input->att_status[$i], $input->att_comment[$i], $this->webspice->get_user_id(),$this->webspice->now()));

				// 	if( !$this->db->insert_id() ){
				// 		$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
				// 		$this->webspice->force_redirect($url_prefix . 'admin');
				// 		return false;
				// 	}
				// }
				$j=0;
				foreach($my_data as $key=>$val) {
					$this->db->query($sql, array($input->class_id, $input->section_id, $key, $val, $input->att_comment[$j], $this->webspice->get_user_id(),$this->webspice->now()));

					if( !$this->db->insert_id() ){
						$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
						$this->webspice->force_redirect($url_prefix . 'admin');
						return false;
					}
					$j++;
				}

				$this->webspice->message_board('Attendance inserted successfully!');
				if($this->webspice->permission_verify('manage_attendance',TRUE)){
					$this->webspice->force_redirect($url_prefix . 'manage_attendance');
					return FALSE;
				}
				$this->webspice->force_redirect($url_prefix.'insert_attendance');

				return false;

			break;

			case 'view_details':
				$data = array();
				$section_id = $this->webspice->encrypt_decrypt($this->uri->segment(3), 'decrypt');
				$date = $this->webspice->encrypt_decrypt($this->uri->segment(4), 'decrypt');
				// dd($date);

				$data['get_record'] = $this->db->query("SELECT  a.*, c.CLASS_NAME, s.SECTION_NAME, sd.ROLL_NO, si.NAME FROM attendance AS a INNER JOIN class AS c ON c.CLASS_ID=a.CLASS_ID INNER JOIN section As s ON s.SECTION_ID=a.SECTION_ID INNER JOIN student_info AS si ON si.STUDENT_ID = a.STUDENT_ID INNER JOIN student_data AS sd ON sd.STUDENT_ID=si.STUDENT_ID WHERE a.SECTION_ID='".$section_id."' AND a.CREATED_DATE='".$date."' ORDER BY sd.ROLL_NO asc")->result();

				// dd($data);

				$this->load->view('admin/attendance/view_details_attendance', $data);
				return false;
			break;
		}

		# default
		$sql = $initialSQL . $where . $groupby . $orderby . $limit;

		# only for pager
		if( $criteria == 'page' ){
			if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
				$sql = $sql;
			}
			$limit = sprintf("LIMIT %d, %d", $page_index, $no_of_record);		# this is to avoid SQL Injection
			$sql = substr($_SESSION['sql'], 0, strpos($_SESSION['sql'],'LIMIT'));
			$sql = $sql . $limit;
		}

		# load all records
		if( !$this->input->post('filter') ){
			$count_data = $this->db->query( substr($sql,0,strpos($sql,'LIMIT')) );
			$count_data = $count_data->result();
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_attendance/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;

		// dd($data);

		$this->load->view('admin/attendance/manage_attendance', $data);

	}
	public function attendance_report(){
		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'attendance_report');
		$this->webspice->permission_verify('attendance_report');

		if($this->input->post("filter")){
			$data = array();

			$class_id = $this->input->post("class_id");
			$section_id = $this->input->post("section_id");
			$att_status = $this->input->post("att_status");
			//dd($att_status);
			$date_from = date("Y-m-d", strtotime($this->input->post("date_from")));
			$date_to =  date("Y-m-d", strtotime($this->input->post("date_to")));

			//dd($_POST);
			//dd($date_from);

			//die();

			if($this->input->post("att_status") == 3){
				$class_id = $this->input->post("class_id");
				$section_id = $this->input->post("section_id");
				$att_status = $this->input->post("att_status");
				//dd($att_status);
				$date_from = date("Y-m-d", strtotime($this->input->post("date_from")));
				$date_to =  date("Y-m-d", strtotime($this->input->post("date_to")));

				if($this->input->post("section_id") !=""){
					$data['get_record'] = $this->db->query("SELECT a.*, c.CLASS_NAME, s.SECTION_NAME, si.NAME, sd.ROLL_NO FROM attendance AS a INNER JOIN class AS c ON a.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=a.SECTION_ID INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID INNER JOIN student_data AS sd ON a.STUDENT_ID=sd.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.SECTION_ID='".$section_id."' AND a.CREATED_DATE BETWEEN '".$date_from."' AND '".$date_to."' ORDER BY sd.ROLL_NO asc")->result();
				
				 	//dd($data);
				 	//die();
				}elseif($this->input->post("section_id") == ""){
					$data['get_record'] = $this->db->query("SELECT a.*, c.CLASS_NAME, si.NAME, sd.ROLL_NO  FROM attendance AS a INNER JOIN class AS c ON a.CLASS_ID=c.CLASS_ID INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID INNER JOIN student_data AS sd ON a.STUDENT_ID=sd.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.CREATED_DATE BETWEEN '".$date_from."' AND '".$date_to."' ORDER BY sd.ROLL_NO asc")->result();
				 	//dd($data);
					//$this->load->library('mpdf');
					//$this->mpdf->WriteHTML($data['get_record'], true);
					//$this->mpdf->Output();
				}

				if(count($data['get_record'])) {
					$data['class_name'] = $data['get_record'][0]->CLASS_NAME;
					if($this->input->post("section_id") !=""){
						$data['section_name'] = $data['get_record'][0]->SECTION_NAME;
					}else{
						$data['section_name'] = "";
					}
					

					
					//$data['date_from'] = $data['get_record'][0]->NAME;
				}else{
					$data = array();
				}
					$this->load->view('admin/attendance/attendance_report', $data);
					return true;
			}


			if($this->input->post("section_id") !=""){
				$data['get_record'] = $this->db->query("SELECT a.*, c.CLASS_NAME, s.SECTION_NAME, si.NAME, sd.ROLL_NO FROM attendance AS a INNER JOIN class AS c ON a.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=a.SECTION_ID INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID INNER JOIN student_data AS sd ON a.STUDENT_ID=sd.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.SECTION_ID='".$section_id."' AND a.ATT_STATUS='".$att_status."' AND a.CREATED_DATE BETWEEN '".$date_from."' AND '".$date_to."' ORDER BY sd.ROLL_NO asc")->result();
			
			 	//dd($data);
			 	//die();
			}elseif($this->input->post("section_id") == ""){
				$data['get_record'] = $this->db->query("SELECT a.*, c.CLASS_NAME, si.NAME, sd.ROLL_NO  FROM attendance AS a INNER JOIN class AS c ON a.CLASS_ID=c.CLASS_ID INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID INNER JOIN student_data AS sd ON a.STUDENT_ID=sd.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.ATT_STATUS='".$att_status."' AND a.CREATED_DATE BETWEEN '".$date_from."' AND '".$date_to."'")->result();
			 	//dd($data);
				//$this->load->library('mpdf');
				//$this->mpdf->WriteHTML($data['get_record'], true);
				//$this->mpdf->Output();

			}

			 //die();
			// dd($data);
			if(count($data['get_record'])) {
				$data['class_name'] = $data['get_record'][0]->CLASS_NAME;
				if($this->input->post("section_id") !=""){
					$data['section_name'] = $data['get_record'][0]->SECTION_NAME;
				}else{
					$data['section_name'] = "";
				}
				

				
				//$data['date_from'] = $data['get_record'][0]->NAME;
			}else{
				$data = array();
			}
			$this->load->view('admin/attendance/attendance_report', $data);
			return true;
		}
		else {
			$data = array();
			$this->load->view('admin/attendance/attendance_report', $data);
		}
		if($this->input->post("print")){
			$this->load->library('mpdf/mpdf');

			$class_id = $this->input->post("class_id");
			$section_id = $this->input->post("section_id");
			$att_status = $this->input->post("att_status");
			$date_from = date("Y-m-d", strtotime($this->input->post("date_from")));
			$date_to =  date("Y-m-d", strtotime($this->input->post("date_to")));

			//dd($_POST);
			//dd($date_from);

			//die();

			if($this->input->post("section_id") !=""){
				$data['get_record'] = $this->db->query("SELECT a.*, c.CLASS_NAME, s.SECTION_NAME, si.NAME, sd.ROLL_NO FROM attendance AS a INNER JOIN class AS c ON a.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=a.SECTION_ID INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID INNER JOIN student_data AS sd ON a.STUDENT_ID=sd.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.SECTION_ID='".$section_id."' AND a.ATT_STATUS='".$att_status."' AND a.CREATED_DATE BETWEEN '".$date_from."' AND '".$date_to."' ORDER BY sd.ROLL_NO asc")->result();
			
				 $this->load->library('mpdf');
				$this->mpdf->WriteHTML($data['get_record'], true);
				$this->mpdf->Output();
			}elseif($this->input->post("section_id") == ""){
				$data['get_record'] = $this->db->query("SELECT a.*, c.CLASS_NAME, si.NAME, sd.ROLL_NO  FROM attendance AS a INNER JOIN class AS c ON a.CLASS_ID=c.CLASS_ID INNER JOIN student_info AS si ON a.STUDENT_ID=si.STUDENT_ID INNER JOIN student_data AS sd ON a.STUDENT_ID=sd.STUDENT_ID WHERE a.CLASS_ID='".$class_id."' AND a.ATT_STATUS='".$att_status."' AND a.CREATED_DATE BETWEEN '".$date_from."' AND '".$date_to."' ORDER BY sd.ROLL_NO asc")->result();
			 	dd($data);
				$this->load->library('mpdf');
				$this->mpdf->WriteHTML($data['get_record'], true);
				$this->mpdf->Output();
			}	
	        $this->mpdf->WriteHTML($html);	
	        $this->mpdf->Output('example_001.pdf', 'I');

		}

	}


	public function sms_configuration($data=null) {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'sms_configuration');
		$this->webspice->permission_verify('sms_configuration');
		$sms_data = $this->db->query("SELECT * FROM sms_config")->row();

		if( !isset($data['edit']) ){
			if(count($sms_data)) {
				$data['edit'] = array(
					'SMS_ID'=>$sms_data->SMS_ID,
					'SMS_USER'=>$sms_data->SMS_USER,
					'SMS_PASS'=>$sms_data->SMS_PASS,
					'SMS_URL'=>$sms_data->SMS_URL,
					'SMS_HEADER_NAME'=>$sms_data->SMS_HEADER_NAME
				);
			}
			else {
				$data['edit'] = array(
					'SMS_ID'=>null,
					'SMS_USER'=>null,
					'SMS_PASS'=>null,
					'SMS_URL'=>null,
					'SMS_HEADER_NAME'=>null
				);
			}
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('sms_user','sms user','required|trim|xss_clean');
		$this->form_validation->set_rules('sms_pass','sms password','required|trim|xss_clean');
		$this->form_validation->set_rules('sms_url','sms url','required|trim|xss_clean');
		$this->form_validation->set_rules('sms_header_name','sms header name','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/sms/sms_configuration', $data);
			return FALSE;
		}

		# get input post
		$input = $this->webspice->get_input('sms_id');
		
		# remove cache
		$this->webspice->remove_cache('sms_config');

		# update process
		if( $input->sms_id ){

			$sql = "
			UPDATE sms_config SET SMS_USER=?, SMS_PASS=?, SMS_URL=?, SMS_HEADER_NAME=?
			WHERE SMS_ID=?";
			$this->db->query($sql, array($input->sms_user, $input->sms_pass, $input->sms_url, $input->sms_header_name, $input->sms_id));
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('config_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'sms_configuration');
			return false;
		}
		
		#insert category

		$sql = "
		INSERT INTO sms_config
		(SMS_ID, SMS_USER, SMS_PASS, SMS_URL, SMS_HEADER_NAME)
		VALUES
		( 1, ?, ?, ?, ? )";
		$this->db->query($sql, array($input->sms_user, $input->sms_pass, $input->sms_url, $input->sms_header_name));

		/*if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}*/

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('sms_configuration',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'sms_configuration');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'sms_configuration');

	}

	public function send_sms() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'send_sms');
		$this->webspice->permission_verify('send_sms');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'SMS_ID'=>null,
				'MOBILE_NUMBER'=>null,
				'MESSAGE'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('mobile_number','mobile number','required|trim|xss_clean');
		$this->form_validation->set_rules('message','message','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/sms/send_sms', $data);
			return FALSE;
		}

		// config setup
		$sms_data = $this->db->query("SELECT * FROM sms_config")->row();
		$user = $sms_data->SMS_USER;
		$pass = $sms_data->SMS_PASS;
		$url = $sms_data->SMS_URL;
		$header_name = $sms_data->SMS_HEADER_NAME;

		$string = $user.":".$pass;
		$sms_string = base64_encode($string);
		// dd($sms_string);

		# get input post
		$input = $this->webspice->get_input('sms_id');

		$number = "88" . $input->mobile_number;
		$message = $input->message;

		?>

		<script>

		var number = <?php echo $number; ?>;
		var message = "<?php echo $message; ?>";
		var url_prefix = '/school_mgmt/';

		// config data
		var sms_string = "<?php echo $sms_string; ?>";
		var header_name = "<?php echo $header_name; ?>";
		var url = "<?php echo $url; ?>";

		var data = JSON.stringify({
		  "from": header_name,
		  "to": number,
		  "text": message
		});

		var xhr = new XMLHttpRequest();
		xhr.withCredentials = false;

		xhr.addEventListener("readystatechange", function () {
		  if (this.readyState === this.DONE) {
		    console.log(this.responseText);
		  }
		});

		xhr.open("POST", url);
		xhr.setRequestHeader("authorization", "Basic "+sms_string);
		xhr.setRequestHeader("content-type", "application/json");
		xhr.setRequestHeader("accept", "application/json");
		xhr.send(data);
		alert("SMS send successfully");
		window.location = url_prefix + 'admin';

		</script>

		<?php

	}
	
	public function sms_to_parents() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'sms_to_parents');
		$this->webspice->permission_verify('sms_to_parents');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
				'MESSAGE'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('class_id','class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id','section name','trim|xss_clean');
		$this->form_validation->set_rules('message','message','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/sms/sms_to_parents', $data);
			return FALSE;
		}

		# get input post
		$input = $this->webspice->get_input('sms_id');
		// dd($input->section_id);

		$numbers = array();
		if($input->section_id) {
			$section_id = $input->section_id;
			$class_id = $input->class_id;
			$data_query = $this->db->query("SELECT SD.*, P.* FROM student_data AS SD INNER JOIN parent AS P ON SD.STUDENT_ID=P.STUDENT_ID WHERE SD.CLASS_ID='".$class_id."' AND SECTION_ID='".$section_id."' AND YEAR='".date("Y")."'")->result();
			// dd($data_query);

			foreach($data_query as $v) {
				$numbers[] = (int)88 . $v->PHONE;
			}
		}
		else {
			// dd("Bubu");
			$class_id = $input->class_id;
			$data_query = $this->db->query("SELECT SD.*, P.* FROM student_data AS SD INNER JOIN parent AS P ON SD.STUDENT_ID=P.STUDENT_ID WHERE SD.CLASS_ID='".$class_id."' AND YEAR='".date("Y")."'")->result();
			// dd($data_query);

			foreach($data_query as $v) {
				$numbers[] = (int)88 . $v->PHONE;
			}
		}

		// $numbers = json_encode($numbers);
		// dd($numbers);

		// $number = "88" . $input->mobile_number;
		$message = $input->message;

		?>

		<script>
		var numbers = <?php echo json_encode($numbers); ?>;
		for(var i=0; i<numbers.length; i++) {
			console.log(numbers[i]);
		

		
			var message = "<?php echo $message; ?>";
			var url_prefix = '/shikder/';

			console.log(numbers);

			var data = JSON.stringify({
			  "from": "Base4",
			  // "to": ["8801722432578", "8801717686227", "8801748142480", "8801717075522", "8801710509494", "8801922606668"],
			  "to": numbers[i],
			  "text": message
			});

			var xhr = new XMLHttpRequest();
			xhr.withCredentials = false;

			xhr.addEventListener("readystatechange", function () {
			  if (this.readyState === this.DONE) {
			    console.log(this.responseText);
			  }
			});

			xhr.open("POST", "http://api.bulksms.icombd.com/restapi/sms/1/text/single");
			xhr.setRequestHeader("authorization", "Basic YmFzZTQ6ZHZiZDMyMTQ=");
			xhr.setRequestHeader("content-type", "application/json");
			xhr.setRequestHeader("accept", "application/json");
			xhr.send(data);
		}
			alert("SMS send successfully");
			window.location = url_prefix + 'admin';

		</script>

		<?php

	}

	public function sms_marksheet() {

		// dd($this->webspice->mob_number_to_id("8801748142480"));

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'sms_to_parents');
		$this->webspice->permission_verify('sms_to_parents');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'CLASS_ID'=>null,
				'EXAM_ID'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('class_id','class name','required|trim|xss_clean');
		$this->form_validation->set_rules('exam_id','exam name','trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/sms/sms_marksheet', $data);
			return FALSE;
		}

		# get input post
		$input = $this->webspice->get_input('sms_id');

		$numbers = array();
		if($input->class_id) {

			$class_id = $input->class_id;
			$data_query = $this->db->query("SELECT sd.*, si.* FROM student_data AS sd INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".date("Y")."' AND si.PHONE <>''")->result();
			// dd($data_query);

			foreach($data_query as $v) {
				// $numbers[] = $v->PHONE;

				$numbers[] = (int)88 . $v->PHONE;
			}
			// dd($numbers);
		}

		$message_val = [];
		foreach($numbers as $val) {

			$student_id = $this->webspice->mob_number_to_id($val);
			
			$mark = $this->db->query("SELECT * FROM marks WHERE CLASS_ID='".$input->class_id."' AND STUDENT_ID='".$student_id."' AND EXAM_ID='".$input->exam_id."' AND YEAR='".date("Y")."'")->result();
			// $query = $this->db->last_query();

			$message = "";
			foreach($mark as $mark_val) {
				$message .= $this->webspice->subject_name($mark_val->SUBJECT_ID) . ":".$mark_val->MARK_OBTAINED . " ";
			}
			$message_val[] = $message;

		}
			// dd($message_val, true);
		// die();

		?>

		<script>

		var numbers = <?php echo json_encode($numbers); ?>;
		var message = <?php echo json_encode($message_val); ?>;
		var url_prefix = '/shikder/';

		for(var i=0; i<numbers.length; i++) {
			console.log(numbers[i]);
			
			var data = JSON.stringify({
			  "from": "Base4",
			  // "to": ["8801722432578", "8801717686227", "8801748142480", "8801717075522", "8801710509494", "8801922606668"],
			  "to": numbers[i],
			  "text": message[i]
			});

			var xhr = new XMLHttpRequest();
			xhr.withCredentials = false;

			xhr.addEventListener("readystatechange", function () {
			  if (this.readyState === this.DONE) {
			    console.log(this.responseText);
			  }
			});

			xhr.open("POST", "http://api.bulksms.icombd.com/restapi/sms/1/text/single");
			xhr.setRequestHeader("authorization", "Basic YmFzZTQ6ZHZiZDMyMTQ=");
			xhr.setRequestHeader("content-type", "application/json");
			xhr.setRequestHeader("accept", "application/json");
			xhr.send(data);
		}
		alert("SMS send successfully");
		window.location = url_prefix + 'admin';

		</script>

		<?php

	}

	public function upload_csv_file() {
		// dd("Hello World");

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'upload_csv_file');
		$this->webspice->permission_verify('upload_csv_file');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('class_id','Class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id','Section name','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/attendance/upload_csv_file', $data);
			return FALSE;
		}

		# get input post
		$input = $this->webspice->get_input('attendance');
		$date = date("Y-m-d");
		// dd($input);

		// dublicate test
		$dublicate = $this->db->query("SELECT * FROM attendance WHERE CLASS_ID='".$input->class_id."'  AND SECTION_ID='".$input->section_id."' AND CREATED_DATE='".$date."'")->result();

		if( $_FILES['upload_data_file'] ) {

			$file_name = $_FILES['upload_data_file']['name'];
			$chk_ext = explode(".", $file_name);
			if( (strtolower(end($chk_ext)) !== "csv") ) {
				$this->webspice->message_board("Your file type must be in csv format");
				$this->load->view('admin/attendance/upload_csv_file', $data);
				return false;
			}
			
			$fname = $_FILES['upload_data_file']['tmp_name'];
			$handle = fopen($fname, "r");
			$my_data = array();
			while ( ($up_data = fgetcsv($handle, 1000, ",")) !== FALSE ) {
				$my_data[] = $up_data;
			}
			fclose($handle);

			unset($my_data[0]);
			// dd($input->section_id);
			// dd($this->roll_wise_data($my_data[2][2], $input->class_id, $input->section_id));

			#insert csv data
			$sql = "
			INSERT INTO attendance
			(CLASS_ID, SECTION_ID, STUDENT_ID, ATT_STATUS, ATT_COMMENT, CREATED_BY, CREATED_DATE, STATUS)
			VALUES
			( ?, ?, ?, ?, ?, ?, ?, 7 )";

			for($i=1; $i<count($my_data); $i++) :
				$this->db->query($sql, array($input->class_id, $input->section_id, $this->roll_wise_data($my_data[$i][2], $input->class_id, $input->section_id), $my_data[$i][3], $my_data[$i][4], $this->webspice->get_user_id(),$this->webspice->now()));
			endfor;

			if( !$this->db->insert_id() ){
				$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
				$this->webspice->force_redirect($url_prefix . 'admin');
				return false;
			}

			$this->webspice->message_board('Record inserted successfully!');
			if($this->webspice->permission_verify('manage_attendance',TRUE)){
				$this->webspice->force_redirect($url_prefix . 'manage_attendance');
				return FALSE;
			}
			$this->webspice->force_redirect($url_prefix.'upload_csv_file');


		}
		
	}

	public function download_csv_file() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'upload_csv_file');
		$this->webspice->permission_verify('upload_csv_file');

		$this->load->view("admin/attendance/download_csv_file");
		return false;

	}

	private function roll_wise_data($roll_no, $class_id, $section_id) {
		$student_data_id = $this->db->query("SELECT STUDENT_DATA_ID FROM student_data WHERE CLASS_ID='".$class_id."' AND ROLL_NO='".$roll_no."' AND SECTION_ID='".$section_id."'")->row()->STUDENT_DATA_ID;
		return $student_data_id;
	}

	public function view_attendance() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			$data['get_record'] = $this->db->query("SELECT  a.*, c.CLASS_NAME, s.SECTION_NAME, si.NAME, sd.ROLL_NO FROM attendance AS a INNER JOIN class AS c ON c.CLASS_ID=a.CLASS_ID INNER JOIN section As s ON s.SECTION_ID=a.SECTION_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID = a.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE a.SECTION_ID='".$section_id."' AND a.STUDENT_ID=".$student_data_id)->result();
			$this->load->view('admin/attendance/view_attendance', $data);

			return false;
		}
	}

	public function view_notice() { 
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			$data['get_record'] = $this->db->query("SELECT * FROM noticeboard ORDER BY CREATED_DATE DESC")->result();
			// dd($data);
			$this->load->view('admin/attendance/view_notice', $data);

			return false;
		}
	}

	public function view_class_routine() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			$data['section_id'] = $section_id;
			$sql = $this->db->query("SELECT s.SECTION_NAME, c.CLASS_NAME FROM section AS s INNER JOIN class AS c ON s.CLASS_ID=c.CLASS_ID WHERE s.SECTION_ID=".$section_id)->row();
			$data['section_name'] = $sql->SECTION_NAME;
			$data['class_name'] = $sql->CLASS_NAME;

			// dd($data);
			$this->load->view('admin/attendance/view_class_routine', $data);

			return false;
		}
	}

	public function view_subjects() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			$data['get_record'] = $this->db->query("SELECT * FROM subject WHERE CLASS_ID=".$class_id)->result();
			// dd($data);
			$this->load->view('admin/attendance/view_subjects', $data);

			return false;
		}
	}

	public function view_teachers() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			$data['get_record'] = $this->db->query("SELECT * FROM teacher")->result();
			// dd($data);
			$this->load->view('admin/attendance/view_teachers', $data);

			return false;
		}
	}

	public function view_payment() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			$data['get_record'] = $this->db->query("SELECT * FROM payment WHERE CLASS_ID='".$class_id."' AND SECTION_ID='".$section_id."' AND STUDENT_ID='".$student_data_id."' AND YEAR='".date("Y")."'")->result();
			// dd($data);
			$this->load->view('admin/attendance/view_payment', $data);

			return false;
		}
	}

	public function view_mark_sheet() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;
			// dd($student_data);

			if($this->input->post("filter")){
				$data = array();
				$exam_id = $this->input->post("exam_id");
				$year = $this->input->post("year");

				// dd($_POST);


				$data['get_record'] = $this->db->query("SELECT m.*, c.CLASS_NAME, si.NAME, s.SECTION_NAME, e.EXAM_NAME, sub.SUBJECT_NAME FROM marks AS m INNER JOIN class AS c ON m.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID INNER JOIN exam AS e ON e.EXAM_ID=m.EXAM_ID INNER JOIN subject AS sub ON m.SUBJECT_ID=sub.SUBJECT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=m.STUDENT_ID WHERE m.CLASS_ID='".$class_id."' AND m.SECTION_ID='".$section_id."' AND m.EXAM_ID='".$exam_id."' AND m.STUDENT_ID='".$student_data_id."' AND YEAR='".$year."'")->result();
				// dd($data);

				// dd($data);
				if(count($data['get_record'])) {
					$data['class_name'] = $data['get_record'][0]->CLASS_NAME;
					$data['section_name'] = $data['get_record'][0]->SECTION_NAME;
					$data['student_name'] = $data['get_record'][0]->NAME;
				}else{
					$data = array();
				}

				$this->load->view('admin/attendance/view_mark_sheet', $data);
				return false;
			}
			else {
				$data = array();
				$this->load->view('admin/attendance/view_mark_sheet', $data);
			}

			return false;
		}
	}

	public function is_library_member($student_data_id) {
		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$membership = $this->db->query("SELECT * FROM library_member WHERE STUDENT_DATA_ID='".$student_data_id."' AND YEAR=".date("Y"))->row();
		if(count($membership)) {
			// dd("Yes, I am a library member");
			return true;
		}
		else {
			$this->webspice->message_board('This panel is for a library member. You are not allowed to access here. Plesae contact with your library person');
			$this->webspice->force_redirect($url_prefix.'admin');
			return false;
		}
	}

	public function library_member_id($student_data_id) {
		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$membership = $this->db->query("SELECT * FROM library_member WHERE STUDENT_DATA_ID='".$student_data_id."' AND YEAR=".date("Y"))->row();
		if(count($membership)) {
			// dd($membership->LIBRARY_MEMBER_ID);
			return $membership->LIBRARY_MEMBER_ID;
		}
		else {
			$this->webspice->message_board('This panel is for a library member. You are not allowed to access here. Plesae contact with your library person');
			$this->webspice->force_redirect($url_prefix.'admin');
			return false;
		}
	}

	public function my_notifications() {

		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;

			// check this is a library member
			$this->is_library_member($student_data_id);
			$member_id = $this->library_member_id($student_data_id);
			// dd($member_id);

			$data['get_record'] = $this->db->query("SELECT * FROM send_notification WHERE LIBRARY_MEMBER_ID='".$member_id."'")->result();
			// dd($data);
			$this->load->view('admin/attendance/my_notifications', $data);

			return false;
		}

	}

	public function my_book_request() {

		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;

			// check this is a library member
			$this->is_library_member($student_data_id);
			$member_id = $this->library_member_id($student_data_id);
			// dd($member_id);

			$data['get_record'] = $this->db->query("SELECT * FROM book_request WHERE MEMBER_ID='".$member_id."'")->result();
			// dd($data);
			$this->load->view('admin/attendance/my_book_request', $data);

			return false;
		}

	}

	public function view_library_books() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;

			// check this is a library member
			$this->is_library_member($student_data_id);
			$member_id = $this->library_member_id($student_data_id);
			// dd($member_id);

			$data['get_record'] = $this->db->query("SELECT * FROM books")->result();
			// dd($data);
			$this->load->view('admin/attendance/view_library_books', $data);

			return false;
		}
	}

	public function my_issues_and_returns() {
		if(isset($_SESSION['user']['STUDENT_ID'])) {
			$data = array();
			$id = $this->webspice->encrypt_decrypt($_SESSION['user']['STUDENT_ID'], 'decrypt');
			$student_data = $this->db->query("SELECT * FROM student_data WHERE YEAR='".date("Y")."' AND STUDENT_ID=".$id)->row();
			$class_id = $student_data->CLASS_ID;
			$section_id = $student_data->SECTION_ID;
			$roll_no = $student_data->ROLL_NO;
			$student_data_id = $student_data->STUDENT_DATA_ID;

			// check this is a library member
			$this->is_library_member($student_data_id);
			$member_id = $this->library_member_id($student_data_id);
			// dd($member_id);

			$data['get_record'] = $this->db->query("SELECT * FROM book_issue WHERE LIBRARY_MEMBER_ID='".$member_id."'")->result();
			// dd($data);
			$this->load->view('admin/attendance/my_issues_and_returns', $data);

			return false;
		}
	}

	public function progress_report() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'progress_report');
		$this->webspice->permission_verify('progress_report');
		$failed_any_sub = false;
		$failed_in_bangla = false;
		$failed_in_english = false;
		$failed_in_group = false;
		$failed_in_optional = false;
		$failed_in_main = false;

		if($this->input->post("filter")){
			$data = array();

			$class_id = $this->input->post("class_id");
			$section_id = $this->input->post("section_id");
			$student_id = $this->input->post("student_id");
			$exam_id = $this->input->post("exam_id");
			$year = $this->input->post("year");

			// for bangla subject
			$bangla_sub = array();
			$bangla_points = array();
			$bangla_id = $this->db->query("SELECT ss.SUBJECT_ID, ss.SUBJECT_NAME FROM subject AS s INNER JOIN subject AS ss ON ss.`PARENT_ID`=s.`SUBJECT_ID` WHERE s.SUBJECT_NAME='Bangla' AND s.CLASS_ID='".$class_id."'")->result();
			
			foreach($bangla_id as $bangla_val) {
				$bangla_sub[] = $bangla_val->SUBJECT_ID;
			}
			$bangla_sub_id = implode(", ", $bangla_sub);
			
			$data['bangla_sub'] = $this->db->query("SELECT m.*, c.CLASS_NAME, si.NAME, s.SECTION_NAME, e.EXAM_NAME, sub.SUBJECT_NAME, sub.TOTAL_MARK, sub.PASS_MARK, sub.SUBJECTIVE_MARK AS SUBJECTIVE_MARK_TOTAL, sub.SUBJECTIVE_PASS, sub.OBJECTIVE_MARK AS OBJECTIVE_MARK_TOTAL, sub.OBJECTIVE_PASS, sub.PRACTICAL_MARK AS PRACTICAL_MARK_TOTAL, sub.PRACTICAL_PASS FROM marks AS m INNER JOIN class AS c ON m.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID INNER JOIN exam AS e ON e.EXAM_ID=m.EXAM_ID INNER JOIN subject AS sub ON m.SUBJECT_ID=sub.SUBJECT_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID=m.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE m.CLASS_ID='".$class_id."' AND m.SECTION_ID='".$section_id."' AND m.EXAM_ID='".$exam_id."' AND m.STUDENT_ID='".$student_id."' AND m.YEAR='".$year."' AND sub.SUBJECT_ID IN (".$bangla_sub_id.")")->result();
			// dd($data['bangla_sub']);

			foreach($data['bangla_sub'] as $bangla_val) {
				$bangla_points[] = $bangla_val->MARK_OBTAINED;
				if(($bangla_val->SUBJECTIVE_MARK < $bangla_val->SUBJECTIVE_PASS) || ($bangla_val->OBJECTIVE_MARK < $bangla_val->OBJECTIVE_PASS)) {
					$failed_in_bangla = true;
					$failed_any_sub = true;
				}
			}
			$mark_bangla = array_sum($bangla_points);
			$bangla_points = array_sum($bangla_points)/2;
			$bangla_point_val = $this->webspice->mark_val_to_points($bangla_points);
			// end result for bangla subject

			// for english subject
			$english_sub = array();
			$english_points = array();
			$english_id = $this->db->query("SELECT ss.SUBJECT_ID, ss.SUBJECT_NAME FROM subject AS s INNER JOIN subject AS ss ON ss.`PARENT_ID`=s.`SUBJECT_ID` WHERE s.SUBJECT_NAME='English' AND s.CLASS_ID='".$class_id."'")->result();
			foreach($english_id as $english_val) {
				$english_sub[] = $english_val->SUBJECT_ID;
			}
			$english_sub_id = implode(", ", $english_sub);
			
			$data['english_sub'] = $this->db->query("SELECT m.*, c.CLASS_NAME, si.NAME, s.SECTION_NAME, e.EXAM_NAME, sub.SUBJECT_NAME, sub.TOTAL_MARK, sub.PASS_MARK, sub.SUBJECTIVE_MARK AS SUBJECTIVE_MARK_TOTAL, sub.SUBJECTIVE_PASS, sub.OBJECTIVE_MARK AS OBJECTIVE_MARK_TOTAL, sub.OBJECTIVE_PASS, sub.PRACTICAL_MARK AS PRACTICAL_MARK_TOTAL, sub.PRACTICAL_PASS FROM marks AS m INNER JOIN class AS c ON m.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID INNER JOIN exam AS e ON e.EXAM_ID=m.EXAM_ID INNER JOIN subject AS sub ON m.SUBJECT_ID=sub.SUBJECT_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID=m.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE m.CLASS_ID='".$class_id."' AND m.SECTION_ID='".$section_id."' AND m.EXAM_ID='".$exam_id."' AND m.STUDENT_ID='".$student_id."' AND m.YEAR='".$year."' AND sub.SUBJECT_ID IN (".$english_sub_id.")")->result();
			foreach($data['english_sub'] as $english_val_2) {
				$english_points[] = $english_val_2->MARK_OBTAINED;
				if(($english_val_2->SUBJECTIVE_MARK < $english_val_2->SUBJECTIVE_PASS) || ($english_val_2->OBJECTIVE_MARK < $english_val_2->OBJECTIVE_PASS)) {
					$failed_in_english = true;
					$failed_any_sub = true;
				}
			}
			$mark_english = array_sum($english_points);
			$english_points = array_sum($english_points)/2;
			$english_point_val = $this->webspice->mark_val_to_points($english_points);


			// for group subject
			$group_sub_points = array();
			$group_sub_marks = array();
			$group_sub = $this->db->query("SELECT GROUP_SUB_ID FROM assign_student_subject WHERE CLASS_ID='".$class_id."' AND SECTION_ID='".$section_id."' AND STUDENT_ID='".$student_id."'")->row()->GROUP_SUB_ID;
			$group_sub = str_replace("|", ",", $group_sub);
			// dd($group_sub);
			$data['group_sub'] = $this->db->query("SELECT m.*, c.CLASS_NAME, si.NAME, s.SECTION_NAME, e.EXAM_NAME, sub.SUBJECT_NAME, sub.TOTAL_MARK, sub.PASS_MARK, sub.SUBJECTIVE_MARK AS SUBJECTIVE_MARK_TOTAL, sub.SUBJECTIVE_PASS, sub.OBJECTIVE_MARK AS OBJECTIVE_MARK_TOTAL, sub.OBJECTIVE_PASS, sub.PRACTICAL_MARK AS PRACTICAL_MARK_TOTAL, sub.PRACTICAL_PASS FROM marks AS m INNER JOIN class AS c ON m.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID INNER JOIN exam AS e ON e.EXAM_ID=m.EXAM_ID INNER JOIN subject AS sub ON m.SUBJECT_ID=sub.SUBJECT_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID=m.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE m.CLASS_ID='".$class_id."' AND m.SECTION_ID='".$section_id."' AND m.EXAM_ID='".$exam_id."' AND m.STUDENT_ID='".$student_id."' AND m.YEAR='".$year."' AND sub.SUBJECT_ID IN (".$group_sub.")")->result();
			// dd(count($data['group_sub']));
			// dd($data['group_sub']);
			foreach($data['group_sub'] as $group_val) {
				$group_sub_points[] = $this->webspice->mark_val_to_points($group_val->MARK_OBTAINED);
				$group_sub_marks[] = $group_val->MARK_OBTAINED;
				if(($group_val->SUBJECTIVE_MARK < $group_val->SUBJECTIVE_PASS) || ($group_val->OBJECTIVE_MARK < $group_val->OBJECTIVE_PASS)) {
					$failed_any_sub = true;
				}
			}
			$mark_group = array_sum($group_sub_marks);
			$group_sub_points = (array_sum($group_sub_points)/count($group_sub_points));

			// end group subject




			// for main subjects
			$ignore_data = array();
			$main_sub_points = array();
			$main_sub_marks = array();
			$ignore = $this->db->query("SELECT SUBJECT_ID, PARENT_ID FROM subject WHERE PARENT_ID !=0 AND CLASS_ID='".$class_id."'")->result();
			for($z=0; $z<count($ignore); $z++) {
				foreach($ignore[$z] as $key=>$val) {
					$ignore_data[] = $val;
				}
			}
			$ignore_data = array_unique($ignore_data);
			$ignore_data = implode(", ", $ignore_data);

			$main_sub_list = array();
			$main_subjects = $this->db->query("SELECT SUBJECT_ID FROM subject WHERE MANDATORY=1 AND SUBJECT_ID NOT IN (".$ignore_data.") AND CLASS_ID='".$class_id."'")->result();
			foreach($main_subjects as $main_val) {
				$main_sub_list[] = $main_val->SUBJECT_ID;
			}
			$main_sub_list = implode(", ", $main_sub_list);
			$data['get_record'] = $this->db->query("SELECT m.*, c.CLASS_NAME, si.NAME, s.SECTION_NAME, e.EXAM_NAME, sub.SUBJECT_NAME, sub.TOTAL_MARK, sub.PASS_MARK, sub.SUBJECTIVE_MARK AS SUBJECTIVE_MARK_TOTAL, sub.SUBJECTIVE_PASS, sub.OBJECTIVE_MARK AS OBJECTIVE_MARK_TOTAL, sub.OBJECTIVE_PASS, sub.PRACTICAL_MARK AS PRACTICAL_MARK_TOTAL, sub.PRACTICAL_PASS FROM marks AS m INNER JOIN class AS c ON m.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID INNER JOIN exam AS e ON e.EXAM_ID=m.EXAM_ID INNER JOIN subject AS sub ON m.SUBJECT_ID=sub.SUBJECT_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID=m.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE m.CLASS_ID='".$class_id."' AND m.SECTION_ID='".$section_id."' AND m.EXAM_ID='".$exam_id."' AND m.STUDENT_ID='".$student_id."' AND m.YEAR='".$year."' AND sub.SUBJECT_ID IN (".$main_sub_list.")")->result();
			foreach($data['get_record'] as $main_val) {
				$main_sub_points[] = $this->webspice->mark_val_to_points($main_val->MARK_OBTAINED);
				$main_sub_marks[] = $main_val->MARK_OBTAINED;
				if(($main_val->SUBJECTIVE_MARK < $main_val->SUBJECTIVE_PASS) || ($main_val->OBJECTIVE_MARK < $main_val->OBJECTIVE_PASS)) {
					$failed_any_sub = true;
				}
			}
			$main_sub_points = (array_sum($main_sub_points)/count($main_sub_points));
			$mark_main = array_sum($main_sub_marks);
			// end main subjects

			$optional_sub_id = $this->db->query("SELECT OPTIONAL_SUB_ID FROM assign_student_subject WHERE CLASS_ID='".$class_id."' AND SECTION_ID='".$section_id."' AND STUDENT_ID='".$student_id."'")->row()->OPTIONAL_SUB_ID;
			// dd($optional_sub_id);

			$data['optional_sub'] = $this->db->query("SELECT m.*, c.CLASS_NAME, si.NAME, s.SECTION_NAME, e.EXAM_NAME, sub.SUBJECT_NAME, sub.TOTAL_MARK, sub.PASS_MARK, sub.SUBJECTIVE_MARK AS SUBJECTIVE_MARK_TOTAL, sub.SUBJECTIVE_PASS, sub.OBJECTIVE_MARK AS OBJECTIVE_MARK_TOTAL, sub.OBJECTIVE_PASS, sub.PRACTICAL_MARK AS PRACTICAL_MARK_TOTAL, sub.PRACTICAL_PASS FROM marks AS m INNER JOIN class AS c ON m.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=m.SECTION_ID INNER JOIN exam AS e ON e.EXAM_ID=m.EXAM_ID INNER JOIN subject AS sub ON m.SUBJECT_ID=sub.SUBJECT_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID=m.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID WHERE m.CLASS_ID='".$class_id."' AND m.SECTION_ID='".$section_id."' AND m.EXAM_ID='".$exam_id."' AND m.STUDENT_ID='".$student_id."' AND m.YEAR='".$year."' AND m.SUBJECT_ID='".$optional_sub_id."'")->row();
			$optional_sub_val = $this->webspice->opt_mark_val_to_points($data['optional_sub']->MARK_OBTAINED);
			if($data['optional_sub']->MARK_OBTAINED > 40) {
				$mark_optional = $data['optional_sub']->MARK_OBTAINED - 40;
			}
			else {
				$mark_optional = $data['optional_sub']->MARK_OBTAINED;
			}

			if(($data['optional_sub']->SUBJECTIVE_MARK < $data['optional_sub']->SUBJECTIVE_PASS) || ($data['optional_sub']->OBJECTIVE_MARK < $data['optional_sub']->OBJECTIVE_PASS)) {
				$failed_in_optional = true;
				$failed_any_sub = true;
			}


			/* value initialize for pass or failed */
			$data['failed_any_sub'] = $failed_any_sub;
			$data['failed_in_bangla'] = $failed_in_bangla;
			$data['failed_in_english'] = $failed_in_english;
			$data['failed_in_group'] = $failed_in_group;
			$data['failed_in_optional'] = $failed_in_optional;
			$data['failed_in_main'] = $failed_in_main;



			/* dividen points */
			$without_optional = ($bangla_point_val+$english_point_val+$group_sub_points+$main_sub_points)/4;
			$with_optional = ($bangla_point_val+$english_point_val+$group_sub_points+$main_sub_points+$optional_sub_val)/4;
			$data['without_optional'] = $without_optional;
			$data['with_optional'] = $with_optional;
			

			/* dividen marks */
			$without_opt_mark = $mark_bangla+$mark_english+$mark_group+$mark_main;
			$with_opt_mark = $mark_bangla+$mark_english+$mark_group+$mark_main+$mark_optional;
			$data['without_opt_mark'] = $without_opt_mark;
			$data['with_opt_mark'] = $with_opt_mark;

			if(!count($data['optional_sub'])) {
				$data = array();
				$data_val['optional_not_found'] = "Optional subject result did not submitted yet. Please insert this student'\s optional result to view full result sheet";
				$this->load->view('admin/report/progress_report', $data_val);
				return false;
			}

			if(count($data['get_record'])) {
				$data['class_name'] = $data['get_record'][0]->CLASS_NAME;
				$data['section_name'] = $data['get_record'][0]->SECTION_NAME;
				$data['student_name'] = $data['get_record'][0]->NAME;
				$data['exam_name'] = $data['get_record'][0]->EXAM_NAME;

				// data passing for print option
				$data['class_id'] = $class_id;
				$data['section_id'] = $section_id;
				$data['student_id'] = $student_id;
				$data['exam_id'] = $exam_id;
				$data['year'] = $year;
			}else{
				$data = array();
			}

			$this->load->view('admin/report/progress_report', $data);
			return false;
		}
		else {
			$data = array();
			$this->load->view('admin/report/progress_report', $data);
		}

	}

	public function student_id_card($data=null) {
		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'student_id_card');
		$this->webspice->permission_verify('student_id_card');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
				'STUDENT_DATA_ID'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('class_id', 'Class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id', 'Section name','required|trim|xss_clean');
		$this->form_validation->set_rules('student_id', 'Student name','required|trim|xss_clean');
		$this->form_validation->set_rules('year', 'Year','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/certificates/student_id_card', $data);
			return FALSE;
		}
		else {

			$data = array();

			$class_id = $this->input->post("class_id");
			$section_id = $this->input->post("section_id");
			$student_id = $this->input->post("student_id");
			$year = $this->input->post("year");

			//dd($student_id);

			$data['get_record'] = $this->db->query("SELECT si.*, sd.*, c.CLASS_NAME, s.SECTION_NAME FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID=sd.STUDENT_ID INNER JOIN class AS c ON c.CLASS_ID=sd.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=sd.SECTION_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".$year."' AND sd.STUDENT_DATA_ID='".$student_id."'")->result();
			//dd($data);

			// dd($data);
			if(count($data['get_record'])) {
				$data['class_name'] = $data['get_record'][0]->CLASS_NAME;
				$data['student_name'] = $data['get_record'][0]->NAME;
				$data['public_id'] = $data['get_record'][0]->PUBLIC_ID;
				$data['father_name'] = $data['get_record'][0]->FATHER_NAME;
				$data['roll_no'] = $data['get_record'][0]->ROLL_NO;
				$data['phone'] = $data['get_record'][0]->PHONE;
				$data['blood_group'] = $data['get_record'][0]->BLOOD_GROUP;
				$data['year'] = $year;
				$data['total_sub'] = $this->db->query("SELECT COUNT(*) AS COUNT FROM subject WHERE CLASS_ID=".$class_id)->row()->COUNT;
				
				// additional data for print option
				$data['class_id'] = $class_id;
				$data['section_id'] = $section_id;
				$data['student_id'] = $student_id;
				$data['year'] = $year;

			}else{
				$data = array();
				$data['has_data_err'] = "Sorry, There is no data to show";
				$this->load->view('admin/certificates/student_id_card', $data);
				return false;
			}

			$this->load->view('admin/certificates/student_id_card_view', $data);
			return false;

			$this->webspice->force_redirect($url_prefix.'manage_testimonial/view_testimonial/'.$this->webspice->encrypt_decrypt($my_data, 'encrypt') );
			return false;
		}
	}

	public function print_student_id_card() {
		
		$data = array();
		$class_id = $this->uri->segment(2);
		$student_id = $this->uri->segment(3);
		$year = $this->uri->segment(4);

		$data['get_record'] = $this->db->query("SELECT si.*, sd.*, c.CLASS_NAME, s.SECTION_NAME FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID=sd.STUDENT_ID INNER JOIN class AS c ON c.CLASS_ID=sd.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=sd.SECTION_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".$year."' AND sd.STUDENT_DATA_ID='".$student_id."'")->result();

			$data['class_id'] = $class_id;
			$data['student_id'] = $student_id;
			$data['year'] = $year;

		$this->load->view("admin/certificates/print_id_card", $data);

		return false;
	}

	public function model_test_report() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'model_test_report');
		$this->webspice->permission_verify('model_test_report');

		if($this->input->post("filter")){
			$data = array();

			$class_id = $this->input->post("class_id");
			// $section_id = $this->input->post("section_id");
			// $student_id = $this->input->post("student_id");
			$exam_id = $this->input->post("exam_id");
			$year = $this->input->post("year");

			// dd($_POST);

			$students = $this->db->query("SELECT si.NAME, si.STUDENT_ID, sd.STUDENT_DATA_ID, sd.CLASS_ID, sd.ROLL_NO FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID=sd.STUDENT_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".$year."'")->result();
			// dd($students);
			// $subjects = $this->db->query("SELECT SUBJECT_ID, SUBJECT_NAME FROM subject WHERE CLASS_ID='".$class_id."' ORDER BY SUBJECT_ID")->result();
			$subjects = $this->db->query("SELECT m.SUBJECT_ID, s.SUBJECT_NAME, s.SUBJECT_ID FROM marks AS m INNER JOIN subject AS s ON m.SUBJECT_ID=s.SUBJECT_ID WHERE m.CLASS_ID='".$class_id."' AND m.EXAM_ID='".$exam_id."' AND m.YEAR='".$year."' GROUP BY m.CLASS_ID, m.SUBJECT_ID ORDER BY m.SUBJECT_ID")->result();
			// dd($subjects);

			/*$highest = array();
			$highest_mark = $this->db->query("SELECT SUM(MARK_OBTAINED) AS HEIGHT_MARK FROM marks WHERE CLASS_ID='".$class_id."' AND EXAM_ID='".$exam_id."' AND YEAR='".$year."' GROUP BY STUDENT_ID")->result();
			foreach($highest_mark as $high_val) {
				$highest[] = $high_val->HEIGHT_MARK;
			}
			dd($highest);*/

			$has_data = $this->db->query("SELECT * FROM marks WHERE CLASS_ID='".$class_id."' AND EXAM_ID='".$exam_id."' AND YEAR=".$year)->result();

			$data = array();

			if(count($has_data)) {
				$data['students'] = $students;
				$data['subjects'] = $subjects;
				$data['exam_id'] = $exam_id;
				$data['class_id'] = $class_id;
				$data['year'] = $year;
				$data['class_name'] = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID='".$class_id."'")->row()->CLASS_NAME;
				$data['exam_name'] = $this->db->query("SELECT EXAM_NAME FROM exam WHERE EXAM_ID='".$exam_id."'")->row()->EXAM_NAME;
			}
			else {
				$data['has_data_err'] = "There is no data to show";
			}

			
			$this->load->view('admin/report/model_test_report', $data);
			return false;
		}
		else {
			$data = array();
			$this->load->view('admin/report/model_test_report', $data);
		}

	}

	public function print_model_test_report() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'print_model_test_report');
		$this->webspice->permission_verify('print_model_test_report');

		$data = array();

		$class_id = $this->uri->segment(2);
		$exam_id = $this->uri->segment(3);
		$year = $this->uri->segment(4);

		// dd($year);

		$students = $this->db->query("SELECT si.NAME, si.STUDENT_ID, sd.STUDENT_DATA_ID, sd.CLASS_ID, sd.ROLL_NO FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID=sd.STUDENT_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".$year."'")->result();

		$subjects = $this->db->query("SELECT m.SUBJECT_ID, s.SUBJECT_NAME, s.SUBJECT_ID FROM marks AS m INNER JOIN subject AS s ON m.SUBJECT_ID=s.SUBJECT_ID WHERE m.CLASS_ID='".$class_id."' AND m.EXAM_ID='".$exam_id."' AND m.YEAR='".$year."' GROUP BY m.CLASS_ID, m.SUBJECT_ID ORDER BY m.SUBJECT_ID")->result();

		$has_data = $this->db->query("SELECT * FROM marks WHERE CLASS_ID='".$class_id."' AND EXAM_ID='".$exam_id."' AND YEAR=".$year)->result();

		$data = array();

		if(count($has_data)) {
			$data['students'] = $students;
			$data['subjects'] = $subjects;
			$data['exam_id'] = $exam_id;
			$data['class_id'] = $class_id;
			$data['year'] = $year;
			$data['class_name'] = $this->db->query("SELECT CLASS_NAME FROM class WHERE CLASS_ID='".$class_id."'")->row()->CLASS_NAME;
			$data['exam_name'] = $this->db->query("SELECT EXAM_NAME FROM exam WHERE EXAM_ID='".$exam_id."'")->row()->EXAM_NAME;
		}
		else {
			$data['has_data_err'] = "There is no data to show";
		}

		
		$this->load->view('admin/report/print_model_test_report', $data);
		return false;


	}

	public function student_id_card_back() {
		$data = array();
		$class_id = $this->uri->segment(2);
		$student_id = $this->uri->segment(3);
		$year = $this->uri->segment(4);
		//dd($class_id);
		//die();
		$data['get_record'] = $this->db->query("SELECT si.*, sd.*, c.CLASS_NAME, s.SECTION_NAME FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID=sd.STUDENT_ID INNER JOIN class AS c ON c.CLASS_ID=sd.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=sd.SECTION_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".$year."' AND sd.STUDENT_DATA_ID='".$student_id."'")->result();

			$data['class_id'] = $class_id;
			$data['student_id'] = $student_id;
			$data['year'] = $year;

		$this->load->view("admin/certificates/student_id_card_back_view", $data);

		return false;
	}

	public function print_student_id_card_back() {
		
		$data = array();
		$class_id = $this->uri->segment(2);
		$student_id = $this->uri->segment(3);
		$year = $this->uri->segment(4);

		$data['get_record'] = $this->db->query("SELECT si.*, sd.*, c.CLASS_NAME, s.SECTION_NAME FROM student_info AS si INNER JOIN student_data AS sd ON si.STUDENT_ID=sd.STUDENT_ID INNER JOIN class AS c ON c.CLASS_ID=sd.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=sd.SECTION_ID WHERE sd.CLASS_ID='".$class_id."' AND sd.YEAR='".$year."' AND sd.STUDENT_DATA_ID='".$student_id."'")->result();

			$data['class_id'] = $class_id;
			$data['student_id'] = $student_id;
			$data['year'] = $year;

		$this->load->view("admin/certificates/print_student_id_card_back", $data);

		return false;
	}

}