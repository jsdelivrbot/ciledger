<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House_model extends CI_Model {

	public function _construct() {

		parent::__construct();
		$this->load->helper('response_helper');

	}

	public function setHouseDetail($house_detail) {

		$success = false;
		$message = 'Cannot process request, Please try again';

		if(!empty($house_detail) || isset($house_detail)) {
			
			if($this->checkHouseDetail($house_detail)) {

				$this->db->trans_begin();
				$this->_tblhouse($house_detail);
				if($this->db->trans_status() == false) {
					$this->db->trans_rollback();
					return response($success,$message);
				}
				else {
					$this->db->trans_commit();
					return response(true,'House successfully added!');
				}
			
			}else return response(false,'House detail already exist');
				
		}else
			return response($success,$message);
		
	}

	public function getHouseCount() {

		return $this->db->count_all('tblhouse');

	}


	public function getPaginationHouseList($limit, $start) {

		$data;
		$query = "SELECT * FROM tblhouse  where deleted = 0 order by house_block_no limit {$start}, {$limit}";
		$SQL = $this->db->query($query);
		
		if($SQL->num_rows() > 0) {

			foreach($SQL->result() as $row) {

				$data[] = $row;

			}

			return $data;

		} else return $data;

	}


	public function getBlock() {

		$data;
		$this->db->select('house_block_no');
		$SQL = $this->db->get_where('tblhouse',array('deleted' => 0));

		if($SQL->num_rows() > 0) {

			foreach ($SQL->result_array() as $value) {
				
				$data[] = $value;

			}

			return $data;

		} return false;

	}


	public function getLot() {

		
		$this->db->select('house_lot_no');
		return $this->db->get_where('tblhouse',array('deleted' => 0))->result_array();

	}


	public function getArea() {

		
		$this->db->select('house_area');
		return $this->db->get_where('tblhouse',array('deleted' => 0))->result_array();

	}


	private function _tblhouse($house_detail) {

		if(!empty($house_detail) || isset($house_detail)) {

			$data = array(
			'house_block_no' => $house_detail['house_block_no'],
			'house_lot_no' => $house_detail['house_lot_no'],
			'house_area' => $house_detail['house_area']
			);

			$this->db->insert('tblhouse',$data);

		}		

	}

	private function checkHouseDetail($house_detail) {

		/* returns true if house is available */

		$sql = $this->db->get_where('tblhouse',array_merge($house_detail,array('deleted'=>0)));

		return (($sql->num_rows() > 0) ? FALSE : TRUE);
		
	}

}