<?php $this->load->view("partial/header"); ?>

<script type="text/javascript">
	dialog_support.init("a.modal-dlg");
</script>

<div id="page_title"><?php echo $title ?></div>
<br>




<div id="page_subtitle"><?php echo $subtitle ?></div>

<div id="table_holder">
	<table id="table"></table>
</div>

<div id="report_summary">
	<u>Summary</u>
	<table id="tablenew">
	<?php
	foreach ($summary_data as $name => $value) {
		if ($name == "total_quantity") {
	?>
		<tr>
			<td id="colname"><?php echo $this->lang->line('reports_' . $name) ?></td>
			<td id="colval"><?php echo  $value; ?></td>
		</tr>
		<?php
		} else {
		?>
		<tr>
			<td id="colname"><?php echo $this->lang->line('reports_' . $name) ?></td>
			<td id="colval"><?php echo  to_currency($value); ?></td>
		</tr>
			
	<?php
		}
	}
	?>
	</table>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		<?php $this->load->view('partial/bootstrap_tables_locale'); ?>

		$('#table')
			.addClass("table-striped")
			.addClass("table-bordered")
			.bootstrapTable({
				columns: <?php echo transform_headers($headers, TRUE, FALSE); ?>,
				stickyHeader: true,
				stickyHeaderOffsetLeft: $('#table').offset().left + 'px',
				stickyHeaderOffsetRight: $('#table').offset().right + 'px',
				pageSize: <?php echo $this->config->item('lines_per_page'); ?>,
				sortable: true,
				showExport: true,
				exportDataType: 'all',
				//exportTypes: ['json', 'xml', 'csv', 'txt', 'sql', 'excel', 'pdf'],
				exportTypes: ['csv', 'txt', 'excel', 'pdf'],
				pagination: true,
				showColumns: true,
				data: <?php echo json_encode($data); ?>,
				iconSize: 'sm',
				paginationVAlign: 'bottom',
				escape: false
			});


	});
</script>

<?php $this->load->view("partial/footer"); ?>