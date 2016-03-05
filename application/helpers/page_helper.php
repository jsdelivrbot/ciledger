<?php
defined('BASEPATH') OR exit('No direct script access allowed');


if(!function_exists('setPagetitle')) {

	function setPagetitle($data) {

		return array('title' => $data);

	}

}