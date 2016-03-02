<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Member_model extends CI_Model {

	public function __construct() {

		parent::__construct();

	}

	public function setMembers($data) {
		
		if(!empty($data) || isset($data)) {
			$this->db->trans_begin();
			$last_member_id =  $this->settblMembers($data);
			$this->settblMember_house_status($data);
			$this->settblMember_access_card($data,$last_member_id);

			if($this->db->trans_status() == false) {
				$this->db->trans_rollback();
				return array('success'=>false,'message'=>'Cannot process request, Please try again');
			}
			else {
				$this->db->trans_commit();
				return array('success'=>true,'message'=>'Member successfully added!');
			}
		}else return array('success'=>false,'message'=>'Cannot process request, Please try again');
	
	}


	private function settblMembers($data) {

		$data = array(
			'member_fname' => $data['members_firstname'] ,
			'member_lname' => $data['members_lastname'],
			'member_account_no' => $data['members_account'],
			'member_old_address' => $data['old_members_address'],
			'member_old_address_no_of_years' => $data['old_members_address_no_of_years'],
			'member_new_address' => $data['new_members_address'],
			'member_new_address_no_of_years' => $data['new_members_address_no_of_years'],
			'member_gender' => $data['gender'],
			'member_bdate' => $this->_dateFormat($data['birthdate']) ,
			'member_civil_status' => $data['civil_status'],
			'member_dependents' => $data['dependents'],		
			'member_religion' => $data['religion'],
			'member_monthly_income' => $data['monthly_income'],
			'member_previous_occupation' => $data['prev_occupation'],
			'member_present_occupation' => $data['pres_occupation'],
		);

		$this->db->insert('tblmembers',$data);
		return $this->db->insert_id();
	}

	private function settblMember_house_status($data) {

		$data = array(
			'house_status' =>$data['house_status'] ,
			'house_member_status' => $data['status'],
		);

		$this->db->insert('tblmember_house_status',$data);

	}

	private function settblMember_access_card($data,$last_member_id) {
		$access_card = array();
		$access_card = $data['access_card'];
		
		if(!empty($last_member_id) || isset($last_member_id)) {

			$this->db->select("*");
			$this->db->from('tblaccess_card');
			$this->db->where_in('access_card_name',$access_card);
			$SQL = $this->db->get();

			if($SQL->num_rows() > 0 ) {
				foreach ($SQL->result() as $row) {
					$this->db->insert('tblmember_access_card',array('member_id'=>$last_member_id,'access_card_id'=>$row->access_card_id));
				}
			}
		}
	}

	private function _dateFormat($date) {

		return date('Y-m-d',strtotime($date));

	}
}