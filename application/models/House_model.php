<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House_model extends CI_Model() {

	public function _construct() {

		parent::__construct();

	}

	public function setHouseDetail($house_detail) {

		$this->_tblhouse($house_detail);

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