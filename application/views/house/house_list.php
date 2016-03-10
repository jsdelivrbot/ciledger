<!-- START CONTENT -->

<div class="ui raised very padded container segment" id='mainform'>
	<div class="field">
		<div class="ui form" id="mainFormHouseList">
			<h4 class="ui dividing header">House Master List</h4>
        <div class="field">
          <div class="three fields">
            <div class="field">
                <!-- <input type="text" placeholder="Block no" id="house_block_no" /> -->
                <?php 

                    echo form_dropdown('house_block_no',$house_block_no,'',array('placeholder'=>'Block no','id'=> 'house_block_no','class'=>'ui dropdown'));

                ?>
            </div>
            <div class="field">
              <input type="text"  placeholder="Lot no" id="house_lot_no" />
            </div>
            <div class="field">
               <input type="text"  placeholder="Area" id="house_area" />
            </div>
          </div>
        </div>
        <div class="field">
          <button class="ui button primary">Search</button>
        </div>

      <div class="field">
          <table class="ui striped table">
            <thead>
              <tr>
                <th>Block No.</th>
                <th>Lot No.</th>
                <th>Area</th>
              </tr>
            </thead>
            <tbody>
              <?php 
                foreach($results as $value) {
                 echo "<tr>";
                 echo "<td>{$value->house_block_no}</td>";
                 echo "<td>{$value->house_lot_no}</td>";
                 echo "<td>{$value->house_area}</td>";
                 echo "</tr>";
                }
                ?>
           </tbody>
          </table>
      </div>
      <div class="field"> 
          <?php echo $pagination;?>
      </div>
				
		</div>
	</div>
</div>



<!-- END CONTENT -->
