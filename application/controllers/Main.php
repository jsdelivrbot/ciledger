<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->checkAccess();

	}

	public function index() {
		
		$data = array(
			'title' => 'Social Housing Financing System'
		);
		$this->load->view('login/login',$data);
	
	}

	private function checkAccess() {
		
		if($this->session->userdata('user_name')) {
			redirect('Home/index');
		}
		
	}

}