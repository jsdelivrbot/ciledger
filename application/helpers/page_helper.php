<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/* Helper for setting page title */

if(!function_exists('setPagetitle')) {

	function setPagetitle($data) {

		return array('title' => $data);

	}

}


/* Helper for setting menubar links */

if(!function_exists('getMenubarlink')) {

	function getMenubarlink() {

		return array(

			'home' => setSiteUrl('Home'),
			'addmembers' => setSiteUrl('/Members/addmembers'),
			'addhouse' => setSiteUrl('/House/addHouse'),
			'viewHouseList' => setSiteUrl('/House/viewHouseList'),
			'logout' => setSiteUrl('Auth/logout')
		
		);

	}

}


/* Helper for setting site url */

if(!function_exists('setSiteUrl')) {

	function setSiteUrl($url = null) {

		return site_url($url);

	}

}