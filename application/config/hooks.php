<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Hooks
| -------------------------------------------------------------------------
| This file lets you define "hooks" to extend CI without hacking the core
| files.  Please see the user guide for info:
|
|	https://codeigniter.com/user_guide/general/hooks.html
|
*/

/* Hook for page locking */

$hook['post_controller_constructor'] = array(

	'class' => 'Login_validator',
	'function' => 'checkLogin',
	'filename' => 'login_validator.php',
	'filepath' => 'hooks',
	'params' => array()

);