-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2018 at 11:43 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `betting`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_clients`
--

CREATE TABLE `ip_clients` (
  `client_id` int(11) NOT NULL,
  `client_date_created` datetime NOT NULL,
  `client_date_modified` datetime NOT NULL,
  `client_name` text,
  `client_address_1` text,
  `client_address_2` text,
  `client_city` text,
  `client_state` text,
  `client_zip` text,
  `client_country` text,
  `client_phone` text,
  `client_fax` text,
  `client_mobile` text,
  `client_email` text,
  `client_web` text,
  `client_vat_id` text,
  `client_tax_code` text,
  `client_language` varchar(255) DEFAULT 'system',
  `client_active` int(1) NOT NULL DEFAULT '1',
  `client_surname` varchar(255) DEFAULT NULL,
  `client_avs` varchar(16) DEFAULT NULL,
  `client_insurednumber` varchar(30) DEFAULT NULL,
  `client_veka` varchar(30) DEFAULT NULL,
  `client_birthdate` date DEFAULT NULL,
  `client_gender` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_clients`
--

INSERT INTO `ip_clients` (`client_id`, `client_date_created`, `client_date_modified`, `client_name`, `client_address_1`, `client_address_2`, `client_city`, `client_state`, `client_zip`, `client_country`, `client_phone`, `client_fax`, `client_mobile`, `client_email`, `client_web`, `client_vat_id`, `client_tax_code`, `client_language`, `client_active`, `client_surname`, `client_avs`, `client_insurednumber`, `client_veka`, `client_birthdate`, `client_gender`) VALUES
(2, '2018-09-05 10:11:13', '2018-09-07 11:31:13', 'Quang', '', '', 'Ho Chi Minh', '', '', '', '', '', '', 'quanny@gmail.com', '', '', '', 'Vietnamese', 1, 'Quanny', NULL, NULL, NULL, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_client_custom`
--

CREATE TABLE `ip_client_custom` (
  `client_custom_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_custom_fieldid` int(11) NOT NULL,
  `client_custom_fieldvalue` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_client_notes`
--

CREATE TABLE `ip_client_notes` (
  `client_note_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_note_date` date NOT NULL,
  `client_note` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_custom_fields`
--

CREATE TABLE `ip_custom_fields` (
  `custom_field_id` int(11) NOT NULL,
  `custom_field_table` varchar(50) DEFAULT NULL,
  `custom_field_label` varchar(50) DEFAULT NULL,
  `custom_field_type` varchar(255) NOT NULL DEFAULT 'TEXT',
  `custom_field_location` int(11) DEFAULT '0',
  `custom_field_order` int(11) DEFAULT '999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_custom_values`
--

CREATE TABLE `ip_custom_values` (
  `custom_values_id` int(11) NOT NULL,
  `custom_values_field` int(11) NOT NULL,
  `custom_values_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_email_templates`
--

CREATE TABLE `ip_email_templates` (
  `email_template_id` int(11) NOT NULL,
  `email_template_title` text,
  `email_template_type` varchar(255) DEFAULT NULL,
  `email_template_body` longtext NOT NULL,
  `email_template_subject` text,
  `email_template_from_name` text,
  `email_template_from_email` text,
  `email_template_cc` text,
  `email_template_bcc` text,
  `email_template_pdf_template` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_families`
--

CREATE TABLE `ip_families` (
  `family_id` int(11) NOT NULL,
  `family_name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_imports`
--

CREATE TABLE `ip_imports` (
  `import_id` int(11) NOT NULL,
  `import_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_import_details`
--

CREATE TABLE `ip_import_details` (
  `import_detail_id` int(11) NOT NULL,
  `import_id` int(11) NOT NULL,
  `import_lang_key` varchar(35) NOT NULL,
  `import_table_name` varchar(35) NOT NULL,
  `import_record_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoices`
--

CREATE TABLE `ip_invoices` (
  `invoice_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_group_id` int(11) NOT NULL,
  `invoice_status_id` tinyint(2) NOT NULL DEFAULT '1',
  `is_read_only` tinyint(1) DEFAULT NULL,
  `invoice_password` varchar(90) DEFAULT NULL,
  `invoice_date_created` date NOT NULL,
  `invoice_time_created` time NOT NULL DEFAULT '00:00:00',
  `invoice_date_modified` datetime NOT NULL,
  `invoice_date_due` date NOT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `invoice_discount_amount` decimal(20,2) DEFAULT NULL,
  `invoice_discount_percent` decimal(20,2) DEFAULT NULL,
  `invoice_terms` longtext NOT NULL,
  `invoice_url_key` char(32) NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `creditinvoice_parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_invoices`
--

INSERT INTO `ip_invoices` (`invoice_id`, `user_id`, `client_id`, `invoice_group_id`, `invoice_status_id`, `is_read_only`, `invoice_password`, `invoice_date_created`, `invoice_time_created`, `invoice_date_modified`, `invoice_date_due`, `invoice_number`, `invoice_discount_amount`, `invoice_discount_percent`, `invoice_terms`, `invoice_url_key`, `payment_method`, `creditinvoice_parent_id`) VALUES
(2, 1, 2, 3, 3, NULL, '', '2018-09-05', '10:11:33', '2018-09-05 11:16:48', '2018-10-05', '2', '0.00', '0.00', '', 'mre3YdWMAzTtBONlLQpXV5onv1f0a2bG', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoices_recurring`
--

CREATE TABLE `ip_invoices_recurring` (
  `invoice_recurring_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `recur_start_date` date NOT NULL,
  `recur_end_date` date NOT NULL,
  `recur_frequency` varchar(255) NOT NULL,
  `recur_next_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_amounts`
--

CREATE TABLE `ip_invoice_amounts` (
  `invoice_amount_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_sign` enum('1','-1') NOT NULL DEFAULT '1',
  `invoice_item_subtotal` decimal(20,2) DEFAULT NULL,
  `invoice_item_tax_total` decimal(20,2) DEFAULT NULL,
  `invoice_tax_total` decimal(20,2) DEFAULT NULL,
  `invoice_total` decimal(20,2) DEFAULT NULL,
  `invoice_paid` decimal(20,2) DEFAULT NULL,
  `invoice_balance` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_invoice_amounts`
--

INSERT INTO `ip_invoice_amounts` (`invoice_amount_id`, `invoice_id`, `invoice_sign`, `invoice_item_subtotal`, `invoice_item_tax_total`, `invoice_tax_total`, `invoice_total`, `invoice_paid`, `invoice_balance`) VALUES
(2, 2, '1', '26.75', '0.00', '0.00', '26.75', '0.00', '26.75');

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_custom`
--

CREATE TABLE `ip_invoice_custom` (
  `invoice_custom_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_custom_fieldid` int(11) NOT NULL,
  `invoice_custom_fieldvalue` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_groups`
--

CREATE TABLE `ip_invoice_groups` (
  `invoice_group_id` int(11) NOT NULL,
  `invoice_group_name` text,
  `invoice_group_identifier_format` varchar(255) NOT NULL,
  `invoice_group_next_id` int(11) NOT NULL,
  `invoice_group_left_pad` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_invoice_groups`
--

INSERT INTO `ip_invoice_groups` (`invoice_group_id`, `invoice_group_name`, `invoice_group_identifier_format`, `invoice_group_next_id`, `invoice_group_left_pad`) VALUES
(3, 'Invoice Default', '{{{id}}}', 3, 0),
(4, 'Quote Default', 'QUO{{{id}}}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_items`
--

CREATE TABLE `ip_invoice_items` (
  `item_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_tax_rate_id` int(11) NOT NULL DEFAULT '0',
  `item_product_id` int(11) DEFAULT NULL,
  `item_date_added` date NOT NULL,
  `item_task_id` int(11) DEFAULT NULL,
  `item_name` text,
  `item_description` longtext,
  `item_quantity` decimal(10,2) NOT NULL,
  `item_price` decimal(20,2) DEFAULT NULL,
  `item_discount_amount` decimal(20,2) DEFAULT NULL,
  `item_order` int(2) NOT NULL DEFAULT '0',
  `item_is_recurring` tinyint(1) DEFAULT NULL,
  `item_product_unit` varchar(50) DEFAULT NULL,
  `item_product_unit_id` int(11) DEFAULT NULL,
  `item_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_invoice_items`
--

INSERT INTO `ip_invoice_items` (`item_id`, `invoice_id`, `item_tax_rate_id`, `item_product_id`, `item_date_added`, `item_task_id`, `item_name`, `item_description`, `item_quantity`, `item_price`, `item_discount_amount`, `item_order`, `item_is_recurring`, `item_product_unit`, `item_product_unit_id`, `item_date`) VALUES
(2, 2, 0, NULL, '2018-09-05', NULL, 'Real - Bacelona', 'Win 1/2', '0.83', '25.00', '0.00', 1, NULL, NULL, 0, NULL),
(3, 2, 0, NULL, '2018-09-05', NULL, 'Mu-citi', 'Win', '50.00', '0.94', '0.00', 2, NULL, NULL, 0, NULL),
(4, 2, 0, NULL, '2018-09-05', NULL, 'Chelasi - Asenal', 'Lost', '0.82', '-50.00', '0.00', 3, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_item_amounts`
--

CREATE TABLE `ip_invoice_item_amounts` (
  `item_amount_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_subtotal` decimal(20,2) DEFAULT NULL,
  `item_tax_total` decimal(20,2) DEFAULT NULL,
  `item_discount` decimal(20,2) DEFAULT NULL,
  `item_total` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_invoice_item_amounts`
--

INSERT INTO `ip_invoice_item_amounts` (`item_amount_id`, `item_id`, `item_subtotal`, `item_tax_total`, `item_discount`, `item_total`) VALUES
(2, 2, '20.75', '0.00', '0.00', '20.75'),
(3, 3, '47.00', '0.00', '0.00', '47.00'),
(4, 4, '-41.00', '0.00', '0.00', '-41.00');

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_sumex`
--

CREATE TABLE `ip_invoice_sumex` (
  `sumex_id` int(11) NOT NULL,
  `sumex_invoice` int(11) NOT NULL,
  `sumex_reason` int(11) NOT NULL,
  `sumex_diagnosis` varchar(500) NOT NULL,
  `sumex_observations` varchar(500) NOT NULL,
  `sumex_treatmentstart` date NOT NULL,
  `sumex_treatmentend` date NOT NULL,
  `sumex_casedate` date NOT NULL,
  `sumex_casenumber` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_invoice_tax_rates`
--

CREATE TABLE `ip_invoice_tax_rates` (
  `invoice_tax_rate_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `include_item_tax` int(1) NOT NULL DEFAULT '0',
  `invoice_tax_rate_amount` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_item_lookups`
--

CREATE TABLE `ip_item_lookups` (
  `item_lookup_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL DEFAULT '',
  `item_description` longtext NOT NULL,
  `item_price` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_merchant_responses`
--

CREATE TABLE `ip_merchant_responses` (
  `merchant_response_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `merchant_response_successful` tinyint(1) DEFAULT '1',
  `merchant_response_date` date NOT NULL,
  `merchant_response_driver` varchar(35) NOT NULL,
  `merchant_response` varchar(255) NOT NULL,
  `merchant_response_reference` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_payments`
--

CREATE TABLE `ip_payments` (
  `payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL DEFAULT '0',
  `payment_date` date NOT NULL,
  `payment_amount` decimal(20,2) DEFAULT NULL,
  `payment_note` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_payment_custom`
--

CREATE TABLE `ip_payment_custom` (
  `payment_custom_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `payment_custom_fieldid` int(11) NOT NULL,
  `payment_custom_fieldvalue` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_payment_methods`
--

CREATE TABLE `ip_payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_payment_methods`
--

INSERT INTO `ip_payment_methods` (`payment_method_id`, `payment_method_name`) VALUES
(1, 'Cash'),
(2, 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `ip_products`
--

CREATE TABLE `ip_products` (
  `product_id` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `product_sku` text,
  `product_name` text,
  `product_description` longtext NOT NULL,
  `product_price` decimal(20,2) DEFAULT NULL,
  `purchase_price` decimal(20,2) DEFAULT NULL,
  `provider_name` text,
  `tax_rate_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `product_tariff` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_projects`
--

CREATE TABLE `ip_projects` (
  `project_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_quotes`
--

CREATE TABLE `ip_quotes` (
  `quote_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_group_id` int(11) NOT NULL,
  `quote_status_id` tinyint(2) NOT NULL DEFAULT '1',
  `quote_date_created` date NOT NULL,
  `quote_date_modified` datetime NOT NULL,
  `quote_date_expires` date NOT NULL,
  `quote_number` varchar(100) DEFAULT NULL,
  `quote_discount_amount` decimal(20,2) DEFAULT NULL,
  `quote_discount_percent` decimal(20,2) DEFAULT NULL,
  `quote_url_key` char(32) NOT NULL,
  `quote_password` varchar(90) DEFAULT NULL,
  `notes` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_quote_amounts`
--

CREATE TABLE `ip_quote_amounts` (
  `quote_amount_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `quote_item_subtotal` decimal(20,2) DEFAULT NULL,
  `quote_item_tax_total` decimal(20,2) DEFAULT NULL,
  `quote_tax_total` decimal(20,2) DEFAULT NULL,
  `quote_total` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_quote_custom`
--

CREATE TABLE `ip_quote_custom` (
  `quote_custom_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `quote_custom_fieldid` int(11) NOT NULL,
  `quote_custom_fieldvalue` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_quote_items`
--

CREATE TABLE `ip_quote_items` (
  `item_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `item_tax_rate_id` int(11) NOT NULL,
  `item_product_id` int(11) DEFAULT NULL,
  `item_date_added` date NOT NULL,
  `item_name` text,
  `item_description` text,
  `item_quantity` decimal(20,2) DEFAULT NULL,
  `item_price` decimal(20,2) DEFAULT NULL,
  `item_discount_amount` decimal(20,2) DEFAULT NULL,
  `item_order` int(2) NOT NULL DEFAULT '0',
  `item_product_unit` varchar(50) DEFAULT NULL,
  `item_product_unit_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_quote_item_amounts`
--

CREATE TABLE `ip_quote_item_amounts` (
  `item_amount_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_subtotal` decimal(20,2) DEFAULT NULL,
  `item_tax_total` decimal(20,2) DEFAULT NULL,
  `item_discount` decimal(20,2) DEFAULT NULL,
  `item_total` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_quote_tax_rates`
--

CREATE TABLE `ip_quote_tax_rates` (
  `quote_tax_rate_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `include_item_tax` int(1) NOT NULL DEFAULT '0',
  `quote_tax_rate_amount` decimal(20,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_sessions`
--

CREATE TABLE `ip_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_settings`
--

CREATE TABLE `ip_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_settings`
--

INSERT INTO `ip_settings` (`setting_id`, `setting_key`, `setting_value`) VALUES
(19, 'default_language', 'Vietnamese'),
(20, 'date_format', 'm/d/Y'),
(21, 'currency_symbol', '$'),
(22, 'currency_symbol_placement', 'before'),
(23, 'currency_code', 'USD'),
(24, 'invoices_due_after', '30'),
(25, 'quotes_expire_after', '15'),
(26, 'default_invoice_group', '3'),
(27, 'default_quote_group', '4'),
(28, 'thousands_separator', ','),
(29, 'decimal_point', '.'),
(30, 'cron_key', 'c9Qxb7Fmdzh2pSUI'),
(31, 'tax_rate_decimal_places', '2'),
(32, 'pdf_invoice_template', 'InvoicePlane'),
(33, 'pdf_invoice_template_paid', 'InvoicePlane - paid'),
(34, 'pdf_invoice_template_overdue', 'InvoicePlane - overdue'),
(35, 'pdf_quote_template', 'InvoicePlane'),
(36, 'public_invoice_template', 'InvoicePlane_Web'),
(37, 'public_quote_template', 'InvoicePlane_Web'),
(38, 'disable_sidebar', '1'),
(39, 'read_only_toggle', '4'),
(40, 'invoice_pre_password', ''),
(41, 'quote_pre_password', ''),
(42, 'email_pdf_attachment', '1'),
(43, 'generate_invoice_number_for_draft', '1'),
(44, 'generate_quote_number_for_draft', '1'),
(45, 'sumex', '0'),
(46, 'sumex_sliptype', '1'),
(47, 'sumex_canton', '0'),
(48, 'system_theme', 'invoiceplane'),
(49, 'default_hourly_rate', '0.00'),
(50, 'projects_enabled', '1'),
(51, 'pdf_quote_footer', ''),
(52, 'enable_permissive_search_clients', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ip_tasks`
--

CREATE TABLE `ip_tasks` (
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_name` text,
  `task_description` longtext NOT NULL,
  `task_price` decimal(20,2) DEFAULT NULL,
  `task_finish_date` date NOT NULL,
  `task_status` tinyint(1) NOT NULL,
  `tax_rate_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_tax_rates`
--

CREATE TABLE `ip_tax_rates` (
  `tax_rate_id` int(11) NOT NULL,
  `tax_rate_name` text,
  `tax_rate_percent` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_units`
--

CREATE TABLE `ip_units` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `unit_name_plrl` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_uploads`
--

CREATE TABLE `ip_uploads` (
  `upload_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `url_key` char(32) NOT NULL,
  `file_name_original` longtext NOT NULL,
  `file_name_new` longtext NOT NULL,
  `uploaded_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_users`
--

CREATE TABLE `ip_users` (
  `user_id` int(11) NOT NULL,
  `user_type` int(1) NOT NULL DEFAULT '0',
  `user_active` tinyint(1) DEFAULT '1',
  `user_date_created` datetime NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_language` varchar(255) DEFAULT 'system',
  `user_name` text,
  `user_company` text,
  `user_address_1` text,
  `user_address_2` text,
  `user_city` text,
  `user_state` text,
  `user_zip` text,
  `user_country` text,
  `user_phone` text,
  `user_fax` text,
  `user_mobile` text,
  `user_email` text,
  `user_password` varchar(60) NOT NULL,
  `user_web` text,
  `user_vat_id` text,
  `user_tax_code` text,
  `user_psalt` text,
  `user_all_clients` int(1) NOT NULL DEFAULT '0',
  `user_passwordreset_token` varchar(100) DEFAULT '',
  `user_subscribernumber` varchar(40) DEFAULT NULL,
  `user_iban` varchar(34) DEFAULT NULL,
  `user_gln` bigint(13) DEFAULT NULL,
  `user_rcc` varchar(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_users`
--

INSERT INTO `ip_users` (`user_id`, `user_type`, `user_active`, `user_date_created`, `user_date_modified`, `user_language`, `user_name`, `user_company`, `user_address_1`, `user_address_2`, `user_city`, `user_state`, `user_zip`, `user_country`, `user_phone`, `user_fax`, `user_mobile`, `user_email`, `user_password`, `user_web`, `user_vat_id`, `user_tax_code`, `user_psalt`, `user_all_clients`, `user_passwordreset_token`, `user_subscribernumber`, `user_iban`, `user_gln`, `user_rcc`) VALUES
(1, 1, 1, '2018-09-05 09:54:46', '2018-09-05 09:54:46', 'Vietnamese', 'Kent', NULL, '', '', '', '', '', '', '', '', '', 'kent.dang1706@gmail.com', '$2a$10$d2f684a2e8bf8e0e3164cO2iamrAiuc6Pw.mDqyuoYqkjdGsevnuu', '', NULL, NULL, 'd2f684a2e8bf8e0e3164ca', 0, '', NULL, NULL, NULL, NULL),
(2, 2, 1, '2018-09-07 10:39:09', '2018-09-07 10:39:09', 'Vietnamese', 'Quang', '', '', '', '', '', '', '', '', '', '', 'quanny@gmail.com', '$2a$10$10a8d1c8272f475ea7638en41KPPaf/r6G70WOo/RofcJSwBquwC2', '', '', '', '10a8d1c8272f475ea7638f', 0, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_user_clients`
--

CREATE TABLE `ip_user_clients` (
  `user_client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_user_custom`
--

CREATE TABLE `ip_user_custom` (
  `user_custom_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_custom_fieldid` int(11) NOT NULL,
  `user_custom_fieldvalue` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_versions`
--

CREATE TABLE `ip_versions` (
  `version_id` int(11) NOT NULL,
  `version_date_applied` varchar(14) NOT NULL,
  `version_file` varchar(45) NOT NULL,
  `version_sql_errors` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_versions`
--

INSERT INTO `ip_versions` (`version_id`, `version_date_applied`, `version_file`, `version_sql_errors`) VALUES
(1, '1536133985', '000_1.0.0.sql', 0),
(2, '1536133987', '001_1.0.1.sql', 0),
(3, '1536133987', '002_1.0.2.sql', 0),
(4, '1536133991', '003_1.1.0.sql', 0),
(5, '1536133991', '004_1.1.1.sql', 0),
(6, '1536133991', '005_1.1.2.sql', 0),
(7, '1536133993', '006_1.2.0.sql', 0),
(8, '1536133993', '007_1.2.1.sql', 0),
(9, '1536133994', '008_1.3.0.sql', 0),
(10, '1536133994', '009_1.3.1.sql', 0),
(11, '1536133994', '010_1.3.2.sql', 0),
(12, '1536133994', '011_1.3.3.sql', 0),
(13, '1536133998', '012_1.4.0.sql', 0),
(14, '1536133999', '013_1.4.1.sql', 0),
(15, '1536133999', '014_1.4.2.sql', 0),
(16, '1536133999', '015_1.4.3.sql', 0),
(17, '1536133999', '016_1.4.4.sql', 0),
(18, '1536133999', '017_1.4.5.sql', 0),
(19, '1536133999', '018_1.4.6.sql', 0),
(20, '1536134021', '019_1.4.7.sql', 0),
(21, '1536134022', '020_1.4.8.sql', 0),
(22, '1536134022', '021_1.4.9.sql', 0),
(23, '1536134022', '022_1.4.10.sql', 0),
(24, '1536134027', '023_1.5.0.sql', 0),
(25, '1536134034', '024_1.5.1.sql', 0),
(26, '1536134034', '025_1.5.2.sql', 0),
(27, '1536134034', '026_1.5.3.sql', 0),
(28, '1536134034', '027_1.5.4.sql', 0),
(29, '1536134034', '028_1.5.5.sql', 0),
(30, '1536134034', '029_1.5.6.sql', 0),
(31, '1536134035', '030_1.5.7.sql', 0),
(32, '1536134035', '031_1.5.8.sql', 0),
(33, '1536134035', '032_1.5.9.sql', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_clients`
--
ALTER TABLE `ip_clients`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `client_active` (`client_active`);

--
-- Indexes for table `ip_client_custom`
--
ALTER TABLE `ip_client_custom`
  ADD PRIMARY KEY (`client_custom_id`),
  ADD UNIQUE KEY `client_id` (`client_id`,`client_custom_fieldid`);

--
-- Indexes for table `ip_client_notes`
--
ALTER TABLE `ip_client_notes`
  ADD PRIMARY KEY (`client_note_id`),
  ADD KEY `client_id` (`client_id`,`client_note_date`);

--
-- Indexes for table `ip_custom_fields`
--
ALTER TABLE `ip_custom_fields`
  ADD PRIMARY KEY (`custom_field_id`),
  ADD UNIQUE KEY `custom_field_table_2` (`custom_field_table`,`custom_field_label`),
  ADD KEY `custom_field_table` (`custom_field_table`);

--
-- Indexes for table `ip_custom_values`
--
ALTER TABLE `ip_custom_values`
  ADD PRIMARY KEY (`custom_values_id`);

--
-- Indexes for table `ip_email_templates`
--
ALTER TABLE `ip_email_templates`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `ip_families`
--
ALTER TABLE `ip_families`
  ADD PRIMARY KEY (`family_id`);

--
-- Indexes for table `ip_imports`
--
ALTER TABLE `ip_imports`
  ADD PRIMARY KEY (`import_id`);

--
-- Indexes for table `ip_import_details`
--
ALTER TABLE `ip_import_details`
  ADD PRIMARY KEY (`import_detail_id`),
  ADD KEY `import_id` (`import_id`,`import_record_id`);

--
-- Indexes for table `ip_invoices`
--
ALTER TABLE `ip_invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `invoice_url_key` (`invoice_url_key`),
  ADD KEY `user_id` (`user_id`,`client_id`,`invoice_group_id`,`invoice_date_created`,`invoice_date_due`,`invoice_number`),
  ADD KEY `invoice_status_id` (`invoice_status_id`);

--
-- Indexes for table `ip_invoices_recurring`
--
ALTER TABLE `ip_invoices_recurring`
  ADD PRIMARY KEY (`invoice_recurring_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `ip_invoice_amounts`
--
ALTER TABLE `ip_invoice_amounts`
  ADD PRIMARY KEY (`invoice_amount_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `invoice_paid` (`invoice_paid`,`invoice_balance`);

--
-- Indexes for table `ip_invoice_custom`
--
ALTER TABLE `ip_invoice_custom`
  ADD PRIMARY KEY (`invoice_custom_id`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`,`invoice_custom_fieldid`);

--
-- Indexes for table `ip_invoice_groups`
--
ALTER TABLE `ip_invoice_groups`
  ADD PRIMARY KEY (`invoice_group_id`),
  ADD KEY `invoice_group_next_id` (`invoice_group_next_id`),
  ADD KEY `invoice_group_left_pad` (`invoice_group_left_pad`);

--
-- Indexes for table `ip_invoice_items`
--
ALTER TABLE `ip_invoice_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `invoice_id` (`invoice_id`,`item_tax_rate_id`,`item_date_added`,`item_order`);

--
-- Indexes for table `ip_invoice_item_amounts`
--
ALTER TABLE `ip_invoice_item_amounts`
  ADD PRIMARY KEY (`item_amount_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ip_invoice_sumex`
--
ALTER TABLE `ip_invoice_sumex`
  ADD PRIMARY KEY (`sumex_id`);

--
-- Indexes for table `ip_invoice_tax_rates`
--
ALTER TABLE `ip_invoice_tax_rates`
  ADD PRIMARY KEY (`invoice_tax_rate_id`),
  ADD KEY `invoice_id` (`invoice_id`,`tax_rate_id`);

--
-- Indexes for table `ip_item_lookups`
--
ALTER TABLE `ip_item_lookups`
  ADD PRIMARY KEY (`item_lookup_id`);

--
-- Indexes for table `ip_merchant_responses`
--
ALTER TABLE `ip_merchant_responses`
  ADD PRIMARY KEY (`merchant_response_id`),
  ADD KEY `merchant_response_date` (`merchant_response_date`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `ip_payments`
--
ALTER TABLE `ip_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `payment_amount` (`payment_amount`);

--
-- Indexes for table `ip_payment_custom`
--
ALTER TABLE `ip_payment_custom`
  ADD PRIMARY KEY (`payment_custom_id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`,`payment_custom_fieldid`);

--
-- Indexes for table `ip_payment_methods`
--
ALTER TABLE `ip_payment_methods`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `ip_products`
--
ALTER TABLE `ip_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ip_projects`
--
ALTER TABLE `ip_projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `ip_quotes`
--
ALTER TABLE `ip_quotes`
  ADD PRIMARY KEY (`quote_id`),
  ADD KEY `user_id` (`user_id`,`client_id`,`invoice_group_id`,`quote_date_created`,`quote_date_expires`,`quote_number`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `quote_status_id` (`quote_status_id`);

--
-- Indexes for table `ip_quote_amounts`
--
ALTER TABLE `ip_quote_amounts`
  ADD PRIMARY KEY (`quote_amount_id`),
  ADD KEY `quote_id` (`quote_id`);

--
-- Indexes for table `ip_quote_custom`
--
ALTER TABLE `ip_quote_custom`
  ADD PRIMARY KEY (`quote_custom_id`),
  ADD UNIQUE KEY `quote_id` (`quote_id`,`quote_custom_fieldid`);

--
-- Indexes for table `ip_quote_items`
--
ALTER TABLE `ip_quote_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `quote_id` (`quote_id`,`item_date_added`,`item_order`),
  ADD KEY `item_tax_rate_id` (`item_tax_rate_id`);

--
-- Indexes for table `ip_quote_item_amounts`
--
ALTER TABLE `ip_quote_item_amounts`
  ADD PRIMARY KEY (`item_amount_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ip_quote_tax_rates`
--
ALTER TABLE `ip_quote_tax_rates`
  ADD PRIMARY KEY (`quote_tax_rate_id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`);

--
-- Indexes for table `ip_sessions`
--
ALTER TABLE `ip_sessions`
  ADD KEY `ip_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ip_settings`
--
ALTER TABLE `ip_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `setting_key` (`setting_key`);

--
-- Indexes for table `ip_tasks`
--
ALTER TABLE `ip_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `ip_tax_rates`
--
ALTER TABLE `ip_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `ip_units`
--
ALTER TABLE `ip_units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `ip_uploads`
--
ALTER TABLE `ip_uploads`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `ip_users`
--
ALTER TABLE `ip_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ip_user_clients`
--
ALTER TABLE `ip_user_clients`
  ADD PRIMARY KEY (`user_client_id`),
  ADD KEY `user_id` (`user_id`,`client_id`);

--
-- Indexes for table `ip_user_custom`
--
ALTER TABLE `ip_user_custom`
  ADD PRIMARY KEY (`user_custom_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`user_custom_fieldid`);

--
-- Indexes for table `ip_versions`
--
ALTER TABLE `ip_versions`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `version_date_applied` (`version_date_applied`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip_clients`
--
ALTER TABLE `ip_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ip_client_custom`
--
ALTER TABLE `ip_client_custom`
  MODIFY `client_custom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_client_notes`
--
ALTER TABLE `ip_client_notes`
  MODIFY `client_note_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_custom_fields`
--
ALTER TABLE `ip_custom_fields`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_custom_values`
--
ALTER TABLE `ip_custom_values`
  MODIFY `custom_values_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_email_templates`
--
ALTER TABLE `ip_email_templates`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_families`
--
ALTER TABLE `ip_families`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_imports`
--
ALTER TABLE `ip_imports`
  MODIFY `import_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_import_details`
--
ALTER TABLE `ip_import_details`
  MODIFY `import_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_invoices`
--
ALTER TABLE `ip_invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ip_invoices_recurring`
--
ALTER TABLE `ip_invoices_recurring`
  MODIFY `invoice_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_invoice_amounts`
--
ALTER TABLE `ip_invoice_amounts`
  MODIFY `invoice_amount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ip_invoice_custom`
--
ALTER TABLE `ip_invoice_custom`
  MODIFY `invoice_custom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_invoice_groups`
--
ALTER TABLE `ip_invoice_groups`
  MODIFY `invoice_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ip_invoice_items`
--
ALTER TABLE `ip_invoice_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ip_invoice_item_amounts`
--
ALTER TABLE `ip_invoice_item_amounts`
  MODIFY `item_amount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ip_invoice_sumex`
--
ALTER TABLE `ip_invoice_sumex`
  MODIFY `sumex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_invoice_tax_rates`
--
ALTER TABLE `ip_invoice_tax_rates`
  MODIFY `invoice_tax_rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_item_lookups`
--
ALTER TABLE `ip_item_lookups`
  MODIFY `item_lookup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_merchant_responses`
--
ALTER TABLE `ip_merchant_responses`
  MODIFY `merchant_response_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_payments`
--
ALTER TABLE `ip_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_payment_custom`
--
ALTER TABLE `ip_payment_custom`
  MODIFY `payment_custom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_payment_methods`
--
ALTER TABLE `ip_payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ip_products`
--
ALTER TABLE `ip_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_projects`
--
ALTER TABLE `ip_projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_quotes`
--
ALTER TABLE `ip_quotes`
  MODIFY `quote_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_quote_amounts`
--
ALTER TABLE `ip_quote_amounts`
  MODIFY `quote_amount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_quote_custom`
--
ALTER TABLE `ip_quote_custom`
  MODIFY `quote_custom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_quote_items`
--
ALTER TABLE `ip_quote_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_quote_item_amounts`
--
ALTER TABLE `ip_quote_item_amounts`
  MODIFY `item_amount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_quote_tax_rates`
--
ALTER TABLE `ip_quote_tax_rates`
  MODIFY `quote_tax_rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_settings`
--
ALTER TABLE `ip_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ip_tasks`
--
ALTER TABLE `ip_tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_tax_rates`
--
ALTER TABLE `ip_tax_rates`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_units`
--
ALTER TABLE `ip_units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_uploads`
--
ALTER TABLE `ip_uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_users`
--
ALTER TABLE `ip_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ip_user_clients`
--
ALTER TABLE `ip_user_clients`
  MODIFY `user_client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_user_custom`
--
ALTER TABLE `ip_user_custom`
  MODIFY `user_custom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_versions`
--
ALTER TABLE `ip_versions`
  MODIFY `version_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
