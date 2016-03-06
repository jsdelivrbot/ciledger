<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('/assets/semantic/semantic.min.css');?>">
	<script type="text/javascript" src="<?php echo base_url('/assets/js/jquery.min.js');?>"></script>
	<script type="text/javascript" src="<?php echo base_url('/assets/js/angular/angular.min.js');?>"></script>
	<script type="text/javascript" src="<?php echo base_url('/assets/semantic/semantic.min.js');?>"></script>
</head>
<body>

<div class="ui raised very padded text container segment loginform" style="margin-top:50px">
	<h2 class="ui header">Login</h2>
	<form class="ui form" method="POST" action="<?php echo site_url("/auth/login")?>">
		<div class="field">
			<label>Username:</label>
			<input type="text" name="username" />
		</div>
		<div class="field">
			<label>Password:</label>
			<input type="text" name="password" />
		</div>
		<button class="ui button">Login</button>
	</form>
	<?php if(isset($success)) echo "<div class='ui red message'>{$error_msg}</div>"?>
</div>




</body>


</html>