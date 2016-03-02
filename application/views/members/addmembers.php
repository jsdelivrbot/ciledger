<!-- START CONTENT -->
<div class="ui raised very padded container segment" id="mainform">
	<form class="ui form">
		<h4 class="ui dividing header">Members Information</h4>
		<div class=" field">
			<label>Name</label>
			<div class="two fields">
				<div class="field">
					<input type="text" name="members_firstname" placeholder="First Name" />
				</div>
				<div class="field">
					<input type="text" name="members_lastname" placeholder="Last Name" />
				</div>
			</div>
			<div class="field">
				<label>Members Account No.</label>
				<div class="sixteen wide field" >
					<input type="text" name ="members_account" />
				</div>
			</div>
			<div class="field">
				<div class="two fields">
					<div class="field">
						<label> Members Old Address</label>
						<div class="sixteen wide field">
							<input type="text" name="old_members_address" />
						</div>
					</div>
					<div class="field">
						<label>No of years</label>
						<div class="four wide field">
							<input type="text" name="old_members_address_no_of_years" />
						</div>
					</div>
				</div>
			</div>
			<div class="field">
				<div class="two fields">
					<div class="field">
						<label> Members New Address</label>
						<div class="sixteen wide field">
							<input type="text" name="new_members_address" />
						</div>
					</div>
					<div class="field">
						<label>No of years</label>
						<div class="four wide field">
							<input type="text" name="new_members_address_no_of_years" />
						</div>
					</div>
				</div>
			</div>
			<div class="field">
				<div class="two fields">
					<div class=" field">
					<label>Gender</label>
						<select class="ui dropdown search" name="gender">
							<option value="">Gender</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</div>
					<div class= "field">
					<label>Birthdate</label>
					<div class="ui calendar" id="calender_birthdate">
					    <div class="ui input left icon">
					      <i class="calendar icon"></i>
					      <input type="text" placeholder="Date" name="birthdate" />
					    </div>
					</div>
					</div>
				</div>
			</div>
			<div class="field">
				<div class="four fields">
					<div class="field">
						<label>Civil Status</label>
						<select class="ui dropdown search" name="civil_status">
							<option value="">Civil Status</option>
							<option value="Single">Single</option>
							<option value="Married">Married</option>
							<option value="Live-in">Live-in</option>
							<option value="Widow">Widow</option>
							<option value="Single Parent">Single Parent</option>
							<option value="Separated">Separated</option>
						</select>
					</div>
					<div class="field">
						<label>Dependents</label>
						<input type="text" name="dependents"/>
					</div>
					<div class="field">
						<label>Religion</label>
						<select class="ui dropdown search fluid religion" name="religion">
							<option value="">Religion</option>
							<option value="Roman Catholic">Roman Catholic</option>
							<option value="Protestant">Protestant</option>
							<option value="Baptist">Baptist</option>
							<option value="Born Again">Born Again</option>
						</select>
					</div>
					<div class="field">
						<label>Monthly Income</label>
						<!-- <input type="text" name="monthly_income" /> -->
						<div class="ui  input">
						  <div class="ui basic label">P</div>
						  <input  type="text" name="monthly_income" placeholder="Amount">
						  <!-- <div class="ui basic label">.00</div> -->
						</div>
					</div>
				</div>
			</div>
			<div class="field">
				<div class="two fields">
					<div class="field">
						<label>Previous Occupation</label>
						<input type="text" name="prev_occupation" />
					</div>
					<div class="field">
						<label>Present Occupation</label>
						<input type="text" name="pres_occupation" />
					</div>
				</div>
			</div>
			<!-- <div class="field">
				<div class="three fields">
					<div class="field">
						<label>Block no.</label>
						<input type="text" name="block_no" />
					</div>
					<div class="field">
						<label>Lot no.</label>
						<input type="text" name="lot_no" />
					</div>
					<div class="field">
						<label>Area(sq.m.)</label>
						<input type="text" name="area" />
					</div>
				</div>
			</div> -->
			<div class="field">
				<div class="three fields">
					<div class="field">
						<label>House Status</label>
						<select class="ui dropdown search fluid " name="house_status">
							<option value="">House Status</option>
							<option value="Partially Damage">Partially Damage</option>
							<option value="Danger Zone">Danger Zone</option>
							<option value="Totally Damage">Totally Damage</option>
							<option value="Heavily Flooded">Heavily Flooded</option>
							<option value="Moderately Flooded">Moderately Flooded</option>
							<option value="Non-Buildable">Non-Buildable</option>
						</select>
					</div>
					<div class="field">
						<label>Status</label>
						<select class="ui dropdown search fluid" name="status">
							<option value="">Status</option>
							<option value="Owner">Owner</option>
							<option value="Renter">Renter</option>
							<option value="Sharer">Sharer</option>
							<option value="Caretaker">Caretaker</option>
						</select>
					</div>
					<div class="field">
						<label>Access Card</label>
							<select class="ui dropdown search multiple fluid " name="access_card[]">
								<option value="">Access card</option>
								<option value="None">None</option>
								<option value="Tabang">Tabang</option>
								<option value="DSWD">DSWD</option>
								<option value="CSWD">CSWD</option>
							</select>
					</div>
				</div>
			</div>
		</div>
		<div class="field">
			<button class ="ui button primary" id="submit">Submit</button>
		</div>
	</form>

</div>
<!-- END CONTENT -->

