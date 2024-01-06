<div id="receipt_wrapper" style="font-size:<?php echo $this->config->item('receipt_font_size'); ?>px">
	<div id="receipt_header">
		<div id="newheader"><?php echo $this->lang->line('sales_receipt'); ?></div>
		<div id='barcode' style='float:right; text-align: center; font-size: 10px'>
			<img style='padding-top:4%; width:150px' src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
			<?php echo $sale_id; ?>
		</div>

		<div id="block1">
			<div id="logo">
				<?php
				if ($this->Appconfig->get('company_logo') != '')
				// if(true)
				{
				?>
					<img id="image" src="<?php echo base_url('uploads/' . $this->Appconfig->get('company_logo')); ?>" alt="company_logo" />
					<!-- <img id="image" src="<?php echo base_url('images/flatlogo.png'); ?>" alt="company_logo" /> -->
				<?php
				}
				?>
				<div>&nbsp</div>
				<?php
				if ($this->Appconfig->get('receipt_show_company_name')) {
				?>
					<!-- <div id="company_name"><?php echo $this->config->item('company'); ?></div> -->
				<?php
				}
				?>
			</div>
		</div>

		<div id="block2">
			<div id="company-title"><?php echo nl2br($company_info) ?></div>



			<!-- <div style="float: right">
			<?php echo $this->lang->line('sales_invoice_number'); ?> : <?php echo $invoice_number; ?>
			<?php echo $this->lang->line('common_date'); ?> : <?php echo $transaction_date; ?>
		</div> -->




		</div><br>
		<div id="block2">
			<table id="meta" style="border: -1; float: right">
				<tr>
					<td class="meta-head"><?php echo $this->lang->line('sales_invoice_number'); ?> </td>
					<td><?php echo $invoice_number; ?></td>
				</tr>
				<tr>
					<td class="meta-head"><?php echo $this->lang->line('common_date'); ?></td>
					<td><?php echo $transaction_date; ?></td>
				</tr>
				<!-- <tr>
					<td class="meta-head"><?php echo $this->lang->line('sales_invoice_total'); ?></td>
					<td><?php echo to_currency($total); ?></td>
				</tr> -->
			</table>
			<div id="receipt_general_info">
				<?php
				if (isset($customer)) {
				?>
					<div id="customer"><?php echo $this->lang->line('customers_customer') . ": <br>" . nl2br($customer_info); ?></div>
				<?php
				}
				?>

				<div id="sale_id"><?php echo $this->lang->line('sales_id') . ": " . $sale_id; ?></div>


				<div id="employee"><?php echo "Cashier: " . $employee; ?></div>
			</div>
		</div><br>


		<table id="receipt_items">
			<tr>
				<th><?php echo $this->lang->line('sales_item_number'); ?></th>
				<?php
				$invoice_columns = 6;
				if ($include_hsn) {
					$invoice_columns += 1;
				?>
					<th><?php echo $this->lang->line('sales_hsn'); ?></th>
				<?php
				}
				?>
				<th><?php echo $this->lang->line('sales_item_name'); ?></th>
				<th><?php echo $this->lang->line('sales_warranty'); ?></th>
				<!-- imal -->
				<th><?php echo $this->lang->line('sales_quantity'); ?></th>
				<th><?php echo $this->lang->line('sales_price'); ?></th>
				<th><?php echo $this->lang->line('sales_discount'); ?></th>
				<?php
				if ($discount > 0) {
					$invoice_columns += 1;
				?>
					<th><?php echo $this->lang->line('sales_customer_discount'); ?></th>
				<?php
				}
				?>
				<th><?php echo $this->lang->line('sales_total'); ?></th>
			</tr>

			<?php
			foreach ($cart as $line => $item) {
				if ($item['print_option'] == PRINT_YES) {
			?>
					<tr class="item-row">
						<td style='text-align:center;'><?php echo $item['item_number']; ?></td>
						<?php if ($include_hsn) : ?>
							<td style='text-align:center;'><?php echo $item['hsn_code']; ?></td>
						<?php endif; ?>
						<td style='text-align:center;' class="item-name"><?php echo ($item['is_serialized'] || $item['allow_alt_description']) && !empty($item['description']) ? $item['description'] : $item['name'] . ' ' . $item['attribute_values']; ?></td>
						<td style='text-align:center;' class="warranty"><?php echo ($item['warranty']); ?></td>
						<td style='text-align:center;' class="quantity"><?php echo to_quantity_decimals($item['quantity']); ?></td>
						<td style='text-align:center;' class="total-value"><?php echo to_currency($item['price']); ?></td>
						<td style='text-align:center;'><?php echo ($item['discount_type'] == FIXED) ? to_currency($item['discount']) : to_decimals($item['discount']) . '%'; ?></td>
						<?php if ($discount > 0) : ?>
							<td style='text-align:center;'><?php echo to_currency($item['discounted_total'] / $item['quantity']); ?></td>
						<?php endif; ?>
						<td style=' text-align:right;' class="total-value"><?php echo to_currency($item['discounted_total']); ?></td>
					</tr>
					<?php
					if ($item['is_serialized']) {
					?>
						<tr class="item-row">
							<td class="item-description" colspan="<?php echo $invoice_columns - 1; ?>"></td>
							<td style='text-align:center;'><?php echo $item['serialnumber']; ?></td>
						</tr>
			<?php
					}
				}
			}
			?>

			<tr>
				<td class="blank" colspan="<?php echo $invoice_columns; ?>" align="center"><?php echo '&nbsp;'; ?></td>
			</tr>

			<!-- <tr>
			<td colspan="<?php echo $invoice_columns - 2; ?>" class="blank-bottom"> </td>
			<td colspan="2" class="total-line"><?php echo $this->lang->line('sales_sub_total'); ?></td>
			<td class="total-value" id="subtotal"><?php echo to_currency($subtotal); ?></td>
		</tr> -->

			<?php
			foreach ($taxes as $tax_group_index => $tax) {
			?>
				<tr>
					<td colspan="<?php echo $invoice_columns - 2; ?>" class="blank"> </td>
					<th colspan="2" class="total-line"><?php echo (float)$tax['tax_rate'] . '% ' . $tax['tax_group']; ?></th>
					<td class="total-value" id="taxes"><?php echo to_currency_tax($tax['sale_tax_amount']); ?></td>
				</tr>
			<?php
			}
			?>

			<tr>
				<td colspan="<?php echo $invoice_columns - 2; ?>" class="blank"> </td>
				<th colspan="2" class="total-line"><?php echo $this->lang->line('sales_total'); ?></th>
				<td class="total-value" id="total"><?php echo to_currency($total); ?></td>
			</tr>

			<?php
			$only_sale_check = FALSE;
			$show_giftcard_remainder = FALSE;
			foreach ($payments as $payment_id => $payment) {
				$only_sale_check |= $payment['payment_type'] == $this->lang->line('sales_check');
				$splitpayment = explode(':', $payment['payment_type']);
				$show_giftcard_remainder |= $splitpayment[0] == $this->lang->line('sales_giftcard');
			?>
				<tr>
					<td colspan="<?php echo $invoice_columns - 2; ?>" class="blank"> </td>
					<th colspan="2" class="total-line"><?php echo $splitpayment[0]; ?></td>
					<td class="total-value" id="paid"><?php echo to_currency($payment['payment_amount'] * -1); ?></th>
				</tr>
			<?php
			}

			if (isset($cur_giftcard_value) && $show_giftcard_remainder) {
			?>
				<tr>
					<td colspan="<?php echo $invoice_columns - 2; ?>" class="blank"> </td>
					<th colspan="2" class="total-line"><?php echo $this->lang->line('sales_giftcard_balance'); ?></th>
					<td class="total-value" id="giftcard"><?php echo to_currency($cur_giftcard_value); ?></td>
				</tr>
			<?php
			}

			if (!empty($payments)) {
			?>
				<tr>
					<td colspan="<?php echo $invoice_columns - 2; ?>" class="blank"> </td>
					<th colspan="2" class="total-line"><?php echo $this->lang->line($amount_change >= 0 ? ($only_sale_check ? 'sales_check_balance' : 'sales_change_due') : 'sales_amount_due'); ?></th>
					<td class="total-value" id="change"><?php echo to_currency($amount_change); ?></td>
				</tr>
			<?php
			}
			?>

		</table>

		<!-- <table id="receipt_items">
		<tr>
			<th style="width:40%;"><?php echo $this->lang->line('sales_description_abbrv'); ?></th>
			<th style="width:20%;"><?php echo $this->lang->line('sales_price'); ?></th>
			<th style="width:20%;"><?php echo $this->lang->line('sales_quantity'); ?></th>
			<th style="width:20%;" class="total-value"><?php echo $this->lang->line('sales_total'); ?></th>
			<?php
			if ($this->config->item('receipt_show_tax_ind')) {
			?>
				<th style="width:20%;"></th>
			<?php
			}
			?>
		</tr>
		<?php
		foreach ($cart as $line => $item) {
			if ($item['print_option'] == PRINT_YES) {
		?>
				<tr>
					<td><?php echo ucfirst($item['name'] . ' ' . $item['attribute_values']); ?></td>
					<td><?php echo to_currency($item['price']); ?></td>
					<td><?php echo to_quantity_decimals($item['quantity']); ?></td>
					<td class="total-value"><?php echo to_currency($item[($this->config->item('receipt_show_total_discount') ? 'total' : 'discounted_total')]); ?></td>
					<?php
					if ($this->config->item('receipt_show_tax_ind')) {
					?>
						<td><?php echo $item['taxed_flag'] ?></td>
					<?php
					}
					?>
				</tr>
				<tr>
					<?php
					if ($this->config->item('receipt_show_description')) {
					?>
						<td colspan="2"><?php echo $item['description']; ?></td>
					<?php
					}

					if ($this->config->item('receipt_show_serialnumber')) {
					?>
						<td><?php echo $item['serialnumber']; ?></td>
					<?php
					}
					?>
				</tr>
				<?php
				if ($item['discount'] > 0) {
				?>
					<tr>
						<?php
						if ($item['discount_type'] == FIXED) {
						?>
							<td colspan="3" class="discount"><?php echo to_currency($item['discount']) . " " . $this->lang->line("sales_discount") ?></td>
						<?php
						} elseif ($item['discount_type'] == PERCENT) {
						?>
							<td colspan="3" class="discount"><?php echo to_decimals($item['discount']) . " " . $this->lang->line("sales_discount_included") ?></td>
						<?php
						}
						?>
						<td class="total-value"><?php echo to_currency($item['discounted_total']); ?></td>
					</tr>
				<?php
				}
			}
		}
				?>

		<?php
		if ($this->config->item('receipt_show_total_discount') && $discount > 0) {
		?>
			<tr>
				<td colspan="3" style='text-align:right;border-top:2px solid #000000;'><?php echo $this->lang->line('sales_sub_total'); ?></td>
				<td style='text-align:right;border-top:2px solid #000000;'><?php echo to_currency($prediscount_subtotal); ?></td>
			</tr>
			<tr>
				<td colspan="3" class="total-value"><?php echo $this->lang->line('sales_customer_discount'); ?>:</td>
				<td class="total-value"><?php echo to_currency($discount * -1); ?></td>
			</tr>
		<?php
		}
		?>

		<?php
		if ($this->config->item('receipt_show_taxes')) {
		?>
			<tr>
				<td colspan="3" style='text-align:right;border-top:2px solid #000000;'><?php echo $this->lang->line('sales_sub_total'); ?></td>
				<td style='text-align:right;border-top:2px solid #000000;'><?php echo to_currency($subtotal); ?></td>
			</tr>
			<?php
			foreach ($taxes as $tax_group_index => $tax) {
			?>
				<tr>
					<td colspan="3" class="total-value"><?php echo (float)$tax['tax_rate'] . '% ' . $tax['tax_group']; ?>:</td>
					<td class="total-value"><?php echo to_currency_tax($tax['sale_tax_amount']); ?></td>
				</tr>
			<?php
			}
			?>
		<?php
		}
		?>

		<tr>
		</tr>

		<?php $border = (!$this->config->item('receipt_show_taxes') && !($this->config->item('receipt_show_total_discount') && $discount > 0)); ?>
		<tr>
			<td colspan="3" style="text-align:right;<?php echo $border ? 'border-top: 2px solid black;' : ''; ?>"><?php echo $this->lang->line('sales_total'); ?></td>
			<td style="text-align:right;<?php echo $border ? 'border-top: 2px solid black;' : ''; ?>"><?php echo to_currency($total); ?></td>
		</tr>

		<tr>
			<td colspan="4">&nbsp;</td>
		</tr>

		<?php
		$only_sale_check = FALSE;
		$show_giftcard_remainder = FALSE;
		foreach ($payments as $payment_id => $payment) {
			$only_sale_check |= $payment['payment_type'] == $this->lang->line('sales_check');
			$splitpayment = explode(':', $payment['payment_type']);
			$show_giftcard_remainder |= $splitpayment[0] == $this->lang->line('sales_giftcard');
		?>
			<tr>
				<td colspan="3" style="text-align:right;"><?php echo $splitpayment[0]; ?> </td>
				<td class="total-value"><?php echo to_currency($payment['payment_amount'] * -1); ?></td>
			</tr>
		<?php
		}
		?>

		<tr>
			<td colspan="4">&nbsp;</td>
		</tr>

		<?php
		if (isset($cur_giftcard_value) && $show_giftcard_remainder) {
		?>
			<tr>
				<td colspan="3" style="text-align:right;"><?php echo $this->lang->line('sales_giftcard_balance'); ?></td>
				<td class="total-value"><?php echo to_currency($cur_giftcard_value); ?></td>
			</tr>
		<?php
		}
		?>
		<tr>
			<td colspan="3" style="text-align:right;"> <?php echo $this->lang->line($amount_change >= 0 ? ($only_sale_check ? 'sales_check_balance' : 'sales_change_due') : 'sales_amount_due'); ?> </td>
			<td class="total-value"><?php echo to_currency($amount_change); ?></td>
		</tr>
	</table> -->

		<div id="terms">
			<div id="sale_return_policy1">
				<h5>
					<div><?php echo nl2br($this->config->item('payment_message')); ?></div>
					<div style=''><?php echo empty($comments) ? '' : $this->lang->line('sales_comments') . ': ' . $comments; ?></div>
					<!-- <div style='padding:4%;'><?php echo $this->config->item('invoice_default_comments'); ?></div> -->
				</h5>
				<div style='padding:2%;font-size:10px; width:100%'><?php echo nl2br($this->config->item('return_policy')); ?></div>

			</div>
			<br><br>

		</div>



	</div>