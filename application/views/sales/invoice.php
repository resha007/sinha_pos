<?php $this->load->view("partial/header"); ?>

<?php
if(isset($error_message))
{
	echo "<div class='alert alert-dismissible alert-danger'>".$error_message."</div>";
	exit;
}

$payment_method = "";
?>

<?php if(!empty($customer_email)): ?>
<script type="text/javascript">
$(document).ready(function()
{
	var send_email = function()
	{
		$.get('<?php echo site_url() . "sales/send_pdf/" . $sale_id_num; ?>',
			function(response)
			{
				$.notify({ message: response.message }, { type: response.success ? 'success' : 'danger'});
			}, 'json'
		);
	};

	$("#show_email_button").click(send_email);

	<?php if(!empty($email_receipt)): ?>
		send_email();
	<?php endif; ?>
});
</script>
<?php endif; ?>

<?php $this->load->view('partial/print_receipt', array('print_after_sale'=>$print_after_sale, 'selected_printer'=>'invoice_printer')); ?>

<div class="print_hide" id="control_buttons" style="text-align:right">
	<a href="javascript:printdoc();" onclick="document.title='<?php echo $this->config->item('company').'-Invoice #'. $invoice_number; ?>';"><div class="btn btn-info btn-sm", id="show_print_button"><?php echo '<span class="glyphicon glyphicon-print">&nbsp</span>' . $this->lang->line('common_print'); ?></div></a>
	<?php /* this line will allow to print and go back to sales automatically.... echo anchor("sales", '<span class="glyphicon glyphicon-print">&nbsp</span>' . $this->lang->line('common_print'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_print_button', 'onclick'=>'window.print();')); */ ?>
	<?php if(isset($customer_email) && !empty($customer_email)): ?>
		<a href="javascript:void(0);"><div class="btn btn-info btn-sm", id="show_email_button"><?php echo '<span class="glyphicon glyphicon-envelope">&nbsp</span>' . $this->lang->line('sales_send_invoice'); ?></div></a>
	<?php endif; ?>
	<?php echo anchor("sales", '<span class="glyphicon glyphicon-shopping-cart">&nbsp</span>' . $this->lang->line('sales_register'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_sales_button')); ?>
	<?php echo anchor("sales/manage", '<span class="glyphicon glyphicon-list-alt">&nbsp</span>' . $this->lang->line('sales_takings'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_takings_button')); ?>
</div>

<div id="page-wrap">
	
	<div id='barcode' style='float:right; text-align: center; font-size: 10px'>
		<div id="newheader"><?php echo $this->lang->line('sales_invoice'); ?></div>
			<img style='padding-top:4%; width:150px' src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
			<?php echo $sale_id; ?>
	</div>
	<div id="block">
		<div id="logo">
			<?php
			if($this->Appconfig->get('company_logo') != '')
			// if(true)
			{
			?>
				<img id="image" style='width:400px' src="<?php echo base_url('uploads/' . $this->Appconfig->get('company_logo')); ?>" alt="company_logo" />
				<!-- <img id="image" src="<?php echo base_url('images/flatlogo.png'); ?>" alt="company_logo" /> -->
			<?php
			}
			?>
			<div>&nbsp</div>
			<?php
			if($this->Appconfig->get('receipt_show_company_name'))
			{
			?>
				<!-- <div id="company_name"><?php echo $this->config->item('company'); ?></div> -->
			<?php
			}
			?>
		</div>
		<table id="metacominfo" style="float: left;">
				<tr>
					<td class="meta-head"> <span class="glyphicon glyphicon-earphone"></span> </td>
					<td class="meta-body"><?php echo nl2br($company_tel) ?></td>
				</tr>
				<tr>
					<td class="meta-head"> <span class="glyphicon glyphicon-globe"></span> </td>
					<td class="meta-body"><?php echo nl2br($company_web) ?></td>
				</tr>
				<tr>
					<td class="meta-head"> <span class="glyphicon glyphicon-envelope"></span> </td>
					<td class="meta-body"><?php echo nl2br($company_email) ?></td>
				</tr>
				<tr>
					<td class="meta-head"> <span class="glyphicon glyphicon-home"></span> </td>
					<td class="meta-body"><?php echo nl2br($company_add) ?></td>
				</tr>
			</table>
	</div>

	<div id="block2">
		<table id="meta" style="float: right">
			<tr>
				<td class="meta-head"><?php echo $this->lang->line('common_date'); ?> : </td>
				<td class="meta-body"><?php echo $transaction_date; ?></td>
			</tr>
			<tr>
				<td class="meta-head"><?php echo $this->lang->line('sales_invoice_number');?> : </td>
				<td class="meta-body"><?php echo $invoice_number; ?></td>
			</tr>
			<tr>
				<td class="meta-head">PO Number : </td>
				<td class="meta-body"><?php echo $po_no; ?></td>
			</tr>
			<tr>
				<td class="meta-head">Credit Period : </td>
				<td class="meta-body"><?php echo $credit_period; ?></td>
			</tr>
			<!-- <tr>
				<td class="meta-head">Payment Method : </td>
				<td class="meta-body"><?php echo $payment_method ?></td>
			</tr> -->
		</table>

		<div id="customer-title">
			<?php
			if(isset($customer))
			{
			?><br><br><br>
				<div id="customer"><b><font face="calibri" size="4">Invoice to : </font><br><font face="calibri" size="3"><?php echo nl2br($customer_info) ?></font></b></div>
			<?php
			}
			?>
		</div>
	</div><br>

	<table id="items">
		<tr>
			<th><?php echo $this->lang->line('sales_item_number'); ?></th>
			<?php
				$invoice_columns = 5;
				if($include_hsn)
				{
					$invoice_columns += 1;
					?>
					<th><?php echo $this->lang->line('sales_hsn'); ?></th>
					<?php
				}
			?>
			<th><?php echo $this->lang->line('sales_item_name'); ?></th>
			
			<th><?php echo $this->lang->line('sales_quantity'); ?></th>
			<th><?php echo $this->lang->line('sales_price'); ?></th>
			<th><?php echo $this->lang->line('sales_discount'); ?></th>
			<?php
			if($discount > 0)
			{
				$invoice_columns += 1;
				?>
				<th><?php echo $this->lang->line('sales_customer_discount'); ?></th>
			<?php
			}
			?>
			<th><?php echo $this->lang->line('sales_total'); ?></th>
		</tr>

		<?php
		foreach($cart as $line=>$item)
		{
			if($item['print_option'] == PRINT_YES)
			{
			?>
				<tr class="item-row">
					<td style='text-align:center;'><?php echo $item['item_number']; ?></td>
					<?php if($include_hsn): ?>
						<td style='text-align:center;'><?php echo $item['hsn_code']; ?></td>
					<?php endif; ?>
					<td style='text-align:center;' class="item-name"><?php echo ($item['is_serialized'] || $item['allow_alt_description']) && !empty($item['description']) ? $item['description'] : $item['name'] . ' ' . $item['attribute_values']; if($item['is_serialized']){ echo '<br> (S/N. ' . $item['serialnumber'].')';} ?></td>
					<!-- <td style='text-align:center;' class="warrenty"><?php echo ($item['warranty']); ?></td> -->
					<td style='text-align:center;' class="warrenty"><?php echo to_quantity_decimals($item['quantity']); ?></td>
					<td style='text-align:center;' class="total-value">Rs. <?php echo (number_format((float)$item['price'], 2, '.', ',')); ?></td>
					<td style='text-align:center;'><?php echo ($item['discount_type']==FIXED)?to_currency($item['discount']):to_decimals($item['discount']) . '%';?></td>
					<?php if($discount > 0): ?>
					<td style='text-align:center;'><?php echo to_currency($item['discounted_total'] / $item['quantity']); ?></td>
					<?php endif; ?>
					<td style=' text-align:right;' class="total-value">Rs. <?php echo (number_format((float)$item['discounted_total'], 2, '.', ',')); ?></td>
				</tr>
				<?php
				if($item['is_serialized'])
				{
				?>
					<!-- <tr class="item-row">
						<td class="item-description" colspan="<?php echo $invoice_columns-1; ?>"></td>
						<td style='text-align:center;'><?php echo $item['serialnumber']; ?></td>
					</tr> -->
				<?php 
				}
			}
		}
		?>

		<tr>
			<td class="blank" colspan="<?php echo $invoice_columns; ?>" align="center"><?php echo '&nbsp;'; ?></td>
		</tr>

		<!-- <tr>
			<td colspan="<?php echo $invoice_columns-2; ?>" class="blank-bottom"> </td>
			<td colspan="2" class="total-line"><?php echo $this->lang->line('sales_sub_total'); ?></td>
			<td class="total-value" id="subtotal"><?php echo to_currency($subtotal); ?></td>
		</tr> -->

		<?php
		foreach($taxes as $tax_group_index=>$tax)
		{
		?>
			<tr>
				<td colspan="<?php echo $invoice_columns-2; ?>" class="blank"> </td>
				<td colspan="2" class="total-line"><?php echo (float)$tax['tax_rate'] . '% ' . $tax['tax_group']; ?></td>
				<td class="total-value" id="taxes"><?php echo to_currency_tax($tax['sale_tax_amount']); ?></td>
			</tr>
		<?php
		}
		?>
		<tr class="item-row-total" >
			<td colspan="<?php echo $invoice_columns-2; ?>" class="blank"> </td>
			<td colspan="2" class="total-line" style="font-size: 16px"><b><?php echo $this->lang->line('sales_total'); ?></td>
			<td class="total-value" id="total" style="font-size: 16px"><b>Rs. <?php echo (number_format((float)$total, 2, '.', ',')); ?></td>
		</tr>

		<?php
		$only_sale_check = FALSE;
		$show_giftcard_remainder = FALSE;
		foreach($payments as $payment_id=>$payment)
		{
			$only_sale_check |= $payment['payment_type'] == $this->lang->line('sales_check');
			$splitpayment = explode(':', $payment['payment_type']);
			$show_giftcard_remainder |= $splitpayment[0] == $this->lang->line('sales_giftcard');
		?>
			<tr class="item-row-total">
				<td colspan="<?php echo $invoice_columns-2; ?>" class="blank"> </td>
				<td colspan="2" class="total-line"><b>Payment Method :<?php echo $splitpayment[0]; ?></td>
				<td class="total-value" id="paid"><b>Rs. <?php echo (number_format((float)( $payment['payment_amount'] * -1 ), 2, '.', ',')); ?></td>
			</tr>
		<?php
		}

		if(isset($cur_giftcard_value) && $show_giftcard_remainder)
		{
		?>
			<tr>
				<td colspan="<?php echo $invoice_columns-2; ?>" class="blank"> </td>
				<td colspan="2" class="total-line"><?php echo $this->lang->line('sales_giftcard_balance'); ?></td>
				<td class="total-value" id="giftcard"><?php echo to_currency($cur_giftcard_value); ?></td>
			</tr>
			<?php
		}

		if(!empty($payments))
		{
		?>
		<tr class="item-row-total">
			<td colspan="<?php echo $invoice_columns-3; ?>" class="blank"> </td>
			<td colspan="3" class="total-line"><b><?php echo $this->lang->line($amount_change >= 0 ? ($only_sale_check ? 'sales_check_balance' : 'sales_change_due') : 'sales_amount_due') ; ?></td>
			<td class="total-value" id="change"><b>Rs. <?php echo (number_format((float)$amount_change, 2, '.', ',')); ?></td>
		</tr>
		<?php
		}
		?>
	</table>
		<hr>
		<div id="block2">
			
			<table id="metacominfo" style="float: left; width:30%;">
				<tr>
					<td class="meta-body" colspan="2"> <b><span style="font-size: 18px">Payment Methods :</span></b> </td>
				</tr>
				<tr>
					<td class="meta-body" colspan="2"> All the cheques should be written
					in the favor of name <b>“Sinha Solutions"</b>
					</td>
				</tr>
				<tr>
					<td class="meta-body" colspan="2"> For Online Transfers : </td>
				</tr>
				<tr>
					<td class="meta-small"> Account Name </td>
					<td class="meta-small"> : Sinha Solutions </td>
				</tr>
				<tr>
					<td class="meta-small"> Account Number </td>
					<td class="meta-small"> : 0380 1003 6177 </td>
				</tr>
				<tr>
					<td class="meta-small"> Bank </td>
					<td class="meta-small"> : Hatton National Bank </td>
				</tr>
				<tr>
					<td class="meta-small"> Branch </td>
					<td class="meta-small"> : Piliyandala </td>
				</tr>
				
			</table>
<br><br>
			<table id="metacominfo" style="float: right; width:40%; ">
				<tr>
					<td class="meta-body" style="text-align: center"> <b><span style="font-size: 18px">...........................</span></b> </td>
					</tr>
				<tr>
					<td class="meta-body" style="text-align: center">CHECKED BY<br>Hansika Kavindi</b></td>
					</tr>
			</table>
		</div>

	<!-- <div id="terms">
		<div id="sale_return_policy1">
			<h5>
				<div><?php echo nl2br($this->config->item('payment_message')); ?></div>
				<!-- <div style=''><?php echo empty($comments) ? '' : $this->lang->line('sales_comments') . ': ' . $comments; ?></div> 
				<!-- <div style='padding:4%;'><?php echo $this->config->item('invoice_default_comments'); ?></div>
			</h5>
			<div style='padding:2%;font-size:10px; width:100%'><?php echo nl2br($this->config->item('return_policy')); ?></div>
			<div style=''>
			<b>Recieved goods in Good Condition.</b><br><br>
			</div>
			<div style='float: left'>
				
				...............................<br>
				Authorized By
			</div>
			<div style='float: right'>
				..........................................<br>
				Customer Signature
			</div>
		</div>
		<br><br>
		
	</div> -->
</div>
<br><br><br><br><br>
<div class="pagebreak"> </div>
<!-- order form -->

<div id="page-wrap" class="order-form">
	<div id='barcode' style='float:right; text-align: center; font-size: 10px'>
		<div id="newheader"><?php echo "Despatch" ?></div>
			<img style='padding-top:4%; width:150px' src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
			<?php echo $sale_id; ?>
	</div>
	<div id="block">
		<div id="logo">
			<?php
			if($this->Appconfig->get('company_logo') != '')
			// if(true)
			{
			?><br>
				<img id="image" style='width:400px' src="<?php echo base_url('uploads/' . $this->Appconfig->get('company_logo')); ?>" alt="company_logo" />
				<!-- <img id="image" src="<?php echo base_url('images/flatlogo.png'); ?>" alt="company_logo" /> -->
			<?php
			}
			?>
			<div>&nbsp</div>
			<?php
			if($this->Appconfig->get('receipt_show_company_name'))
			{
			?>
				<!-- <div id="company_name"><?php echo $this->config->item('company'); ?></div> -->
			<?php
			}
			?>
		</div>
		<table id="metacominfo" style="float: left;">
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-earphone"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_tel) ?></td>
			</tr>
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-globe"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_web) ?></td>
			</tr>
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-envelope"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_email) ?></td>
			</tr>
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-home"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_add) ?></td>
			</tr>
		</table>
	</div>

	<br>
	<div id="block2">
		<table id="meta" style="float: right">
			<tr>
				<td class="meta-head"><?php echo $this->lang->line('common_date'); ?> : </td>
				<td class="meta-body"><?php echo $transaction_date; ?></td>
			</tr>
			<tr>
				<td class="meta-head">Despatch No : </td>
				<td class="meta-body"><?php echo "DN".$invoice_number; ?></td>
			</tr>
			<tr>
				<td class="meta-head"><?php echo $this->lang->line('sales_invoice_number');?> : </td>
				<td class="meta-body"><?php echo $invoice_number; ?></td>
			</tr>
			<tr>
				<td class="meta-head">PO Number : </td>
				<td class="meta-body"><?php echo $po_no; ?></td>
			</tr>
		</table>
		<div id="customer-title">
			<?php
			if(isset($customer))
			{
			?><br><br><br>
				<div id="customer"><b><font face="calibri" size="4">Customer : </font><br><font face="calibri" size="3"><?php echo nl2br($customer_info) ?></font></b></div>
			<?php
			}
			?>
		</div>
	</div><br>

	<table id="items">
		<tr>
			<th><?php echo $this->lang->line('sales_item_number'); ?></th>
			<?php
				$invoice_columns = 5;
				if($include_hsn)
				{
					$invoice_columns += 1;
					?>
					<th><?php echo $this->lang->line('sales_hsn'); ?></th>
					<?php
				}
			?>
			<th><?php echo $this->lang->line('sales_item_name'); ?></th>
			
			<th><?php echo $this->lang->line('sales_quantity'); ?></th>
		</tr>

		<?php
		foreach($cart as $line=>$item)
		{
			if($item['print_option'] == PRINT_YES)
			{
			?>
				<tr class="item-row">
					<td style='text-align:center; width:10%'><?php echo $item['item_number']; ?></td>
					<?php if($include_hsn): ?>
						<td style='text-align:center;'><?php echo $item['hsn_code']; ?></td>
					<?php endif; ?>
					<td style='text-align:center;' class="item-name"><?php echo ($item['is_serialized'] || $item['allow_alt_description']) && !empty($item['description']) ? $item['description'] : $item['name'] . ' ' . $item['attribute_values']; if($item['is_serialized']){ echo '<br> (S/N. ' . $item['serialnumber'].')';} ?></td>
					<!-- <td style='text-align:center;' class="warrenty"><?php echo ($item['warranty']); ?></td> -->
					<td style='text-align:center;' class="warrenty"><?php echo to_quantity_decimals($item['quantity']); ?></td>
					
				<?php
				if($item['is_serialized'])
				{
				?>
					<!-- <tr class="item-row">
						<td class="item-description" colspan="<?php echo $invoice_columns-1; ?>"></td>
						<td style='text-align:center;'><?php echo $item['serialnumber']; ?></td>
					</tr> -->
				<?php
				}
			}
		}
		?>

		<tr>
			<td class="blank" colspan="<?php echo $invoice_columns; ?>" align="center"><?php echo '&nbsp;'; ?></td>
		</tr>

		<!-- <tr>
			<td colspan="<?php echo $invoice_columns-2; ?>" class="blank-bottom"> </td>
			<td colspan="2" class="total-line"><?php echo $this->lang->line('sales_sub_total'); ?></td>
			<td class="total-value" id="subtotal"><?php echo to_currency($subtotal); ?></td>
		</tr> -->

		

	</table>
		<br><br>
	<div id="block2">
			<table id="metacominfo" style="float: left; width:40%;">
				<tr>
					<td class="meta-body" colspan="2"> <b><span style="font-size: 18px">Terms & Conditions :</span></b> </td>
				</tr>
				<tr>
					<td class="meta-body" colspan="2">Complaints can only be accepted if made in
					writing within 30 days of receipt of goods.</b>
					</td>
				</tr>
			</table>
			
			<table id="metacominfo" style="float: right; width:50%; ">
				<tr>
					<td class="meta-body" style="text-align: center"> <b><span style="font-size: 18px">...........................</span></b> </td>
					<td class="meta-body" style="text-align: center"> <b><span style="font-size: 18px">...........................</span></b> </td>
				</tr>
				<tr>
					<td class="meta-body" style="text-align: center">CHECKED BY<br>Hansika Kavindi</b></td>
					<td class="meta-body" style="text-align: center">Goods Received By</b>
				</tr>
			</table>
			
		</div><br><br>
	
	<!-- <div id="terms">
		<div id="sale_return_policy1">
			<h5>
				<!-- <div><?php echo nl2br($this->config->item('payment_message')); ?></div> -->
				<!-- <div style=''><?php echo empty($comments) ? '' : $this->lang->line('sales_comments') . ': ' . $comments; ?></div> 
				<!-- <div style='padding:4%;'><?php echo $this->config->item('invoice_default_comments'); ?></div> 
			</h5>
			<!-- <div style='padding:2%;font-size:10px; width:100%'><?php echo nl2br($this->config->item('return_policy')); ?></div> 
			<div id="sign_table">
				<table style="width:50%;">
					<tr>
						<th><br>Prepared by (Store Assistant) </th><td class=""><br>: ........................................</td>
					</tr>
					<tr>
						<th><br>Checked by (Accountant) </th><td class=""><br>: ........................................</td>
					</tr>
					<tr>
						<th><br>Checked by (Driver) </th><td class=""><br>: ........................................</td>
					</tr>
					<tr>
						<th></th><td class=""></td>
					</tr>
					<tr>
						<th><br><br>Hardware Owner's Signature and Seal</th><td class=""><br><br>: ........................................</td>
					</tr>
				</table>
			<br><br>
			</div>
		</div>
		<br><br>
		
	</div> -->
</div>

<div class="pagebreak"> </div>
<!-- order form copy-->

<div id="page-wrap" class="order-form" style="font-size: 5px;">
	<div id='barcode' style='float:right; text-align: center; font-size: 10px'>
		<div id="newheader"><?php echo "Despatch" ?> - Copy</div>
			<img style='padding-top:4%; width:150px' src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
			<?php echo $sale_id; ?>
	</div>
	<div id="block">
		<div id="logo">
			<?php
			if($this->Appconfig->get('company_logo') != '')
			// if(true)
			{
			?><br>
				<img id="image" style='width:400px' src="<?php echo base_url('uploads/' . $this->Appconfig->get('company_logo')); ?>" alt="company_logo" />
				<!-- <img id="image" src="<?php echo base_url('images/flatlogo.png'); ?>" alt="company_logo" /> -->
			<?php
			}
			?>
			<div>&nbsp</div>
			<?php
			if($this->Appconfig->get('receipt_show_company_name'))
			{
			?>
				<!-- <div id="company_name"><?php echo $this->config->item('company'); ?></div> -->
			<?php
			}
			?>
		</div>
		<table id="metacominfo" style="float: left;">
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-earphone"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_tel) ?></td>
			</tr>
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-globe"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_web) ?></td>
			</tr>
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-envelope"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_email) ?></td>
			</tr>
			<tr>
				<td class="meta-head"> <span class="glyphicon glyphicon-home"></span> </td>
				<td class="meta-body"><?php echo nl2br($company_add) ?></td>
			</tr>
		</table>
	</div>

	<br>
	<div id="block2">
		<table id="meta" style="float: right">
		<tr>
				<td class="meta-head"><?php echo $this->lang->line('common_date'); ?> : </td>
				<td class="meta-body"><?php echo $transaction_date; ?></td>
			</tr>
			<tr>
				<td class="meta-head">Despatch No : </td>
				<td class="meta-body"><?php echo "DN".$invoice_number; ?></td>
			</tr>
			<tr>
				<td class="meta-head"><?php echo $this->lang->line('sales_invoice_number');?> : </td>
				<td class="meta-body"><?php echo $invoice_number; ?></td>
			</tr>
			<tr>
				<td class="meta-head">PO Number : </td>
				<td class="meta-body"><?php echo $po_no; ?></td>
			</tr>
		</table>
		<div id="customer-title">
			<?php
			if(isset($customer))
			{
			?><br><br><br>
				<div id="customer"><b><font face="calibri" size="4">Customer : </font><br><font face="calibri" size="3"><?php echo nl2br($customer_info) ?></font></b></div>
			<?php
			}
			?>
		</div>
	</div><br>

	<table id="items">
		<tr>
			<th><?php echo $this->lang->line('sales_item_number'); ?></th>
			<?php
				$invoice_columns = 5;
				if($include_hsn)
				{
					$invoice_columns += 1;
					?>
					<th><?php echo $this->lang->line('sales_hsn'); ?></th>
					<?php
				}
			?>
			<th><?php echo $this->lang->line('sales_item_name'); ?></th>
			
			<th><?php echo $this->lang->line('sales_quantity'); ?></th>
		</tr>

		<?php
		foreach($cart as $line=>$item)
		{
			if($item['print_option'] == PRINT_YES)
			{
			?>
				<tr class="item-row">
					<td style='text-align:center; width:10%'><?php echo $item['item_number']; ?></td>
					<?php if($include_hsn): ?>
						<td style='text-align:center;'><?php echo $item['hsn_code']; ?></td>
					<?php endif; ?>
					<td style='text-align:center;' class="item-name"><?php echo ($item['is_serialized'] || $item['allow_alt_description']) && !empty($item['description']) ? $item['description'] : $item['name'] . ' ' . $item['attribute_values']; if($item['is_serialized']){ echo '<br> (S/N. ' . $item['serialnumber'].')';} ?></td>
					<!-- <td style='text-align:center;' class="warrenty"><?php echo ($item['warranty']); ?></td> -->
					<td style='text-align:center;' class="warrenty"><?php echo to_quantity_decimals($item['quantity']); ?></td>
					
				<?php
				if($item['is_serialized'])
				{
				?>
					<!-- <tr class="item-row">
						<td class="item-description" colspan="<?php echo $invoice_columns-1; ?>"></td>
						<td style='text-align:center;'><?php echo $item['serialnumber']; ?></td>
					</tr> -->
				<?php
				}
			}
		}
		?>

		<tr>
			<td class="blank" colspan="<?php echo $invoice_columns; ?>" align="center"><?php echo '&nbsp;'; ?></td>
		</tr>

		<!-- <tr>
			<td colspan="<?php echo $invoice_columns-2; ?>" class="blank-bottom"> </td>
			<td colspan="2" class="total-line"><?php echo $this->lang->line('sales_sub_total'); ?></td>
			<td class="total-value" id="subtotal"><?php echo to_currency($subtotal); ?></td>
		</tr> -->

		

	</table>
		<br><br>
	<div id="block2">
			<table id="metacominfo" style="float: left; width:40%;">
				<tr>
					<td class="meta-body" colspan="2"> <b><span style="font-size: 18px">Terms & Conditions :</span></b> </td>
				</tr>
				<tr>
					<td class="meta-body" colspan="2">Complaints can only be accepted if made in
					writing within 30 days of receipt of goods.</b>
					</td>
				</tr>
			</table>
			
			<table id="metacominfo" style="float: right; width:50%; ">
				<tr>
					<td class="meta-body" style="text-align: center"> <b><span style="font-size: 18px">...........................</span></b> </td>
					<td class="meta-body" style="text-align: center"> <b><span style="font-size: 18px">...........................</span></b> </td>
				</tr>
				<tr>
					<td class="meta-body" style="text-align: center">CHECKED BY<br>Hansika Kavindi</b></td>
					<td class="meta-body" style="text-align: center">Goods Received By</b>
				</tr>
			</table>
			
		</div><br><br>
	
	<!-- <div id="terms">
		<div id="sale_return_policy1">
			<h5>
				<!-- <div><?php echo nl2br($this->config->item('payment_message')); ?></div> -->
				<!-- <div style=''><?php echo empty($comments) ? '' : $this->lang->line('sales_comments') . ': ' . $comments; ?></div> 
				<!-- <div style='padding:4%;'><?php echo $this->config->item('invoice_default_comments'); ?></div> 
			</h5>
			<!-- <div style='padding:2%;font-size:10px; width:100%'><?php echo nl2br($this->config->item('return_policy')); ?></div> 
			<div id="sign_table">
				<table style="width:50%;">
					<tr>
						<th><br>Prepared by (Store Assistant) </th><td class=""><br>: ........................................</td>
					</tr>
					<tr>
						<th><br>Checked by (Accountant) </th><td class=""><br>: ........................................</td>
					</tr>
					<tr>
						<th><br>Checked by (Driver) </th><td class=""><br>: ........................................</td>
					</tr>
					<tr>
						<th></th><td class=""></td>
					</tr>
					<tr>
						<th><br><br>Hardware Owner's Signature and Seal</th><td class=""><br><br>: ........................................</td>
					</tr>
				</table>
			<br><br>
			</div>
		</div>
		<br><br>
		
	</div> -->
</div>


<script type="text/javascript">
$(window).on("load", function()
{
	// install firefox addon in order to use this plugin
	if(window.jsPrintSetup)
	{
		<?php if(!$this->Appconfig->get('print_header'))
		{
		?>
			// set page header
			jsPrintSetup.setOption('headerStrLeft', '');
			jsPrintSetup.setOption('headerStrCenter', '');
			jsPrintSetup.setOption('headerStrRight', '');
		<?php
		}

		if(!$this->Appconfig->get('print_footer'))
		{
		?>
			// set empty page footer
			jsPrintSetup.setOption('footerStrLeft', '');
			jsPrintSetup.setOption('footerStrCenter', '');
			jsPrintSetup.setOption('footerStrRight', '');
		<?php
		}
		?>
	}
});
</script>

<style type="text/css">
   @media print {
    .pagebreak { page-break-before: always; } /* page-break-after works, as well */
	}

	@media print {
    #items th {
        background-color: hwb(23 24% 16%) !important;
        print-color-adjust: exact; 
    }
	}

	@media print {
		th {
			color: white !important;
		}
	}
</style>

<?php $this->load->view("partial/footer"); ?>
