<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House_model extends CI_Model {

	public function _construct() {

		parent::__construct();

	}

	public function setHouseDetail($house_detail) {

		$success = false;
		$message = 'Cannot process request, Please try again';

		if(!empty($house_detail) || isset($house_detail)) {
			$this->db->trans_begin();
			$this->_tblhouse($house_detail);
			if($this->db->trans_status() == false) {
				$this->db->trans_rollback();
			}
			else {
				$success = true;
				$message = 'House successfully addded!';
				$this->db->trans_commit();
			}
			return array('success'=> $success,'message'=> $message);
		}else
			return array('success' => $success, 'message' => $message);
		
	}

	private function _tblhouse($house_detail) {

		$data = array(
			'house_block_no' => $house_detail['block_no'],
			'house_lot_no' => $house_detail['lot_no'],
			'house_area' => $house_detail['area']
			);

		$this->db->insert('tblhouse',$data);

	}

}