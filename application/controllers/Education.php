<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Education extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');

        $this->conf = array(
            'start_day'         => 'sunday',
            'show_next_prev'    => true,
            'next_prev_url'     => base_url() . 'Education/display',
            'day_type'     => 'long'
        );
        $this->conf['template'] = '

           {table_open}<table border="0" cellpadding="0" cellspacing="0" class="calendar">{/table_open}

           {heading_row_start}<tr class="trmonth">{/heading_row_start}

           {heading_previous_cell}<th><a href="{previous_url}">&lt;&lt;</a></th>{/heading_previous_cell}
           {heading_title_cell}<th class="monthnm" colspan="{colspan}">{heading}</th>{/heading_title_cell}
           {heading_next_cell}<th><a class="monnxt" href="{next_url}">&gt;&gt;</a></th>{/heading_next_cell}

           {heading_row_end}</tr>{/heading_row_end}

           {week_row_start}<tr class="trheader">{/week_row_start}
           {week_day_cell}<td>{week_day}</td>{/week_day_cell}
           {week_row_end}</tr>{/week_row_end}

           {cal_row_start}<tr class="days">{/cal_row_start}
           {cal_cell_start}<td class="day">{/cal_cell_start}

           {cal_cell_content}
                <div class="day_num">{day}</div>
                <div class="content">{content}</div>
           {/cal_cell_content}
           {cal_cell_content_today}
                <div class="day_num highlight">{day}</div>
                <div class="content">{content}</div>
           {/cal_cell_content_today}

           {cal_cell_no_content}<div class="day_num">{day}</div>{/cal_cell_no_content}
           {cal_cell_no_content_today}<div class="day_num highlight">{day}</div>{/cal_cell_no_content_today}

           {cal_cell_blank}&nbsp;{/cal_cell_blank}

           {cal_cell_end}</td>{/cal_cell_end}
           {cal_row_end}</tr>{/cal_row_end}

           {table_close}</table>{/table_close}

        ';

    }
    
    public function welcome_msg() {
    	$this->load->view("welcome");
    	return false;
    }

    public function display($year=null, $month=null) {
        $data = array();
        $data['siteTitle'] = "Academic Calender";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();

        $url_prefix = $this->webspice->settings()->site_url_prefix;

        if(!$year) {
            $year = date("Y");
        }
        if(!$month) {
            $month = date("m");
        }

        if($day = $this->input->post('day')) {
            $this->update_calendar_data("$year-$month-$day", $this->input->post('data'));
        }

        $data['calendar'] = $this->generate($year, $month);
        $data['content'] = $this->load->view("academic_calender", $data, TRUE);
        $this->load->view('master', $data);

    }

    public function generate($year, $month) {

        $this->load->library("calendar", $this->conf);

        $cal_data = $this->get_calendar_data($year, $month);
        // dd($cal_data);

        return $this->calendar->generate($year, $month, $cal_data);

    }

    public function get_calendar_data($year, $month) {

        $query = $this->db->select('DATE, DATA')->from('calendar')->like('DATE', "$year-$month", 'after')->get();
        $cal_data = array();

        foreach($query->result() as $row) {
            $cal_data[substr($row->DATE, 8, 2)] = $row->DATA;
        }
        return $cal_data;

    }

    /*public function index() {
        dd("index");
        $data = array();
        $data['siteTitle'] = "Welcome Our School";
        $data['sitemenu'] = "home";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        //$data['teacher'] = $this->db->get_where('teacher', array("teacher_type"=>"Senior_Teacher  AND Senior_Teacher"))->result_array();
        //print_r($data['teacher']);
        $data['msg'] = $this->db->order_by("message_id", "desc")->get("message", 1)->result_array();
        $data['content'] = $this->load->view("home", $data, TRUE);
        $this->load->view('master', $data);
    }*/

    public function academic_info() {
        $data = array();
        $data['siteTitle'] = "Academic info";
        $data['sitemenu'] = "Academic info";
        $data['exam'] = $this->db->order_by("exam_id", "desc")->get("exam")->result();
        $data['grade'] = $this->db->order_by("grade_id", "asc")->get("grade")->result();
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("academic_info", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function senior_section() {
        $data = array();
        $data['siteTitle'] = "Senior Teacher";
        $data['sitemenu'] = "senior_teacher";
        $data['teacher'] = $this->db->order_by("TEACHER_ID", "ASC")->get("teacher")->result();
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("senior_teacher", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function junior_section() {
        $data = array();
        $data['siteTitle'] = "Junior Teacher";
        $data['sitemenu'] = "junior_teacher";
        $data['teacher'] = $this->db->order_by("TEACHER_ID", "ASC")->get("teacher")->result();
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("junior_teacher", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function single_teacher() {
        $id = $this->input->post("views");
        //echo $id;
        $data = array();
        $data['siteTitle'] = "Teacher";
        $data['sitemenu'] = "teacher";
        $data['teacher'] = $this->db->get_where('teacher', array("teacher_id" => $id))->row_array();
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        // print_r($data['teacher']);
        $data['content'] = $this->load->view("single_teacher", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function all_teacher() {
        $id = $this->input->post("views");
        //echo $id;
        $data = array();
        $data['siteTitle'] = "All Teacher";
        $data['sitemenu'] = "teacher";
        $data['teacher'] = $this->db->order_by("TEACHER_ID", "ASC")->get("teacher")->result();
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        // print_r($data['teacher']);
        $data['content'] = $this->load->view("all_teacher", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function notice() {
        // dd("Hello World");
        $data = array();
        $data['siteTitle'] = "Notice";
        $data['sitemenu'] = "notice";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard")->result();
        $data['content'] = $this->load->view("notice", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function single_notice() {
        $id = $this->uri->segment(2);
        $data = array();
        $data['siteTitle'] = "Sigle Notice";
        $data['sitemenu'] = "single_notice";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['sglnotice'] = $this->db->get_where('noticeboard', array("notice_id" => $id))->row();
        
        //dd($data['sglnotice']);
        $data['content'] = $this->load->view("single-notice", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function syllabus() {
        $data = array();
        $data['siteTitle'] = "Syllabus";
        $data['sitemenu'] = "syllabus";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['syllabus'] = $this->db->order_by("file_id", "desc")->get("files")->result();
        $data['content'] = $this->load->view("syllabus", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function routine() {
        $data = array();
        $data['siteTitle'] = "Routine";
        $data['sitemenu'] = "routine";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['class'] = $this->db->select("*")->from("class_routine")->group_by("SECTION_ID")->get()->result();
        $data['content'] = $this->load->view("routine", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function class_wise_routine() {
        $id = $this->uri->segment(2);
        //echo $id;
        $data = array();
        $data['siteTitle'] = "Class Wise Routine";
        $data['sitemenu'] = "routine";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['section_id'] = $id;
        $sql = $this->db->query("SELECT s.SECTION_NAME, c.CLASS_NAME FROM section AS s INNER JOIN class AS c ON s.CLASS_ID=c.CLASS_ID WHERE s.SECTION_ID=" . $data['section_id'])->row();
        $data['section_name'] = $sql->SECTION_NAME;
        $data['class_name'] = $sql->CLASS_NAME;
        //echo "<pre>";
        //print_r($data['routine']);
        $data['content'] = $this->load->view("class_wise_routine", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function gallery() {
        $data = array();
        $data['siteTitle'] = "Gallery";
        $data['sitemenu'] = "gallery";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['gallery'] = $this->db->order_by("image_id", "desc")->get("gallery")->result();
        $data['content'] = $this->load->view("gallery", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function online_education() {
        $data = array();
        $data['siteTitle'] = "Online Education";
        $data['sitemenu'] = "online education";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("online_education", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function results() {
        $data = array();
        $data['siteTitle'] = "Results";
        $data['sitemenu'] = "results";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['down'] = $this->db->order_by("FILE_ID", "desc")->get("files")->result();
        $data['content'] = $this->load->view("results", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function calendar() {
        $data = array();
        $data['siteTitle'] = "Calender";
        $data['sitemenu'] = "calender";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['staff'] = $this->db->get('staff')->result_array();
        $data['content'] = $this->load->view("calender", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function contact() {
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $data = array();
        $data['siteTitle'] = "Contact";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("contact", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function video() {
        $data = array();
        $data['siteTitle'] = "Contact";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['video'] = $this->db->order_by("VIDEO_ID", "desc")->get("videos")->result_array();
        $data['content'] = $this->load->view("video", $data, TRUE);
        $this->load->view('master', $data);
    }


    public function playground() {
        $data = array();
        $data['siteTitle'] = "Playground";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("playground", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function dress_code() {
        $data = array();
        $data['siteTitle'] = "Dress Code";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("dress-code", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function ict() {
        $data = array();
        $data['siteTitle'] = "ICT";
        $data['sitemenu'] = "ict";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("ict", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function student_info() {
        $data = array();
        $data['siteTitle'] = "Student Info";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['class'] = $this->db->order_by("class_id", "asc")->get("class")->result();
        $data['content'] = $this->load->view("student-info", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function history() {
        $data = array();
        $data['siteTitle'] = "History";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['content'] = $this->load->view("history", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function testimonial() {
        $data = array();
        $data['siteTitle'] = "Testimonial";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
         $data['syllabus'] = $this->db->order_by("file_id", "desc")->get("files", 1)->result();
        $data['content'] = $this->load->view("testimonial", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function cultural() {
        $data = array();
        $data['siteTitle'] = "Cultural";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
         $data['syllabus'] = $this->db->order_by("file_id", "desc")->get("files", 1)->result();
        $data['content'] = $this->load->view("cultural", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function hygiene_sanitation() {
        $data = array();
        $data['siteTitle'] = "Hygiene sanitation";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
         $data['syllabus'] = $this->db->order_by("file_id", "desc")->get("files", 1)->result();
        $data['content'] = $this->load->view("hygiene_sanitation", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function academic_calender() {
        $data = array();
        $data['siteTitle'] = "Academic Calender";
        $data['sitemenu'] = "contact";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        $data['syllabus'] = $this->db->order_by("file_id", "desc")->get("files", 1)->result();
        $data['content'] = $this->load->view("academic_calender", $data, TRUE);
        $this->load->view('master', $data);
    }

    public function insert() {

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_emails');
        $this->form_validation->set_rules('phone', 'Mobile number', 'required|is_natural');
        $this->form_validation->set_rules('sub', 'Subject', 'required');
        $this->form_validation->set_rules('msg', 'Message', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->contact();
        } else {
            $udata = array(
                "NAME" => $this->input->post("name"),
                "EMAIL" => $this->input->post("email"),
                "MOBILE" => $this->input->post("phone"),
                "SUBJECT" => $this->input->post("sub"),
                "MESSAGE" => $this->input->post("msg"),
                "CREATED_DATE" => date("Y-m-d"),
                "STATUS" => "7"
            );
            if ($this->db->insert("user_data", $udata)) {
                $this->session->set_flashdata('msg', 'Thank You.');
                $this->webspice->force_redirect('education/contact');
            } else {
                $this->session->set_flashdata('msg', 'Server Busy Try Agin.');
                $this->webspice->force_redirect('education/contact');
            }
            //$this->session->set_userdata($mdata);
            //redirect(base_url() . "registration", "refresh");
        }
    }

}
