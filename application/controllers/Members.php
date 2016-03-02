<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Members extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Member_model');

	}

	public function addmembers() {

		$this->load->view('includes/includes');
		$this->load->view('menubar/menu');
		$this->load->view('members/addmembers');
		$this->load->view('footer/footer-scripts');
	}

	public function setMembers() {

		$data = $this->input->post();
		$request = $this->Member_model->setMembers($data);
		if($request['success']) {
			$this->addmembers();
		}
		else show_error($request['message'],500);
	}

}