<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('House_model');

	}

	public function addHouse() {
		
		$data = array(
			'title' => 'House'
		);

		$this->load->view('includes/includes',$data);
		$this->load->view('menubar/menu');
		$this->load->view('house/addhouse');
		$this->load->view('house/modal');
		$this->load->view('footer/footer-scripts-house');

	}

	public function setHouse() {

		$success;
		$message;
		$data = $this->input->post();
		if(!empty($data) || isset($data)) {

			$request = $this->House_model->setHouseDetail($data);
			if($request['success']) {
				$success = true;
				$message = $request['message'];
			}
			else {
				$success = false;
				$message = $request['message'];	
			}

			die(json_encode(array('success'=>$success,'message'=>$message)));

		} else die(json_encode(array('success'=>false,'message'=> 'Cannot process request, Please try again'))); 

	}

}