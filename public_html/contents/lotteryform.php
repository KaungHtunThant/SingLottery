<div class="container">
	<!-- <form method="post" action="">
		<table>
			<tr>
				<th colspan="2">
					<h3>Lottery Form</h3>
				</th>
			</tr>
			<tr>
				<td>
					<label for="lottery_no">Lottery Number</label>
				</td>
				<td>
					<label for="batch_no">Batch No.</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="lottery_id" value="<?php //echo $lottery_id; ?>">
					<input type="hidden" name="user_id" value="<?php //echo $user_id; ?>">
					<input type="text" name="lottery_no" placeholder="Lottery No.">
				</td>
				<td>
					<input type="text" name="batch_no" placeholder="Batch No.">
				</td>
			</tr>
			<tr>
				<td>
					<label for="lottery_no">Customer Name</label>
				</td>
				<td>
					<label for="lottery_no">Customer Phone No.</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="customer_name" placeholder="Admin">
				</td>
				<td>
					<input type="text" name="customer_ph_no" placeholder="eg. 0926..">
				</td>
			</tr>
		</table>
	</form> -->
	<form method="post" action="">
		<div class="row">
			<div class="col-lg-12">
				<h3>Lottery Form</h3>
				<input type="hidden" name="lottery_id" value="<?php echo $lottery_id; ?>">
				<input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
			</div>
			<div class="col-lg-6">
				<label for="lottery_no">Lottery Number</label>
				<input type="text" name="lottery_no" placeholder="Lottery No.">
			</div>
			<div class="col-lg-6">
				<label for="batch_no">Batch No.</label>
				<input type="text" name="batch_no" placeholder="batch_no">
			</div>
			<div class="col-lg-6">
				<label for="customer_name">Customer Name</label>
				<input type="text" name="customer_name" placeholder="Customer Name">
			</div>
			<div class="col-lg-6">
				<label for="customer_ph_no">Customer Phone No.</label>
				<input type="text" name="customer_ph_no" placeholder="eg. 0926..">
			</div>
			<div class="col-lg-6">
				<label for="payment_id">Customer Phone No.</label>
				<input type="text" name="payment_id" placeholder="Payment method">
			</div>
			<div class="col-lg-6">
				<label for="paid">Paid</label>
				<input type="text" name="paid" placeholder="Paid">
			</div>
		</div>
	</form>
</div>
