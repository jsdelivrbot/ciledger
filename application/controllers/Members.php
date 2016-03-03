<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Members extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Member_model');

	}

	public function addmembers() {
		$data = array(
			'title' => 'Members'
		);

		$this->load->view('includes/includes',$data);
		$this->load->view('menubar/menu');
		$this->load->view('members/addmembers');
		$this->load->view('members/modal');
		$this->load->view('footer/footer-scripts');
	}

	public function setMembers() {

		$data = $this->input->post();
		$request = $this->Member_model->setMembers($data);
		if($request['success']) die(json_encode(array('success'=>true,'message'=>$request['message'])));
		else die(json_encode(array('success'=>false,'message'=>$request['message'])));
		
	}

}