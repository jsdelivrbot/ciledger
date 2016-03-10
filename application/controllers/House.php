<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class House extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->model('Validation');
		$this->load->model('House_model');
		$this->load->helper('response_helper');
		$this->load->helper('page_helper');
		$this->load->library('pagination');

	}

	public function addHouse() {

		$this->load->view('includes/includes',setPagetitle('House'));
		$this->parser->parse('menubar/menu',getMenubarlink());
		$this->load->view('house/addhouse');
		$this->load->view('house/modal');
		$this->load->view('footer/footer-scripts-house');

	}

	public function viewHouseList() {


		$data = array_merge(
			array('house_block_no' => $this->House_model->getBlock()),
			array('house_lot_no' => $this->House_model->getLot()),
			array('house_area',$this->House_model->getArea()),
			$this->getPagination()
		);

		#die(var_dump(($this->House_model->getBlock())));

		$this->load->view('includes/includes',setPagetitle('House'));
		$this->parser->parse('menubar/menu',getMenubarlink());
		$this->load->view('house/house_list',$data);
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

			die(json_encode(response($success,$message)));

		} else die(json_encode(response(false,'Cannot process request, Please try again'))); 

	}

	/*
	*
	* Method for pagination configs
	*
	*/

	private function getPaginationConfig() {

		$total_rows = $this->House_model->getHouseCount();

		$paginationConfig = array(
			'base_url'=> site_url('House/viewHouseList/'),
			'total_rows' => $total_rows,
			'per_page' => 10,
			'use_page_numbers' => TRUE,
			'num_links' => ($total_rows / 10),
			'full_tag_open' => '<div class="ui  pagination menu">',
			'full_tag_close' => '</div>',
			'num_tag_open' => '<li class="item">',
			'num_tag_close' => '</li>',
			'cur_tag_open' => '<li class="active item">',
			'cur_tag_close' => '</li>',
			'next_tag_open' => '<li class=" item">',
			'next_tag_close' => '</li>',
			'prev_tag_open' => '<li class=" item">',
			'prev_tag_close' => '</li>',
			'first_tag_open' => '<li class="active item">',
			'first_tag_close' => '</li>',
			'last_tag_open' => '<li class="active item">',
			'last_tag_close' => '</li>',
			// 'next_link' => '<i class="right chevron icon"></i>',
			// 'prev_link' => '<i class="left chevron icon"></i>'
		);

		return $paginationConfig;

	}

	private function getPagination() {

		$page;
		$paginationConfig = $this->getPaginationConfig();
		$this->pagination->initialize($paginationConfig);
		
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

		$data['results'] = $this->House_model->getPaginationHouseList($paginationConfig['per_page'], $page); 
		$data['pagination'] = $this->pagination->create_links();
		

		return $data;

	}


	public function testmethod() {

		print_r($this->House_model->getBlock());

	}


}