<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Site_Controller extends CI_Controller {

    public function index() {
        $data = array();
        $data['siteTitle'] = "Welcome Our School";
        $data['sitemenu'] = "home";
        $data['notice'] = $this->db->order_by("notice_id", "desc")->get("noticeboard", 5)->result();
        //$data['teacher'] = $this->db->get_where('teacher', array("teacher_type"=>"Senior_Teacher  AND Senior_Teacher"))->result_array();
        //print_r($data['teacher']);
        $data['msg'] = $this->db->order_by("message_id", "desc")->get("message", 1)->result_array();
        $data['content'] = $this->load->view("home", $data, TRUE);
        $this->load->view('master', $data);
    }

}