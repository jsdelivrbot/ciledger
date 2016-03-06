<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Validation');
		$this->load->helper('page_helper');
		
	}

	public function index() {

		$this->load->view('includes/includes',setPagetitle('Home'));
		$this->parser->parse('menubar/menu',getMenubarlink());
		
	}

}