<!-- START CONTENT -->

<div class="ui raised very padded container segment" id='mainform'>
	<div class="field">
		<div class="ui form">
			<h4 class="ui dividing header">House Master List</h4>
        <div class="field">
          <div class="three fields">
            <div class="field">
                <input type="text" placeholder="Block no"/>
            </div>
            <div class="field">
              <input type="text"  placeholder="Lot no" />
            </div>
            <div class="field">
               <input type="text"  placeholder="Area" />
            </div>
          </div>
        </div>
        <div class="field">
          <button class="ui button primary">Search</button>
        </div>
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

				<?php echo $pagination;?>
		</div>
	</div>
</div>



<!-- END CONTENT -->
