<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_model extends CI_Model {

	public function __construct() {

		parent::__construct();

	}

	public function getAuth($user_details) {

		$this->db->select(array('user_name','user_fname','user_lname'));
		$result = $this->db->get_where('tbluser',array('user_name'=>$user_details['username'],'user_password'=>md5($user_details['password']),'deleted'=>0));
		$row = $result->row_array();
		
		if(!empty($row)) {
			$this->session->set_userdata($row);
			return true;
		}
		return false;

	}

}