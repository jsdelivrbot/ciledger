<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Validation extends CI_Model {

	public function __construct() {

		parent::__construct();
		$this->checkAccess();

	}

	private function checkAccess() {

		if(!$this->session->userdata('user_name')) {

			redirect('/');

		}

	}

}