<?php $this->load->view("partial/header"); ?>

<?php
	if (isset($error_message))
	{
		echo "<div class='alert alert-dismissible alert-danger'>".$error_message."</div>";
		exit;
	}

	$this->load->view('partial/print_receipt', array('print_after_sale', $print_after_sale, 'selected_printer'=>'receipt_printer')); 

?>

<div class="print_hide" id="control_buttons" style="text-align:right">
	<a href="javascript:printdoc();"><div class="btn btn-info btn-sm", id="show_print_button"><?php echo '<span class="glyphicon glyphicon-print">&nbsp</span>' . $this->lang->line('common_print'); ?></div></a>
	<?php echo anchor("receivings", '<span class="glyphicon glyphicon-save">&nbsp</span>' . $this->lang->line('receivings_register'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_sales_button')); ?>
</div>

<div id="receipt_wrapper">
	<div id='barcode' style='float:right; text-align: center; font-size: 10px'>
		<div id="newheader">Purchase<br>Order</div>
			<img style='padding-top:4%; width:150px'src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
			<?php echo $receiving_id; ?>
	</div>
	<div id="receipt_header">
		<?php
		if ($this->config->item('company_logo') != '') 
		{ 
		?>
			<!-- <div id="company_name"> -->
			<img id="image" style='width:400px' src="<?php echo base_url('uploads/' . $this->config->item('company_logo')); ?>" alt="company_logo" /></div>
		<?php
		}
		?>
		<br><br>
		<?php
		if ($this->config->item('receipt_show_company_name')) 
		{ 
		?>
			<!-- <div id="company_name"><?php echo $this->config->item('company'); ?></div> -->
		<?php
		}
		?>

		<table id="metacominfo" style="float: left;border-collapse:collapse">
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

		<!-- <div id="company_address"><?php echo nl2br($this->config->item('address')); ?></div>
		<div id="company_phone"><?php echo $this->config->item('phone'); ?></div> 
		<div id="sale_receipt"><?php echo $this->lang->line('receivings_receipt'); ?></div>
		<div id="sale_time"><?php echo $transaction_time ?></div> -->
		
	</div>

	<div id="block2">
		<table id="meta" style="float: right: width:50%">
			<tr>
				<td class="meta-head" style="width:100px"><?php echo $this->lang->line('common_date'); ?> : </td>
				<td class="meta-body"><?php echo $transaction_time; ?></td>
			</tr>
			<!-- <tr>
				<td class="meta-head"><?php echo $this->lang->line('sales_invoice_number');?> : </td>
				<td class="meta-body"><?php echo $invoice_number; ?></td>
			</tr> -->
			<tr>
				<td class="meta-head" style="width:100px">PO Number : </td>
				<td class="meta-body"><?php echo $receiving_id; ?></td>
			</tr>
			<!--<tr>
				<td class="meta-head">Credit Period : </td>
				<td class="meta-body"><?php echo $credit_period; ?></td>
			</tr>
			 <tr>
				<td class="meta-head">Payment Method : </td>
				<td class="meta-body"><?php echo $payment_method ?></td>
			</tr> -->
		</table>

		<div id="customer-title">
			<?php
			if(isset($supplier))
			{
			?><br><br><br>
				<div id="customer"><b><font face="calibri" size="4">Supplier : </font><br><font face="calibri" size="3"><?php echo nl2br($supplier) ?></font></b></div>
			<?php
			}
			?>
		</div>
	</div><br>

	<div id="receipt_general_info">
		<?php
		if(isset($supplier))
		{
		?>
			<!-- <div id="customer"><?php echo $this->lang->line('suppliers_supplier').": ".$supplier; ?></div> -->
		<?php
		}
		?>
		<!-- <div id="sale_id"><?php echo $this->lang->line('receivings_id').": ".$receiving_id; ?></div> -->
		<?php 
		if (!empty($reference))
		{
		?>
			<!-- <div id="reference"><?php echo $this->lang->line('receivings_reference').": ".$reference; ?></div>	 -->
		<?php 
		}
		?>
		<!-- <div id="employee"><?php echo $this->lang->line('employees_employee').": ".$employee; ?></div> -->
	</div>

	<table id="items">
		<tr>
			<th style="width:40%;"><?php echo $this->lang->line('items_item'); ?></th>
			<th style="width:20%;"><?php echo $this->lang->line('common_price'); ?></th>
			<th style="width:20%;"><?php echo $this->lang->line('sales_quantity'); ?></th>
			<th style="width:15%;text-align:right;"><?php echo $this->lang->line('sales_total'); ?></th>
		</tr>

		<?php
		foreach(array_reverse($cart, TRUE) as $line=>$item)
		{
		?>
			<tr class="item-row">
				<td style='text-align:center;'><?php echo $item['name'] . ' ' . $item['attribute_values']; ?></div></td>
				<td style='text-align:center;'>Rs. <?php echo (number_format((float)$item['price'], 2, '.', ',')); ?></td>
				<td style='text-align:center;'><?php echo to_quantity_decimals($item['quantity']); ?></td>
				<!-- <td style='text-align:center;'><?php echo to_quantity_decimals($item['quantity']) . " " . ($show_stock_locations ? " [" . $item['stock_name'] . "]" : ""); 
				?>&nbsp;&nbsp;&nbsp;x <?php echo $item['receiving_quantity'] != 0 ? to_quantity_decimals($item['receiving_quantity']) : 1; ?></td> -->
				<td ><div class="total-value">Rs. <?php echo (number_format((float)$item['total'], 2, '.', ',')); ?></div></td>
			</tr>
			<tr>
				<td ><?php echo $item['serialnumber']; ?></td>
			</tr>
			<?php
			if ($item['discount'] > 0 )
			{
			?>
				<tr>
					<?php
					if($item['discount_type'] == FIXED)
					{
					?>
						<td colspan="3" class="discount"><?php echo to_currency($item['discount']) . " " . $this->lang->line("sales_discount") ?></td>
					<?php
					}
					elseif($item['discount_type'] == PERCENT)
					{
					?>
						<td colspan="3" class="discount"><?php echo to_decimals($item['discount']) . " " . $this->lang->line("sales_discount_included") ?></td>
					<?php
					}	
					?>
				</tr>
			<?php
			}
			?>
		<?php
		}
		?>	
		<tr class="item-row-total" >
			<td colspan="3" style='text-align:right; font-size: 16px;'><b><?php echo $this->lang->line('sales_total'); ?></b></td>
			<td style='font-size: 16px;'><div class="total-value"><b>Rs. <?php echo (number_format((float)$total, 2, '.', ',')); ?></b></div></td>
		</tr>
		<?php 
		if($mode!='requisition')
		{
		?>
			<tr class="item-row-total" >
				<td colspan="3" style='text-align:right;' style='font-size: 14px'><b><?php echo $this->lang->line('sales_payment'); ?></td>
				<td><div class="total-value" style='font-size: 14px'><b><?php echo $payment_type; ?></div></td>
			</tr>

			<?php if(isset($amount_change))
			{
			?>
				<tr>
					<td colspan="3" style='text-align:right;'><?php echo $this->lang->line('sales_amount_tendered'); ?></td>
					<td><div class="total-value"><?php echo to_currency($amount_tendered); ?></div></td>
				</tr>

				<tr>
					<td colspan="3" style='text-align:right;'><?php echo $this->lang->line('sales_change_due'); ?></td>
					<td><div class="total-value"><?php echo $amount_change; ?></div></td>
				</tr>
			<?php
			}
			?>
		<?php 
		}
		?>
	</table>
	
	<div id="block2">
			
			<table id="metacominfo" style="float: left; width:30%;">
				<tr>
					<td class="meta-body" colspan="2"> <b><span style="font-size: 18px">Delivery Address:</span></b> </td>
				</tr>
				<tr>
					<td class="meta-body" colspan="2"> 15/3, Deniya Road, Suwarapola,<br>Piliyandala.
					</td>
				</tr>
				<tr>
					<td class="meta-body" colspan="2"> 077 225 6966 / 071 178 9789 </td>
				</tr>
						
			</table>
	</div>

	<!-- <div id="sale_return_policy">
		<?php echo nl2br($this->config->item('return_policy')); ?>
	</div>

	<div id='barcode'>
		<img src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
		<?php echo $receiving_id; ?>
	</div> -->


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
