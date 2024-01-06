<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once("Secure_Controller.php");

class Dashboard extends Secure_Controller 
{
	public function __construct()
	{
		parent::__construct(NULL, NULL, 'home');
	}

	public function index()
	{
		$this->load->view('home1/dashboard');
	}

	
}
?>