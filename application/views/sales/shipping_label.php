<?php $this->load->view("partial/header"); ?>

<?php
if(isset($error_message))
{
	echo "<div class='alert alert-dismissible alert-danger'>".$error_message."</div>";
	exit;
}
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
	<a href="javascript:printdoc();"><div class="btn btn-info btn-sm", id="show_print_button"><?php echo '<span class="glyphicon glyphicon-print">&nbsp</span>' . $this->lang->line('common_print'); ?></div></a>
	<?php /* this line will allow to print and go back to sales automatically.... echo anchor("sales", '<span class="glyphicon glyphicon-print">&nbsp</span>' . $this->lang->line('common_print'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_print_button', 'onclick'=>'window.print();')); */ ?>
	<?php if(isset($customer_email) && !empty($customer_email)): ?>
		<a href="javascript:void(0);"><div class="btn btn-info btn-sm", id="show_email_button"><?php echo '<span class="glyphicon glyphicon-envelope">&nbsp</span>' . $this->lang->line('sales_send_invoice'); ?></div></a>
	<?php endif; ?>
	<?php echo anchor("sales", '<span class="glyphicon glyphicon-shopping-cart">&nbsp</span>' . $this->lang->line('sales_register'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_sales_button')); ?>
	<?php echo anchor("sales/manage", '<span class="glyphicon glyphicon-list-alt">&nbsp</span>' . $this->lang->line('sales_takings'), array('class'=>'btn btn-info btn-sm', 'id'=>'show_takings_button')); ?>
</div>

<div id="page-wrap" style="width:50%;height:25%;float:left; border: 2px solid black;padding:10px;transform: rotateZ(90deg);transform: translateX(30%) rotate(-90deg);">
	
	
	
		<div style="font-size:40px; text-align:center;margin:10px">
			<span style="border: 2px solid red;;padding:5px;"><b>FRAGILE</b><span>
		</div>
		<div style="font-size:30px; text-align:center;margin:10px">
			<span ><b>Computer Parts Inside</b><span>
		</div>
	
	<br>

	<div id="" style="text-align:center;font-weight:bold;font-size: 16px">
			<?php
			if(isset($customer))
			{
			?>
				<div id="customer"><b>To : </b><br><?php echo nl2br($customer_info) ?></div>
			<?php
			}
			?>
	</div>

	<div id="block2" style="text-align:center"><hr>
		<div id="">
			<?php
			if($this->Appconfig->get('company_logo') != '')
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
			if($this->Appconfig->get('receipt_show_company_name'))
			{
			?>
				<!-- <div id="company_name"><?php echo $this->config->item('company'); ?></div> -->
			<?php
			}
			?>
		</div>
	</div>
	
	<div id="block2" style="text-align:center;font-size: 10px">
		<div id=""><?php echo nl2br($company_info_short) ?></div>
		
	</div>

	<div id='barcode' style='float:center; text-align: center; font-size: 8px'>
			<img style='padding-top:4%; width:100px' src='data:image/png;base64,<?php echo $barcode; ?>' /><br>
			<?php echo $sale_id; ?>
	</div>

	
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

<?php $this->load->view("partial/footer"); ?>
