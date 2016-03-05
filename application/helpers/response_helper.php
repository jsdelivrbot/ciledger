<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/*
* Method for returning responses
*
*/
if(!function_exists('response')) {

	function response($success = false, $message = "", $others = null) {

		if(empty($others) || !isset($others)) {

			return array(
				'success' => $success,
				'message' => $message
			);

		}else {

			return array(
				'success' => $success,
				'message' => $message,
				'others' => $others
			);

		}

	}

}