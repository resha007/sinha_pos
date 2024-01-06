-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2021 at 10:03 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

DROP TABLE IF EXISTS `ospos_app_config`;
CREATE TABLE IF NOT EXISTS `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', '19/19, Fonseka Road, Lakshapathiya, Moratuwa.'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', 'Arial'),
('barcode_font_size', '10'),
('barcode_formats', '[]'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '1'),
('category_dropdown', '0'),
('company', 'PS Computer Solutions'),
('company_logo', 'company_logo2.png'),
('country_codes', 'us'),
('currency_code', 'LKR'),
('currency_decimals', '2'),
('currency_symbol', 'Rs.'),
('customer_reward_enable', '0'),
('dateformat', 'd/m/Y'),
('date_or_time_format', ''),
('default_receivings_discount', '0'),
('default_receivings_discount_type', '0'),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_sales_discount_type', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_code', ''),
('default_tax_jurisdiction', ''),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'changeme@example.com'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', ''),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('image_allowed_types', 'jpg|gif|png'),
('image_max_height', '300'),
('image_max_size', '200'),
('image_max_width', '1200'),
('include_hsn', '0'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('invoice_type', 'invoice'),
('language', 'english'),
('language_code', 'en-US'),
('last_used_invoice_number', '14'),
('last_used_quote_number', '2'),
('last_used_work_order_number', '0'),
('lines_per_page', '25'),
('line_sequence', '0'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('multi_pack_enabled', '0'),
('notify_horizontal_position', 'right'),
('notify_vertical_position', 'bottom'),
('number_locale', 'en_US'),
('payment_options_order', 'cashdebitcredit'),
('phone', '070 680 7832'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_tax_ind', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', '<b>Terms & Conditions</b>\r\n*The original receipt must be produced for warranty claims.\r\n*The warranty will be void if the product serial number or the warranty seals have been damaged, modified or removed.\r\n*Warranty does not apply for an accident, misuse, neglect, fire, water, lightning or physical damages (including burn marks,\r\ncorrosion, pin damages & scratches)\r\n*No Warranty for cables, adapters & converters \r\n*Warranty Duration Details: 1 Year = 350 Days'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', 'thor.webserver.lk'),
('smtp_pass', 'd771df6113e22a807f16ab0f7b3fdb9c90d09cae81fe8860ca1ff4fdc4995d539395254f75aedd131c689d9eadca2118ce010c3fb382156bb521df22e1939212AKyOJaILuyoDFzDALdtRY8jIGC2LwwCcZw+Zbt41y8E='),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', 'info@pos.pscomsolutions.com'),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_id', ''),
('tax_included', '0'),
('theme', 'flatly'),
('thousands_separator', '1'),
('timeformat', 'H:i:s'),
('timezone', 'Asia/Kolkata'),
('use_destination_based_tax', '0'),
('website', 'https://www.pscomsolutions.com/'),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_definitions`
--

DROP TABLE IF EXISTS `ospos_attribute_definitions`;
CREATE TABLE IF NOT EXISTS `ospos_attribute_definitions` (
  `definition_id` int(10) NOT NULL AUTO_INCREMENT,
  `definition_name` varchar(255) NOT NULL,
  `definition_type` varchar(45) NOT NULL,
  `definition_unit` varchar(16) DEFAULT NULL,
  `definition_flags` tinyint(4) NOT NULL,
  `definition_fk` int(10) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`definition_id`),
  KEY `definition_fk` (`definition_fk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_attribute_definitions`
--

INSERT INTO `ospos_attribute_definitions` (`definition_id`, `definition_name`, `definition_type`, `definition_unit`, `definition_flags`, `definition_fk`, `deleted`) VALUES
(1, 'Warrenty', 'DECIMAL', 'Days/Months', 7, NULL, 1),
(2, 'Warrenty', 'DECIMAL', 'Days/Months', 7, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_links`
--

DROP TABLE IF EXISTS `ospos_attribute_links`;
CREATE TABLE IF NOT EXISTS `ospos_attribute_links` (
  `attribute_id` int(11) DEFAULT NULL,
  `definition_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `receiving_id` int(11) DEFAULT NULL,
  UNIQUE KEY `attribute_links_uq1` (`attribute_id`,`definition_id`,`item_id`,`sale_id`,`receiving_id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `definition_id` (`definition_id`),
  KEY `item_id` (`item_id`),
  KEY `sale_id` (`sale_id`),
  KEY `receiving_id` (`receiving_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_attribute_links`
--

INSERT INTO `ospos_attribute_links` (`attribute_id`, `definition_id`, `item_id`, `sale_id`, `receiving_id`) VALUES
(2, 2, 3, NULL, NULL),
(2, 2, 3, NULL, 1),
(2, 2, 3, NULL, 11),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL),
(2, 2, 3, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_attribute_values`
--

DROP TABLE IF EXISTS `ospos_attribute_values`;
CREATE TABLE IF NOT EXISTS `ospos_attribute_values` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_value` varchar(255) DEFAULT NULL,
  `attribute_date` date DEFAULT NULL,
  `attribute_decimal` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `attribute_value` (`attribute_value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_attribute_values`
--

INSERT INTO `ospos_attribute_values` (`attribute_id`, `attribute_value`, `attribute_date`, `attribute_decimal`) VALUES
(1, NULL, NULL, '1.000'),
(2, NULL, NULL, '1.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_cash_up`
--

DROP TABLE IF EXISTS `ospos_cash_up`;
CREATE TABLE IF NOT EXISTS `ospos_cash_up` (
  `cashup_id` int(10) NOT NULL AUTO_INCREMENT,
  `open_date` timestamp NULL DEFAULT current_timestamp(),
  `close_date` timestamp NULL DEFAULT NULL,
  `open_amount_cash` decimal(15,2) NOT NULL,
  `transfer_amount_cash` decimal(15,2) NOT NULL,
  `note` int(1) NOT NULL,
  `closed_amount_cash` decimal(15,2) NOT NULL,
  `closed_amount_card` decimal(15,2) NOT NULL,
  `closed_amount_check` decimal(15,2) NOT NULL,
  `closed_amount_total` decimal(15,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `open_employee_id` int(10) NOT NULL,
  `close_employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `closed_amount_due` decimal(15,2) NOT NULL,
  PRIMARY KEY (`cashup_id`),
  KEY `open_employee_id` (`open_employee_id`),
  KEY `close_employee_id` (`close_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_cash_up`
--

INSERT INTO `ospos_cash_up` (`cashup_id`, `open_date`, `close_date`, `open_amount_cash`, `transfer_amount_cash`, `note`, `closed_amount_cash`, `closed_amount_card`, `closed_amount_check`, `closed_amount_total`, `description`, `open_employee_id`, `close_employee_id`, `deleted`, `closed_amount_due`) VALUES
(1, '2021-11-22 09:11:08', '2021-11-22 09:11:08', '20000.00', '1000.00', 0, '25000.00', '2500.00', '0.00', '6500.00', '', 1, 1, 0, '0.00'),
(2, '2021-11-22 09:21:03', '2021-11-22 09:21:03', '0.00', '0.00', 0, '3000.00', '0.00', '0.00', '3000.00', 'test', 1, 1, 1, '0.00'),
(3, '2021-11-22 09:21:39', '2021-11-22 09:21:39', '0.00', '0.00', 0, '-6000.00', '0.00', '0.00', '-6000.00', '', 1, 1, 0, '0.00'),
(4, '2021-11-22 09:32:22', '2021-11-22 09:32:22', '0.00', '0.00', 0, '4000.00', '0.00', '0.00', '4000.00', '', 1, 1, 1, '0.00');

--
-- Triggers `ospos_cash_up`
--
DROP TRIGGER IF EXISTS `cashup delete`;
DELIMITER $$
CREATE TRIGGER `cashup delete` AFTER UPDATE ON `ospos_cash_up` FOR EACH ROW update ospos_income_expense set status = 0 where table_id = old.cashup_id and table_name = 'cashup'
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `cashup insert`;
DELIMITER $$
CREATE TRIGGER `cashup insert` AFTER INSERT ON `ospos_cash_up` FOR EACH ROW INSERT INTO ospos_income_expense (table_id,table_name,description,type,date,amount,status) values (new.cashup_id,'cashup',new.description,'',new.close_date,new.closed_amount_total,1)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `cashup update`;
DELIMITER $$
CREATE TRIGGER `cashup update` AFTER UPDATE ON `ospos_cash_up` FOR EACH ROW UPDATE ospos_income_expense
set
description = new.description,
date=new.close_date,
amount = new.closed_amount_total 
where table_id = new.cashup_id and table_name = 'cashup'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

DROP TABLE IF EXISTS `ospos_customers`;
CREATE TABLE IF NOT EXISTS `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT 1,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `package_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `employee_id` int(10) NOT NULL,
  `consent` int(1) NOT NULL DEFAULT 0,
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`),
  KEY `package_id` (`package_id`),
  KEY `sales_tax_code_id` (`sales_tax_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `tax_id`, `sales_tax_code_id`, `discount`, `discount_type`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(2, NULL, NULL, 1, '', NULL, '0.00', 0, NULL, NULL, 0, '2021-10-29 16:53:14', 1, 1),
(4, 'Resh Tech', NULL, 1, '', NULL, '0.00', 0, NULL, NULL, 0, '2021-11-06 02:17:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_packages`
--

DROP TABLE IF EXISTS `ospos_customers_packages`;
CREATE TABLE IF NOT EXISTS `ospos_customers_packages` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers_points`
--

DROP TABLE IF EXISTS `ospos_customers_points`;
CREATE TABLE IF NOT EXISTS `ospos_customers_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  KEY `package_id` (`package_id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_dinner_tables`
--

DROP TABLE IF EXISTS `ospos_dinner_tables`;
CREATE TABLE IF NOT EXISTS `ospos_dinner_tables` (
  `dinner_table_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dinner_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

DROP TABLE IF EXISTS `ospos_employees`;
CREATE TABLE IF NOT EXISTS `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `hash_version` int(1) NOT NULL DEFAULT 2,
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  UNIQUE KEY `username` (`username`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('admin', '$2y$10$JtFjkNFjV.IhsH1LZiOWYuGrnjbbWULbD3P0tYTHWVh6ygrLfwka6', 1, 0, 2, '', ''),
('resha', '$2y$10$RZBBBMBQbNF832cKz171/uWQEQgw4dExocXE74vGilHIOl9VpKo5K', 3, 1, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expenses`
--

DROP TABLE IF EXISTS `ospos_expenses`;
CREATE TABLE IF NOT EXISTS `ospos_expenses` (
  `expense_id` int(10) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `expense_category_id` (`expense_category_id`),
  KEY `employee_id` (`employee_id`),
  KEY `ospos_expenses_ibfk_3` (`supplier_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_expenses`
--

INSERT INTO `ospos_expenses` (`expense_id`, `date`, `amount`, `payment_type`, `expense_category_id`, `description`, `employee_id`, `deleted`, `supplier_tax_code`, `tax_amount`, `supplier_id`) VALUES
(5, '2021-11-22 06:59:38', '23434.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(7, '2021-11-22 07:06:49', '23.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(8, '2021-11-22 07:07:49', '2334.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(9, '2021-11-22 07:09:08', '24.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(10, '2021-11-22 07:10:12', '200.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(11, '2021-11-22 07:16:35', '700.00', 'Credit Card', 1, '', 1, 0, '', '0.00', NULL),
(12, '2021-11-22 07:23:06', '1200.00', 'Cash', 1, '123', 1, 1, '', '0.00', NULL),
(13, '2021-11-22 07:27:53', '20000.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(14, '2021-11-22 07:30:28', '300.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(15, '2021-11-22 07:31:30', '500.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(16, '2021-11-22 07:32:33', '55.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(17, '2021-11-22 07:55:17', '4355.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(18, '2021-11-22 08:01:33', '333.00', 'Cash', 1, '', 1, 0, '', '0.00', NULL),
(19, '2021-11-22 08:03:31', '33.00', 'Cash', 1, 'ceb123', 1, 1, '', '0.00', NULL),
(20, '2021-11-22 08:37:03', '550.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(21, '2021-11-22 08:38:57', '2344.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(22, '2021-11-22 08:40:51', '325.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL),
(23, '2021-11-22 08:42:28', '333.00', 'Cash', 1, '', 1, 1, '', '0.00', NULL);

--
-- Triggers `ospos_expenses`
--
DROP TRIGGER IF EXISTS `expenses delete`;
DELIMITER $$
CREATE TRIGGER `expenses delete` AFTER UPDATE ON `ospos_expenses` FOR EACH ROW update ospos_income_expense set status = 0 where table_id = old.expense_id and table_name = 'expenses'
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `expenses insert`;
DELIMITER $$
CREATE TRIGGER `expenses insert` AFTER INSERT ON `ospos_expenses` FOR EACH ROW INSERT INTO ospos_income_expense (table_id,table_name,description,type,date,amount,status) values (new.expense_id,'expenses',CONCAT((SELECT category_name from ospos_expense_categories where expense_category_id = new.expense_category_id),' - ', new.description),new.payment_type,new.date,new.amount,1)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `expenses update`;
DELIMITER $$
CREATE TRIGGER `expenses update` AFTER UPDATE ON `ospos_expenses` FOR EACH ROW update ospos_income_expense set description = CONCAT((SELECT category_name from ospos_expense_categories where expense_category_id = new.expense_category_id),' - ', new.description), type = new.payment_type, amount = new.amount, date = new.date where table_id = new.expense_id and table_name = 'expenses'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_expense_categories`
--

DROP TABLE IF EXISTS `ospos_expense_categories`;
CREATE TABLE IF NOT EXISTS `ospos_expense_categories` (
  `expense_category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`expense_category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_expense_categories`
--

INSERT INTO `ospos_expense_categories` (`expense_category_id`, `category_name`, `category_description`, `deleted`) VALUES
(1, 'Bill', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

DROP TABLE IF EXISTS `ospos_giftcards`;
CREATE TABLE IF NOT EXISTS `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `giftcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `person_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`giftcard_id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

DROP TABLE IF EXISTS `ospos_grants`;
CREATE TABLE IF NOT EXISTS `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home',
  PRIMARY KEY (`permission_id`,`person_id`),
  KEY `ospos_grants_ibfk_2` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('attributes', 1, 'office'),
('cashups', 1, 'home'),
('config', 1, 'office'),
('customers', 1, 'home'),
('dashboard', 1, 'home'),
('employees', 1, 'office'),
('expenses', 1, 'home'),
('expenses_categories', 1, 'home'),
('giftcards', 1, 'home'),
('home', 1, 'office'),
('items', 1, 'home'),
('items_stock', 1, '--'),
('item_kits', 1, 'home'),
('messages', 1, 'home'),
('office', 1, 'home'),
('receivings', 1, 'home'),
('receivings_stock', 1, '--'),
('reports', 1, 'home'),
('reports_categories', 1, '--'),
('reports_customers', 1, '--'),
('reports_discounts', 1, '--'),
('reports_employees', 1, '--'),
('reports_expenses_categories', 1, '--'),
('reports_income_expense', 1, '--'),
('reports_inventory', 1, '--'),
('reports_items', 1, '--'),
('reports_payments', 1, '--'),
('reports_receivings', 1, '--'),
('reports_sales', 1, '--'),
('reports_sales_taxes', 1, '--'),
('reports_suppliers', 1, '--'),
('reports_taxes', 1, '--'),
('sales', 1, 'home'),
('sales_change_price', 1, '--'),
('sales_delete', 1, '--'),
('sales_stock', 1, '--'),
('suppliers', 1, 'home'),
('taxes', 1, 'office');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_income_expense`
--

DROP TABLE IF EXISTS `ospos_income_expense`;
CREATE TABLE IF NOT EXISTS `ospos_income_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(200) NOT NULL,
  `table_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ospos_income_expense`
--

INSERT INTO `ospos_income_expense` (`id`, `table_name`, `table_id`, `description`, `type`, `date`, `amount`, `status`) VALUES
(1, '', 0, '', 'Credit Card', '2021-11-22 12:46:35', '700.00', 0),
(2, '', 0, '', 'Credit Card', '2021-11-22 12:46:35', '700.00', 0),
(3, '', 0, '', 'Credit Card', '2021-11-22 12:46:35', '700.00', 0),
(4, '', 0, '', 'Credit Card', '2021-11-22 12:46:35', '700.00', 0),
(5, '', 12, '123', 'Cash', '2021-11-22 12:53:06', '1200.00', 0),
(6, '', 13, '', 'Cash', '2021-11-22 12:57:53', '20000.00', 0),
(7, '', 14, '', 'Cash', '2021-11-22 13:00:28', '300.00', 0),
(8, '', 15, '', 'Cash', '2021-11-22 13:21:31', '1000.00', 0),
(9, '', 16, '', 'Credit Card', '2021-11-22 13:21:31', '1700.00', 0),
(10, '', 15, 'sales income', 'Cash', '2021-11-22 13:21:31', '1000.00', 0),
(11, '', 16, 'sales income', 'Credit Card', '2021-11-22 13:21:31', '1700.00', 0),
(12, 'expenses', 17, '', 'Cash', '2021-11-22 13:25:17', '4355.00', 0),
(13, 'sales', 17, '', 'Bank Transfer', '2021-11-22 13:25:44', '80000.00', 1),
(14, 'expenses', 18, 'Bill', 'Cash', '2021-11-22 13:31:33', '333.00', 0),
(15, 'expenses', 19, 'Bill - ceb123', 'Cash', '2021-11-22 13:33:31', '33.00', 0),
(16, 'expenses', 20, 'Bill - ', 'Cash', '2021-11-22 14:07:03', '550.00', 1),
(17, 'expenses', 21, 'Bill - ', 'Cash', '2021-11-22 14:08:57', '2344.00', 1),
(18, 'expenses', 22, 'Bill - ', 'Cash', '2021-11-22 14:10:51', '325.00', 1),
(19, 'expenses', 23, 'Bill - ', 'Cash', '2021-11-22 14:12:28', '333.00', 0),
(20, '2', 1, '3', '4', '2020-05-10 00:00:00', '6.00', 0),
(21, 'receivings', 911, '', 'Cash', '2021-11-22 14:34:52', '2500.00', 1),
(22, 'receivings', 1131, 'new', 'Cash', '2021-11-22 14:38:37', '90000.00', 1),
(23, 'receivings', 1251, '', 'Debit Card', '2021-11-22 14:39:32', '500.00', 1),
(24, 'cashup', 2, 'test', '', '2021-11-22 14:51:03', '3000.00', 1),
(25, 'cashup', 3, '', '', '2021-11-22 14:51:39', '-6000.00', 1),
(26, 'cashup', 4, '', '', '2021-11-22 15:02:22', '4000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

DROP TABLE IF EXISTS `ospos_inventory`;
CREATE TABLE IF NOT EXISTS `ospos_inventory` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_items` int(11) NOT NULL DEFAULT 0,
  `trans_user` int(11) NOT NULL DEFAULT 0,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT 0.000,
  PRIMARY KEY (`trans_id`),
  KEY `trans_items` (`trans_items`),
  KEY `trans_user` (`trans_user`),
  KEY `trans_location` (`trans_location`),
  KEY `trans_date` (`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2021-10-29 16:54:19', 'Manual Edit of Quantity', 1, '10.000'),
(2, 1, 1, '2021-10-29 16:54:48', 'POS 1', 1, '-1.000'),
(3, 1, 1, '2021-10-29 16:58:24', 'POS 2', 1, '-1.000'),
(4, 1, 1, '2021-10-29 17:05:10', 'POS 3', 1, '-1.000'),
(5, 1, 1, '2021-10-29 17:38:26', 'POS 4', 1, '-1.000'),
(6, 1, 1, '2021-10-30 16:50:52', 'POS 5', 1, '-1.000'),
(7, 2, 1, '2021-10-30 19:13:28', 'Manual Edit of Quantity', 1, '0.000'),
(8, 1, 1, '2021-10-30 19:23:58', 'POS 6', 1, '-1.000'),
(9, 1, 1, '2021-10-30 19:25:15', 'POS 7', 1, '-1.000'),
(10, 3, 1, '2021-10-31 14:53:14', 'Manual Edit of Quantity', 1, '1.000'),
(11, 3, 1, '2021-10-31 15:00:57', 'RECV 1', 1, '10.000'),
(12, 1, 1, '2021-11-03 16:58:22', 'POS 8', 1, '-1.000'),
(13, 2, 1, '2021-11-03 17:02:19', 'POS 9', 1, '-1.000'),
(14, 1, 1, '2021-11-04 02:46:42', 'POS 10', 1, '-1.000'),
(15, 4, 1, '2021-11-04 07:18:04', 'Manual Edit of Quantity', 1, '10.000'),
(16, 4, 1, '2021-11-08 00:32:52', 'POS 13', 1, '-1.000'),
(17, 1, 1, '2021-11-11 00:28:12', 'POS 15', 1, '-1.000'),
(18, 2, 1, '2021-11-11 00:28:12', 'POS 15', 1, '-1.000'),
(19, 5, 1, '2021-11-11 04:23:58', 'Manual Edit of Quantity', 1, '100.000'),
(20, 5, 1, '2021-11-11 05:34:10', 'POS 16', 1, '-2.000'),
(21, 5, 1, '2021-11-11 05:45:26', 'POS 17', 1, '-1.000'),
(22, 1, 1, '2021-11-12 10:16:50', 'Manual Edit of Quantity', 1, '20.000'),
(23, 5, 1, '2021-11-12 10:17:47', 'POS 18', 1, '-1.000'),
(24, 4, 1, '2021-11-12 10:17:47', 'POS 18', 1, '-1.000'),
(25, 1, 1, '2021-11-22 07:36:58', 'RECV 2', 1, '15.000'),
(26, 1, 1, '2021-11-22 07:51:31', 'POS 19', 1, '-1.000'),
(27, 2, 1, '2021-11-22 07:55:44', 'POS 20', 1, '-1.000'),
(28, 2, 1, '2021-11-22 08:17:21', 'RECV 3', 1, '10.000'),
(29, 2, 1, '2021-11-22 08:17:45', 'RECV 4', 1, '10.000'),
(30, 1, 1, '2021-11-22 08:17:45', 'RECV 4', 1, '1.000'),
(31, 1, 1, '2021-11-22 09:04:09', 'RECV 8', 1, '10.000'),
(32, 1, 1, '2021-11-22 09:04:52', 'RECV 9', 1, '2.000'),
(33, 3, 1, '2021-11-22 09:08:38', 'RECV 11', 1, '2.000'),
(34, 5, 1, '2021-11-22 09:09:32', 'RECV 12', 1, '10.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

DROP TABLE IF EXISTS `ospos_items`;
CREATE TABLE IF NOT EXISTS `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `wholesale_selling_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT 0.000,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000,
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_type` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `tax_category_id` int(10) DEFAULT NULL,
  `qty_per_pack` decimal(15,3) NOT NULL DEFAULT 1.000,
  `pack_name` varchar(8) DEFAULT 'Each',
  `low_sell_item_id` int(10) DEFAULT 0,
  `hsn_code` varchar(32) NOT NULL DEFAULT '',
  `warranty` varchar(4) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `item_number` (`item_number`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `wholesale_selling_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `deleted`, `tax_category_id`, `qty_per_pack`, `pack_name`, `low_sell_item_id`, `hsn_code`, `warranty`) VALUES
('test', 'test', NULL, '1312323', '', '2500.00', '2700.00', '0.00', '1.000', '1.000', 1, NULL, 0, 1, 0, 0, 0, 0, '1.000', 'Each', 1, '', ''),
('Dell i5 Desktop', 'Computer', 5, '151525', '', '75000.00', '80000.00', '0.00', '1.000', '1.000', 2, NULL, 0, 1, 0, 0, 0, 0, '1.000', 'Each', 2, '', ''),
('Dell i7 Desktop', 'Computer', NULL, '435436', 'new', '45000.00', '50000.00', '0.00', '1.000', '1.000', 3, NULL, 1, 1, 0, 0, 0, 0, '1.000', 'Each', 3, '', ''),
('Dell i5 Desktop new', 'Computer', NULL, NULL, '', '85000.00', '90000.00', '0.00', '1.000', '1.000', 4, NULL, 0, 1, 0, 0, 0, 0, '1.000', 'Each', 4, '', '5'),
('wholesale item', 'Computer', NULL, '5436346', '', '50.00', '100.00', '75.00', '1.000', '1.000', 5, NULL, 0, 0, 0, 0, 0, 0, '1.000', 'Each', 5, '', '12');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

DROP TABLE IF EXISTS `ospos_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL,
  PRIMARY KEY (`item_id`,`name`,`percent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

DROP TABLE IF EXISTS `ospos_item_kits`;
CREATE TABLE IF NOT EXISTS `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_kit_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `kit_discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `kit_discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `price_option` tinyint(2) NOT NULL DEFAULT 0,
  `print_option` tinyint(2) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`item_kit_id`),
  KEY `item_kit_number` (`item_kit_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

DROP TABLE IF EXISTS `ospos_item_kit_items`;
CREATE TABLE IF NOT EXISTS `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  KEY `ospos_item_kit_items_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

DROP TABLE IF EXISTS `ospos_item_quantities`;
CREATE TABLE IF NOT EXISTS `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT 0.000,
  PRIMARY KEY (`item_id`,`location_id`),
  KEY `item_id` (`item_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, '47.000'),
(2, 1, '17.000'),
(3, 1, '13.000'),
(4, 1, '8.000'),
(5, 1, '106.000');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_migrations`
--

DROP TABLE IF EXISTS `ospos_migrations`;
CREATE TABLE IF NOT EXISTS `ospos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`version`) VALUES
(20210103000000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

DROP TABLE IF EXISTS `ospos_modules`;
CREATE TABLE IF NOT EXISTS `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_attributes', 'module_attributes_desc', 107, 'attributes'),
('module_cashups', 'module_cashups_desc', 110, 'cashups'),
('module_config', 'module_config_desc', 900, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_dashboard', 'module_dashboard', 5, 'dashboard'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

DROP TABLE IF EXISTS `ospos_people`;
CREATE TABLE IF NOT EXISTS `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Reshan', 'Rajasuriya', 1, '0710605519', 'reshans777@gmail.com', 'no 26, Kalubowila rd', '', 'Dehiwala', '', '10350', 'Sri Lanka', '', 1),
('Reshan', 'Rajasuriya', 1, '0710605519', 'reshans777@gmail.com', 'no 26, Kalubowila rd', '', 'Dehiwala', '', '10350', 'Sri Lanka', '', 2),
('Reshan', 'Rajasuriya', 1, '0710605519', 'reshans777@gmail.com', 'no 26, Kalubowila rd', '', 'Dehiwala', '', '10350', 'Sri Lanka', '', 3),
('Resh', 'Tech', 1, '0785699876', 'resh.techsystems@gmail.com', 'Colombo', '', 'Colombo', 'Western', '0150', 'Sri Lanka', '', 4),
('Test', 'Supp', 1, '', '', '', '', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

DROP TABLE IF EXISTS `ospos_permissions`;
CREATE TABLE IF NOT EXISTS `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `module_id` (`module_id`),
  KEY `ospos_permissions_ibfk_2` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('attributes', 'attributes', NULL),
('cashups', 'cashups', NULL),
('config', 'config', NULL),
('customers', 'customers', NULL),
('dashboard', 'dashboard', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_income_expense', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_sales_taxes', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_change_price', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

DROP TABLE IF EXISTS `ospos_receivings`;
CREATE TABLE IF NOT EXISTS `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `receiving_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`receiving_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `employee_id` (`employee_id`),
  KEY `reference` (`reference`),
  KEY `receiving_time` (`receiving_time`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2021-10-31 15:00:57', NULL, 1, '', 1, 'Cash', NULL),
('2021-11-22 07:36:58', NULL, 1, '', 2, 'Cash', NULL),
('2021-11-22 08:17:21', NULL, 1, '', 3, 'Cash', NULL),
('2021-11-22 08:17:45', NULL, 1, '', 4, 'Cash', NULL),
('2021-11-22 09:04:09', NULL, 1, '', 8, 'Cash', NULL),
('2021-11-22 09:04:52', NULL, 1, '', 9, 'Cash', NULL),
('2021-11-22 09:08:37', NULL, 1, '', 11, 'Cash', NULL),
('2021-11-22 09:09:32', NULL, 1, '', 12, 'Debit Card', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

DROP TABLE IF EXISTS `ospos_receivings_items`;
CREATE TABLE IF NOT EXISTS `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_location` int(11) NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000,
  PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `receiving_quantity`) VALUES
(1, 3, 'new', NULL, 1, '10.000', '45000.00', '45000.00', '0.00', 0, 1, '1.000'),
(2, 1, '', NULL, 1, '15.000', '2500.00', '2500.00', '0.00', 0, 1, '1.000'),
(3, 2, '', NULL, 1, '10.000', '75000.00', '75000.00', '0.00', 0, 1, '1.000'),
(4, 1, '', '', 2, '1.000', '2500.00', '2500.00', '0.00', 0, 1, '1.000'),
(4, 2, '', NULL, 1, '10.000', '75000.00', '75000.00', '0.00', 0, 1, '1.000'),
(8, 1, '', NULL, 1, '10.000', '2500.00', '2500.00', '0.00', 0, 1, '1.000'),
(9, 1, '', NULL, 1, '2.000', '2500.00', '2500.00', '0.00', 0, 1, '1.000'),
(11, 3, 'new', NULL, 1, '2.000', '45000.00', '45000.00', '0.00', 0, 1, '1.000'),
(12, 5, '', NULL, 1, '10.000', '50.00', '50.00', '0.00', 0, 1, '1.000');

--
-- Triggers `ospos_receivings_items`
--
DROP TRIGGER IF EXISTS `receivings insert`;
DELIMITER $$
CREATE TRIGGER `receivings insert` AFTER INSERT ON `ospos_receivings_items` FOR EACH ROW iNSERT INTO ospos_income_expense (table_id,table_name,description,type,date,amount,status) values (CONCAT(new.receiving_id,new.item_id,new.line),'receivings',new.description,(select payment_type from ospos_receivings where receiving_id=new.receiving_id),(select receiving_time from ospos_receivings where receiving_id=new.receiving_id), ((new.quantity_purchased*new.item_cost_price)-new.discount),1)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

DROP TABLE IF EXISTS `ospos_sales`;
CREATE TABLE IF NOT EXISTS `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  `sale_status` tinyint(2) NOT NULL DEFAULT 0,
  `dinner_table_id` int(11) DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `sale_time` (`sale_time`),
  KEY `dinner_table_id` (`dinner_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2021-10-29 16:54:47', 2, 1, '', '0', NULL, 1, 0, NULL, NULL, 1),
('2021-10-29 16:58:24', 2, 1, '', '1', NULL, 2, 0, NULL, NULL, 1),
('2021-10-29 17:05:10', 2, 1, '', '2', NULL, 3, 0, NULL, NULL, 1),
('2021-10-29 17:38:26', 2, 1, '', '3', NULL, 4, 0, NULL, NULL, 1),
('2021-10-30 16:50:52', 2, 1, '', '1234', NULL, 5, 0, NULL, NULL, 0),
('2021-10-30 19:23:58', 2, 1, '', '5', NULL, 6, 0, NULL, NULL, 1),
('2021-10-30 19:25:15', 2, 1, '', '6', NULL, 7, 0, NULL, NULL, 1),
('2021-11-03 16:58:22', NULL, 1, '', NULL, NULL, 8, 0, NULL, NULL, 0),
('2021-11-03 17:02:19', 2, 1, '', NULL, NULL, 9, 0, NULL, NULL, 0),
('2021-11-04 02:46:42', 2, 1, '', NULL, NULL, 10, 0, NULL, NULL, 0),
('2021-11-04 03:24:50', 2, 1, '', NULL, 'Q21000001', 11, 1, NULL, NULL, 3),
('2021-11-04 02:57:39', 2, 1, '', NULL, 'Q21000002', 12, 2, NULL, NULL, 3),
('2021-11-08 00:32:51', NULL, 1, '', NULL, NULL, 13, 0, NULL, NULL, 0),
('2021-11-11 00:28:12', NULL, 1, '', NULL, NULL, 15, 0, NULL, NULL, 0),
('2021-11-11 05:34:10', NULL, 1, '', NULL, NULL, 16, 0, NULL, NULL, 0),
('2021-11-11 05:45:26', NULL, 1, '', NULL, NULL, 17, 0, NULL, NULL, 0),
('2021-11-12 10:17:47', NULL, 1, '', NULL, NULL, 18, 0, NULL, NULL, 0),
('2021-11-22 07:51:31', NULL, 1, '', NULL, NULL, 19, 0, NULL, NULL, 0),
('2021-11-22 07:55:44', NULL, 1, '', NULL, NULL, 20, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

DROP TABLE IF EXISTS `ospos_sales_items`;
CREATE TABLE IF NOT EXISTS `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_location` int(11) NOT NULL,
  `print_option` tinyint(2) NOT NULL DEFAULT 0,
  `warranty` varchar(200) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`),
  KEY `item_location` (`item_location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `print_option`, `warranty`) VALUES
(1, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(2, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(3, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(4, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(5, 1, '', '', 1, '1.000', '2500.00', '2700.00', '5.00', 0, 1, 0, ''),
(6, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(7, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(8, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(9, 2, '', '123456', 1, '1.000', '75000.00', '50000.00', '10.00', 0, 1, 0, ''),
(10, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(11, 3, 'new', '', 1, '1.000', '45000.00', '50000.00', '0.00', 0, 1, 0, ''),
(12, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(13, 4, '', '', 3, '1.000', '85000.00', '90000.00', '0.00', 0, 1, 0, ''),
(15, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, '50'),
(15, 2, '', '', 2, '1.000', '75000.00', '80000.00', '0.00', 0, 1, 0, '25'),
(16, 5, '', '', 1, '2.000', '50.00', '75.00', '0.00', 0, 1, 0, '12'),
(17, 5, '', '', 1, '1.000', '50.00', '75.00', '0.00', 0, 1, 0, '12'),
(18, 4, '', '', 2, '1.000', '85000.00', '25000.00', '0.00', 0, 1, 0, '5'),
(18, 5, '', '', 1, '1.000', '50.00', '200.00', '0.00', 0, 1, 0, '12'),
(19, 1, '', '', 1, '1.000', '2500.00', '2700.00', '0.00', 0, 1, 0, ''),
(20, 2, '', '', 1, '1.000', '75000.00', '80000.00', '0.00', 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

DROP TABLE IF EXISTS `ospos_sales_items_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_type` tinyint(2) NOT NULL DEFAULT 0,
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `jurisdiction_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `sale_id` (`sale_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

DROP TABLE IF EXISTS `ospos_sales_payments`;
CREATE TABLE IF NOT EXISTS `ospos_sales_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `cash_refund` decimal(15,2) NOT NULL DEFAULT 0.00,
  `cash_adjustment` tinyint(4) NOT NULL DEFAULT 0,
  `employee_id` int(11) DEFAULT NULL,
  `payment_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_code` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`),
  KEY `payment_sale` (`sale_id`,`payment_type`),
  KEY `employee_id` (`employee_id`),
  KEY `payment_time` (`payment_time`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`payment_id`, `sale_id`, `payment_type`, `payment_amount`, `cash_refund`, `cash_adjustment`, `employee_id`, `payment_time`, `reference_code`) VALUES
(1, 3, 'Cash', '2500.00', '0.00', 0, 1, '2021-10-30 02:35:10', ''),
(2, 3, 'Cash', '200.00', '0.00', 0, 1, '2021-10-30 02:35:59', ''),
(3, 4, 'Debit Card', '2700.00', '0.00', 0, 1, '2021-10-30 03:08:26', ''),
(4, 5, 'Cash', '2565.00', '0.00', 0, 1, '2021-10-31 02:20:52', ''),
(5, 8, 'Bank Transfer', '2700.00', '0.00', 0, 1, '2021-11-04 02:28:22', ''),
(6, 9, 'Cash', '25000.00', '0.00', 0, 1, '2021-11-04 02:32:19', ''),
(7, 9, 'Bank Transfer', '20000.00', '0.00', 0, 1, '2021-11-04 02:32:19', ''),
(8, 10, 'Due', '2700.00', '0.00', 0, 1, '2021-11-04 02:46:42', ''),
(9, 13, 'Cash', '90000.00', '0.00', 0, 1, '2021-11-08 00:32:51', ''),
(11, 15, 'Cash', '82700.00', '0.00', 0, 1, '2021-11-11 00:28:12', ''),
(12, 16, 'Cash', '150.00', '0.00', 0, 1, '2021-11-11 05:34:10', ''),
(13, 17, 'Cash', '75.00', '0.00', 0, 1, '2021-11-11 05:45:26', ''),
(14, 18, 'Cash', '25200.00', '0.00', 0, 1, '2021-11-12 10:17:47', ''),
(15, 19, 'Bank Transfer', '1000.00', '0.00', 0, 1, '2021-11-22 07:51:31', ''),
(16, 19, 'Credit Card', '1700.00', '0.00', 0, 1, '2021-11-22 07:51:31', ''),
(17, 20, 'Bank Transfer', '80000.00', '0.00', 0, 1, '2021-11-22 07:55:44', '');

--
-- Triggers `ospos_sales_payments`
--
DROP TRIGGER IF EXISTS `sales delete`;
DELIMITER $$
CREATE TRIGGER `sales delete` AFTER UPDATE ON `ospos_sales_payments` FOR EACH ROW update ospos_income_expense set status = 0 where table_id = old.payment_id and table_name = 'sales'
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `sales insert`;
DELIMITER $$
CREATE TRIGGER `sales insert` AFTER INSERT ON `ospos_sales_payments` FOR EACH ROW INSERT INTO ospos_income_expense (table_id,table_name,description,type,date,amount,status) values (new.payment_id,'sales','',new.payment_type,new.payment_time,new.payment_amount,1)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `sales update`;
DELIMITER $$
CREATE TRIGGER `sales update` AFTER UPDATE ON `ospos_sales_payments` FOR EACH ROW UPDATE ospos_income_expense set type = new.payment_type, date=new.payment_time, amount = new.payment_amount where table_id = new.payment_id and table_name = 'sales'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_reward_points`
--

DROP TABLE IF EXISTS `ospos_sales_reward_points`;
CREATE TABLE IF NOT EXISTS `ospos_sales_reward_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_taxes`
--

DROP TABLE IF EXISTS `ospos_sales_taxes`;
CREATE TABLE IF NOT EXISTS `ospos_sales_taxes` (
  `sales_taxes_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(10) NOT NULL,
  `jurisdiction_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `tax_type` smallint(2) NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sales_taxes_id`),
  KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

DROP TABLE IF EXISTS `ospos_sessions`;
CREATE TABLE IF NOT EXISTS `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumblob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('pk70agcllod2ukd5cme14ncrlji38t5c', '::1', 1637566584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373536363538343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('prbup401esuotgfm2hab6tk969lghsnf', '::1', 1637567113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373536373131333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('5nvp7oepb0fk1va65ulfk17k7t9nff7d', '::1', 1637567470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373536373437303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('m1nfdt44jb7vj3jshk4hgn5pura9obfk', '::1', 1637568091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373536383039313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('i2l1dn3hvijk1orvcuo0lm0pak1v0uer', '::1', 1637568526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373536383532363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b),
('53j7e5rorhfb3hul2sr16nqtqisni35t', '::1', 1637569029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373536393032393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b),
('hkdqj94t8inesta2a85u6guh252ca0os', '::1', 1637570221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537303232313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('3qfl6g7irpga1uh8te2h2f58jsq9hut3', '::1', 1637571341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537313334313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('tmc6k0as88nql20dcdv299kc6qogrp54', '::1', 1637571771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537313737313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2234223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b4e3b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a31393a2244656c6c206935204465736b746f70206e6577223b733a31313a226465736372697074696f6e223b733a303a22223b733a31323a2273657269616c6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2230223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a323b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a353a22382e303030223b733a353a227072696365223b643a38353030303b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31313a223137303030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('f20m5h78t4ib2ea665ms3q4jnb3akij7', '::1', 1637572112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537323131323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b726563765f636172747c613a313a7b693a313b613a32303a7b733a373a226974656d5f6964223b733a313a2233223b733a31333a226974656d5f6c6f636174696f6e223b733a313a2231223b733a31313a226974656d5f6e756d626572223b733a363a22343335343336223b733a31303a2273746f636b5f6e616d65223b733a353a2273746f636b223b733a343a226c696e65223b693a313b733a343a226e616d65223b733a31353a2244656c6c206937204465736b746f70223b733a31313a226465736372697074696f6e223b733a333a226e6577223b733a31323a2273657269616c6e756d626572223b4e3b733a31363a226174747269627574655f76616c756573223b4e3b733a31383a226174747269627574655f647476616c756573223b4e3b733a32313a22616c6c6f775f616c745f6465736372697074696f6e223b733a313a2231223b733a31333a2269735f73657269616c697a6564223b733a313a2231223b733a383a227175616e74697479223b643a323b733a383a22646973636f756e74223b733a313a2230223b733a31333a22646973636f756e745f74797065223b733a313a2230223b733a383a22696e5f73746f636b223b733a363a2231312e303030223b733a353a227072696365223b643a34353030303b733a31383a22726563656976696e675f7175616e74697479223b733a313a2231223b733a32363a22726563656976696e675f7175616e746974795f63686f69636573223b613a313a7b693a313b733a323a227831223b7d733a353a22746f74616c223b733a31303a2239303030302e30303030223b7d7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b),
('l41mijvqgk6f2cada3mfm18nqs4hi99d', '::1', 1637573435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537333433353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b),
('9m24n331lt3hjd9jjiu8s787j544dcqu', '::1', 1637573993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537333939333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b),
('lfsa354n2qesi14hv5jcucga4qv3t42q', '::1', 1637574690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537343639303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b),
('9c6vtj5vfsbkjp68mets7j8knhdpgagv', '::1', 1637575273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537353237333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b),
('ii6vakuniaqli0ek0gbiiaiar9ccvrs5', '::1', 1637575344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537353237333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6c6f636174696f6e7c733a313a2231223b636173685f726f756e64696e677c693a303b636173685f6d6f64657c693a303b73616c65735f6d6f64657c733a343a2273616c65223b);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

DROP TABLE IF EXISTS `ospos_stock_locations`;
CREATE TABLE IF NOT EXISTS `ospos_stock_locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

DROP TABLE IF EXISTS `ospos_suppliers`;
CREATE TABLE IF NOT EXISTS `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `deleted` int(1) NOT NULL DEFAULT 0,
  `category` tinyint(4) NOT NULL,
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `tax_id`, `deleted`, `category`) VALUES
(5, 'supp', 'supp', NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_categories`
--

DROP TABLE IF EXISTS `ospos_tax_categories`;
CREATE TABLE IF NOT EXISTS `ospos_tax_categories` (
  `tax_category_id` int(10) NOT NULL AUTO_INCREMENT,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tax_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_codes`
--

DROP TABLE IF EXISTS `ospos_tax_codes`;
CREATE TABLE IF NOT EXISTS `ospos_tax_codes` (
  `tax_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tax_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_jurisdictions`
--

DROP TABLE IF EXISTS `ospos_tax_jurisdictions`;
CREATE TABLE IF NOT EXISTS `ospos_tax_jurisdictions` (
  `jurisdiction_id` int(11) NOT NULL AUTO_INCREMENT,
  `jurisdiction_name` varchar(255) DEFAULT NULL,
  `tax_group` varchar(32) NOT NULL,
  `tax_type` smallint(2) NOT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jurisdiction_id`),
  UNIQUE KEY `tax_jurisdictions_uq1` (`tax_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_tax_rates`
--

DROP TABLE IF EXISTS `ospos_tax_rates`;
CREATE TABLE IF NOT EXISTS `ospos_tax_rates` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_tax_code_id` int(11) NOT NULL,
  `rate_tax_category_id` int(10) NOT NULL,
  `rate_jurisdiction_id` int(11) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_rounding_code` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tax_rate_id`),
  KEY `rate_tax_category_id` (`rate_tax_category_id`),
  KEY `rate_tax_code_id` (`rate_tax_code_id`),
  KEY `rate_jurisdiction_id` (`rate_jurisdiction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  ADD CONSTRAINT `fk_ospos_attribute_definitions_ibfk_1` FOREIGN KEY (`definition_fk`) REFERENCES `ospos_attribute_definitions` (`definition_id`);

--
-- Constraints for table `ospos_attribute_links`
--
ALTER TABLE `ospos_attribute_links`
  ADD CONSTRAINT `ospos_attribute_links_ibfk_1` FOREIGN KEY (`definition_id`) REFERENCES `ospos_attribute_definitions` (`definition_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `ospos_attribute_values` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_attribute_links_ibfk_4` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_5` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  ADD CONSTRAINT `ospos_cash_up_ibfk_1` FOREIGN KEY (`open_employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_cash_up_ibfk_2` FOREIGN KEY (`close_employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  ADD CONSTRAINT `ospos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`);

--
-- Constraints for table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD CONSTRAINT `ospos_customers_points_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `ospos_customers_packages` (`package_id`),
  ADD CONSTRAINT `ospos_customers_points_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_3` FOREIGN KEY (`dinner_table_id`) REFERENCES `ospos_dinner_tables` (`dinner_table_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD CONSTRAINT `ospos_sales_reward_points_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  ADD CONSTRAINT `ospos_tax_rates_ibfk_1` FOREIGN KEY (`rate_tax_category_id`) REFERENCES `ospos_tax_categories` (`tax_category_id`),
  ADD CONSTRAINT `ospos_tax_rates_ibfk_2` FOREIGN KEY (`rate_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`),
  ADD CONSTRAINT `ospos_tax_rates_ibfk_3` FOREIGN KEY (`rate_jurisdiction_id`) REFERENCES `ospos_tax_jurisdictions` (`jurisdiction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
