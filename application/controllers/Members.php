<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Members extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Validation');
		$this->load->model('Member_model');
		$this->load->helper('response_helper');
		$this->load->helper('page_helper');

	}

	public function addmembers() {

		$this->load->view('includes/includes',setPagetitle('Members'));
		$this->parser->parse('menubar/menu',getMenubarlink());
		$this->load->view('members/addmembers');
		$this->load->view('members/modal');
		$this->load->view('footer/footer-scripts');
	}

	public function setMembers() {

		$data = $this->input->post();
		$request = $this->Member_model->setMembers($data);
		if($request['success']) die(json_encode(response(true,$request['message'])));
		else die(json_encode(response(false,$request['message'])));
		
	}

}