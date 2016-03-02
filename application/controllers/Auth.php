<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Auth_model');

	}

	public function login() {

		$post = $this->input->post();
		 if($this->Auth_model->getAuth($post)) {
		 	redirect('/Home/index');
		 }
		 else $this->load->view('login/login',array('success'=>false,'error_msg'=>'Invalid username or password'));
		
	}

}