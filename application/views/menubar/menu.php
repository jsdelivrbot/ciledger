
<!-- START MENUBAR -->
<div class="ui compact menu fixed">
	<div class="ui container">
		<a href="<?php echo site_url('Home');?>" class="header item">
			<label>Social Housing Financing System</label>
		</a>
			<a class="item"> Home</a>
			<!-- <a class="item"> Members</a> -->
			<div class="ui simple dropdown item">
				Members<i class="dropdown icon"></i>
				<div class="menu">
					<a href="<?php echo site_url('/Members/addmembers');?>"class="item">Add Members</a>
					<a class="item">Member Master List</a>
				</div>
			</div>
			<div class="ui simple dropdown item">
				House<i class="dropdown icon"></i>
				<div class="menu">
					<a class="item" href="<?php echo site_url('/House/addHouse');?>">Add House</a>
					<a class="item" href="<?php echo site_url('/House/viewHouseList');?>">House Master List</a>
				</div>
			</div>
			<div class="right menu">
				<a class="item" href="<?php echo site_url('Auth/logout');?>"> Logout</a>
			</div>
	</div>
</div>
<!-- END MENUBAR -->
