<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once("Summary_report.php");

class Summary_income_expense1 extends Summary_report
{
	protected function _get_data_columns()
	{
		return array(
			array('id' => "ID"),
			array('date' => "Date"),
			array('description' => "Description"),
			array('type' => "Type"),
			array('amount' => "Amount"));
	}

	protected function _select(array $inputs)
	{
		parent::_select($inputs);

		$this->db->select('
				MAX(items.name) AS name,
				MAX(items.unit_price) AS unit_price,
				SUM(sales_items.quantity_purchased) AS quantity_purchased
		');
	}

	protected function _from()
	{
		parent::_from();

		$this->db->join('items AS items', 'sales_items.item_id = items.item_id', 'inner');
	}

	protected function _group_order()
	{
		$this->db->group_by('items.item_id');
		$this->db->order_by('name');
	}
}
?>
