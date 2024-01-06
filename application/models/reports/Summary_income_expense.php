<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once("Summary_report.php");

class Summary_income_expense extends Summary_report
{
	protected function _get_data_columns()
	{
		return array(
			array('id' => "ID"),
			array('date' => "Date"),
			array('name' => "Name"),
			array('description' => "Description"),
			array('type' => "Type"),
			array('amount' => "Amount"));
	}

	public function getData(array $inputs)
	{
		$where = '';

		if(true)
		{
			$where .= 'DATE(ospos_income_expense.date) BETWEEN ' . $this->db->escape($inputs['start_date']) . ' AND ' . $this->db->escape($inputs['end_date']);
		}
		else
		{
			$where .= 'ospos_income_expense.date BETWEEN ' . $this->db->escape(rawurldecode($inputs['start_date'])) . ' AND ' . $this->db->escape(rawurldecode($inputs['end_date']));
		}

		$select = 'id as id, ';
		$select .= 'date as date, ';
		$select .= 'table_name as name, ';
		$select .= 'description as description, ';
		$select .= 'type as type, ';
		$select .= 'sum(amount) as amount, ';
		
		$this->db->select($select);
		$this->db->from('ospos_income_expense');
	
		$this->db->where('ospos_income_expense.status', 1);
		$this->_where_new($inputs);

		$this->db->group_by('date');
		$this->db->order_by('id');

		$sales = $this->db->get()->result_array();

		

		return array_merge($sales);
	}

	protected function create_summary_payments_temp_tables($where)
	{
		$decimals = totals_decimals();

		$trans_amount = 'SUM(CASE WHEN sales_items.discount_type = ' . PERCENT
			. " THEN sales_items.quantity_purchased * sales_items.item_unit_price - ROUND(sales_items.quantity_purchased * sales_items.item_unit_price * sales_items.discount / 100, $decimals) "
			. ' ELSE sales_items.quantity_purchased * (sales_items.item_unit_price - sales_items.discount) END) AS trans_amount';

		$this->db->query('CREATE TEMPORARY TABLE IF NOT EXISTS ' . $this->db->dbprefix('sumpay_taxes_temp') .
			' (INDEX(sale_id)) ENGINE=MEMORY
			(
				SELECT sales.sale_id, SUM(sales_taxes.sale_tax_amount) AS total_taxes
				FROM ' . $this->db->dbprefix('sales') . ' AS sales
				LEFT OUTER JOIN ' . $this->db->dbprefix('sales_taxes') . ' AS sales_taxes
					ON sales.sale_id = sales_taxes.sale_id
				WHERE ' . $where . ' AND sales_taxes.tax_type = \'1\'
				GROUP BY sale_id
			)'
		);

		$this->db->query('CREATE TEMPORARY TABLE IF NOT EXISTS ' . $this->db->dbprefix('sumpay_items_temp') .
			' (INDEX(sale_id)) ENGINE=MEMORY
			(
				SELECT sales.sale_id, '. $trans_amount
			. ' FROM ' . $this->db->dbprefix('sales') . ' AS sales '
			. 'LEFT OUTER JOIN ' . $this->db->dbprefix('sales_items') . ' AS sales_items '
			. 'ON sales.sale_id = sales_items.sale_id '
			. 'LEFT OUTER JOIN ' . $this->db->dbprefix('sumpay_taxes_temp') . ' AS sumpay_taxes '
			. 'ON sales.sale_id = sumpay_taxes.sale_id '
			. 'WHERE ' . $where . ' GROUP BY sale_id
			)'
		);

		$this->db->query('UPDATE ' . $this->db->dbprefix('sumpay_items_temp') . ' AS sumpay_items '
			. 'SET trans_amount = trans_amount + IFNULL((SELECT total_taxes FROM ' . $this->db->dbprefix('sumpay_taxes_temp')
			. ' AS sumpay_taxes WHERE sumpay_items.sale_id = sumpay_taxes.sale_id),0)');

		$this->db->query('CREATE TEMPORARY TABLE IF NOT EXISTS ' . $this->db->dbprefix('sumpay_payments_temp') .
			' (INDEX(sale_id)) ENGINE=MEMORY
			(
				SELECT sales.sale_id, COUNT(sales.sale_id) AS number_payments,
				SUM(CASE WHEN sales_payments.cash_adjustment = 0 THEN sales_payments.payment_amount ELSE 0 END) AS total_payments,
				SUM(CASE WHEN sales_payments.cash_adjustment = 1 THEN sales_payments.payment_amount ELSE 0 END) AS total_cash_adjustment,
				SUM(sales_payments.cash_refund) AS total_cash_refund
				FROM ' . $this->db->dbprefix('sales') . ' AS sales
				LEFT OUTER JOIN ' . $this->db->dbprefix('sales_payments') . ' AS sales_payments
					ON sales.sale_id = sales_payments.sale_id
				WHERE ' . $where . '
				GROUP BY sale_id
			)'
		);
	}
}
?>
