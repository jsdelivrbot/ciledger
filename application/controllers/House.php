<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Validation');
		$this->load->model('House_model');
		$this->load->helper('response_helper');
		$this->load->helper('page_helper');

	}

	public function addHouse() {

		$this->load->view('includes/includes',setPagetitle('House'));
		$this->load->view('menubar/menu');
		$this->load->view('house/addhouse');
		$this->load->view('house/modal');
		$this->load->view('footer/footer-scripts-house');

	}

	public function viewHouseList() {



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

			die(json_encode(response($success,$message)));

		} else die(json_encode(response(false,'Cannot process request, Please try again'))); 

	}

}