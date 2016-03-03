<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House extends CI_Controller {

	public function __construct() {

		parent::__construct();

	}

	public function addHouse() {
		
		$data = array(
			'title' => 'House'
		);

		$this->load->view('includes/includes',$data);
		$this->load->view('menubar/menu');

	}

}