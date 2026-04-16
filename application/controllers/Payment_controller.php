<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Payment_controller extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
	}

	public function create_payment_category($data=null){

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'create_payment_category');
		$this->webspice->permission_verify('create_payment_category');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'PAYMENT_CAT_ID'=>null,
				'CATEGORY_NAME'=>null,
				'CATEGORY_DESCRIPTION'=>null,
				'CLASS_ID'=>null,
				'AMOUNT'=>null,
				'YEAR' => null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('cat_name','Category name','required|trim|xss_clean');
		$this->form_validation->set_rules('cat_description','description name','required|trim|xss_clean');
		$this->form_validation->set_rules('class_id','class name','required|trim|xss_clean');
		$this->form_validation->set_rules('amount','amount','required|trim|xss_clean');
		if( !$this->form_validation->run() ){
			$this->load->view('admin/create_payment_category', $data);
			return FALSE;
		}


		# get input post
		$input = $this->webspice->get_input('payment_category_id');
		// dd($input);
		
		#duplicate test
		$this->webspice->db_field_duplicate_test("SELECT * FROM payment_category WHERE CATEGORY_NAME=? AND CLASS_ID=?", array($input->cat_name, $input->class_id), 'You are not allowed to add a duplicate cartegory name', 'PAYMENT_CAT_ID', $input->payment_category_id, $data, 'admin/create_payment_category');
		
		# remove cache
		$this->webspice->remove_cache('payment_category');

		# update process
		if( $input->payment_category_id ){

			$sql = "
			UPDATE payment_category SET CATEGORY_NAME=?, CATEGORY_DESCRIPTION=?, CLASS_ID=?, AMOUNT=?, UPDATED_BY=?,UPDATED_DATE=?
			WHERE PAYMENT_CAT_ID=?";
			$this->db->query($sql, array($input->cat_name, $input->cat_description, $input->class_id, $input->amount, $this->webspice->get_user_id(), $this->webspice->now(), $input->payment_category_id));
			
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('routine_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'manage_payment_category');
			return false;
		}
		
		#insert person
		$sql = "
		INSERT INTO payment_category
		(CATEGORY_NAME, CATEGORY_DESCRIPTION, CLASS_ID, AMOUNT, YEAR, CREATED_BY, CREATED_DATE, STATUS)
		VALUES
		( ?, ?, ?, ?, ?, ?, ?, 7 )";
		$this->db->query($sql, array($input->cat_name, $input->cat_description, $input->class_id, $input->amount, date("Y"), $this->webspice->get_user_id(), $this->webspice->now()));

		if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('manage_payment_category',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'manage_payment_category');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'create_payment_category');
	}

	public function manage_payment_category() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_payment_category');
		$this->webspice->permission_verify('manage_payment_category');

		$this->load->database();
		$orderby = 'ORDER BY payment_category.CATEGORY_NAME ASC';
		$groupby = null;
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
		SELECT  * FROM payment_category ";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'payment_category',
				$InputField = array(),
				$Keyword = array('CATEGORY_NAME'),
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



				$this->load->view('admin/print_report/payment/print_payment_category',$data);
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
				$html = $this->load->view('admin/print_report/payment/print_payment_category', $data, true);
				$this->load->library('pdf');
				$pdf = $this->pdf->load();
				$pdf->SetFooter($_SERVER['HTTP_HOST'].'|{PAGENO}|'.date(DATE_RFC822));
				$pdf->WriteHTML($html); // write the HTML into the PDF
				$pdf->Output($pdfFilePath, 'D');
				// dd($pdfFilePath);

				return false;
			break;

			
			case 'edit':
			//dd($this->webspice->encrypt_decrypt($key, 'decrypt'));
				$this->webspice->edit_generator($TableName='payment_category', $KeyField='PAYMENT_CAT_ID', $key, $RedirectController='payment_controller', $RedirectFunction='create_payment_category', $PermissionName='manage_payment_category', $StatusCheck=null, $Log='edit_category');
				return false;
				break;	

			case 'inactive':
				$this->webspice->action_executer($TableName='payment_category', $KeyField='PAYMENT_CAT_ID', $key, $RedirectURL='manage_payment_category', $PermissionName='manage_payment_category', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='payment_category', $Log='inactive_category');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='payment_category', $KeyField='PAYMENT_CAT_ID', $key, $RedirectURL='manage_payment_category', $PermissionName='manage_payment_category', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='payment_category', $Log='active_category');
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM payment_category WHERE PAYMENT_CAT_ID='".$id."' LIMIT 1");
				if($sql) {
					$this->webspice->force_redirect($url_prefix.'manage_payment_category');
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
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_payment_category/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;

		$this->load->view('admin/manage_payment_category', $data);

	}


	public function create_payment($data=null){

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'create_payment');
		$this->webspice->permission_verify('create_payment');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'PAYMENT_ID'=>null,
				'PAYMENT_CAT_ID'=>null,
				'CLASS_ID'=>null,
				'SECTION_ID'=>null,
				'STUDENT_ID'=>null,
				'MONTH' => null,
				'AMOUNT'=>null,
				'YEAR' => null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('payment_cat_id','payment name','required|trim|xss_clean');
		$this->form_validation->set_rules('class_id','class name','required|trim|xss_clean');
		$this->form_validation->set_rules('section_id','section name','required|trim|xss_clean');
		$this->form_validation->set_rules('student_id','student name','required|trim|xss_clean');
		$this->form_validation->set_rules('month','month','required|trim|xss_clean');
		if( !$this->form_validation->run() ){
			$this->load->view('admin/create_payment', $data);
			return FALSE;
		}

		// dd($_FILES);

		# get input post
		$input = $this->webspice->get_input('payment_id');
		// dd($input);
		
		#duplicate test
		$this->webspice->db_field_duplicate_test("SELECT * FROM payment WHERE PAYMENT_CAT_ID=? AND CLASS_ID=? AND SECTION_ID=? AND STUDENT_ID=? AND YEAR=? AND MONTH=?" , array($input->payment_cat_id, $input->class_id, $input->section_id, $input->student_id, date("Y"), $input->month), 'You are not allowed to add a duplicate payment name', 'PAYMENT_ID', $input->payment_id, $data, 'admin/create_payment');
		
		# remove cache
		$this->webspice->remove_cache('payment');

		# update process
		if( $input->payment_id ){

			$sql = "
			UPDATE payment SET PAYMENT_CAT_ID=?, CLASS_ID=?, SECTION_ID=?, STUDENT_ID=?, MONTH=?, AMOUNT=?,  UPDATED_BY=?,UPDATED_DATE=?
			WHERE PAYMENT_ID=?";
			$this->db->query($sql, array($input->payment_cat_id, $input->class_id, $input->section_id, $input->student_id, $input->month, $input->amount, $this->webspice->get_user_id(), $this->webspice->now(), $input->payment_id));
			
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('routine_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'manage_payment');
			return false;
		}
		
		#insert person
		$sql = "
		INSERT INTO payment
		(PAYMENT_CAT_ID, CLASS_ID, SECTION_ID, STUDENT_ID, MONTH, AMOUNT, YEAR, CREATED_BY, CREATED_DATE, STATUS)
		VALUES
		( ?, ?, ?, ?, ?, ?, ?, ?, ?, 7 )";
		$this->db->query($sql, array($input->payment_cat_id, $input->class_id, $input->section_id, $input->student_id, $input->month, $input->amount, date("Y"), $this->webspice->get_user_id(), $this->webspice->now()));

		if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('manage_payment',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'manage_payment');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'create_payment');
	}

	public function manage_payment() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_payment');
		$this->webspice->permission_verify('manage_payment');

		$this->load->database();
		$orderby = 'ORDER BY payment.PAYMENT_CAT_ID ASC';
		//$orderby = null;
		$groupby = ' GROUP BY CLASS_ID, SECTION_ID, YEAR, MONTH ';
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
		SELECT  * FROM payment ";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'payment',
				$InputField = array(),
				$Keyword = array('PAYMENT_CAT_ID'),
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



				$this->load->view('admin/print_report/payment/print_payment',$data);
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
				$html = $this->load->view('admin/print_report/payment/print_payment', $data, true);
				$this->load->library('pdf');
				$pdf = $this->pdf->load();
				$pdf->SetFooter($_SERVER['HTTP_HOST'].'|{PAGENO}|'.date(DATE_RFC822));
				$pdf->WriteHTML($html); // write the HTML into the PDF
				$pdf->Output($pdfFilePath, 'D');
				// dd($pdfFilePath);

				return false;
			break;

			case 'edit':
			 	//dd($this->webspice->encrypt_decrypt($key, 'decrypt'));
				$this->webspice->edit_generator($TableName='payment', $KeyField='PAYMENT_ID', $key, $RedirectController='payment_controller', $RedirectFunction='create_payment', $PermissionName='manage_payment', $StatusCheck=null, $Log='edit_payment');

				return false;
				break;

			case 'inactive':
				$this->webspice->action_executer($TableName='payment', $KeyField='PAYMENT_ID', $key, $RedirectURL='manage_payment', $PermissionName='manage_payment', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='payment', $Log='inactive_payment');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='payment', $KeyField='PAYMENT_ID', $key, $RedirectURL='manage_payment', $PermissionName='manage_payment', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='payment', $Log='active_payment');
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM payment WHERE PAYMENT_ID='".$id."' LIMIT 1");
				if($sql) {
					$this->webspice->force_redirect($url_prefix.'manage_payment');
				}
				return false;
			break;

			case 'view_details':
				$data = array();
				$class_id = $this->webspice->encrypt_decrypt($this->uri->segment(3), 'decrypt');
				$section_id = $this->webspice->encrypt_decrypt($this->uri->segment(4), 'decrypt');
				$year = $this->webspice->encrypt_decrypt($this->uri->segment(5), 'decrypt');
				$month = $this->webspice->encrypt_decrypt($this->uri->segment(6), 'decrypt');
				// dd($month);

				$data['get_record'] = $this->db->query("SELECT * FROM payment WHERE CLASS_ID='".$class_id."'AND SECTION_ID='".$section_id."' AND YEAR='".$year."' AND MONTH='".$month."'")->result();

				// dd($data);

				$this->load->view('admin/view_details_payment', $data);
				return false;
			break;

			case 'print_money_recipt':
				$id = $this->webspice->encrypt_decrypt($this->uri->segment(3), 'decrypt');
				$data = array();
				$data['get_record'] = $this->db->query("SELECT p.*, pc.CATEGORY_NAME, c.CLASS_NAME, si.NAME, s.SECTION_NAME FROM payment AS p INNER JOIN class AS c ON p.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON s.SECTION_ID=p.SECTION_ID INNER JOIN student_data AS sd ON sd.STUDENT_DATA_ID=p.STUDENT_ID INNER JOIN student_info AS si ON si.STUDENT_ID=sd.STUDENT_ID INNER JOIN payment_category AS pc ON pc.PAYMENT_CAT_ID=p.PAYMENT_CAT_ID WHERE PAYMENT_ID=".$id)->row();
				// dd($data);
				$this->load->view('admin/print_report/payment/print_money_recipt',$data);
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
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_payment/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;

		$this->load->view('admin/manage_payment', $data);

	}


	public function payment_report() {

		if($this->input->post("filter")){
			$data = array();

			$class_id = $this->input->post("class_id");
			$section_id = $this->input->post("section_id");
			$student_id = $this->input->post("student_id");
			$year = $this->input->post("year");


			$data['get_record'] = $this->db->query("SELECT p.*, pc.CATEGORY_NAME, c.CLASS_NAME, s.SECTION_NAME, si.NAME , si.STUDENT_ID, sd.STUDENT_ID, sd.STUDENT_DATA_ID FROM payment AS p INNER JOIN payment_category AS pc ON p.PAYMENT_CAT_ID=pc.PAYMENT_CAT_ID INNER JOIN class AS c ON p.CLASS_ID=c.CLASS_ID INNER JOIN section AS s ON p.SECTION_ID=s.SECTION_ID INNER JOIN student_data AS sd ON p.STUDENT_ID=sd.STUDENT_DATA_ID INNER JOIN student_info AS si ON sd.STUDENT_ID=si.STUDENT_ID WHERE p.CLASS_ID='" . $class_id . "' AND p.SECTION_ID='" . $section_id . "' AND p.STUDENT_ID='" . $student_id . "' AND p.YEAR='" . $year . "'")->result();

			// dd($data);
			if(count($data['get_record'])) {
				$data['class_name'] = $data['get_record'][0]->CLASS_NAME;
				$data['section_name'] = $data['get_record'][0]->SECTION_NAME;
				$data['student_name'] = $data['get_record'][0]->NAME;
			}else{
				$data = array();
			}

			$this->load->view('admin/payment_report', $data);
			return false;
		}
		else {
			$data = array();
			$this->load->view('admin/payment_report', $data);
		}

	}


}
?>