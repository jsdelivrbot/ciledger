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

/*

Wrapper function for response

*/

if(!function_exists('_response')) {

	function _response($success = false, $message = "", $others = null, $data = array()) {

		if(!empty($data) || isset($data)) {

			// future code here if additional data is needed

		} else {

			return die(json_encode(response($success, $message, $others)));

		}

	} 

}