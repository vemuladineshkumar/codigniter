<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->database();
		$query = $this->db->query('SELECT * FROM orders')->result();
// $row = $query;
 
		//$this->load->view('homecontent');
	}
	public function orderlist()
	{
		$this->load->database();
		$this->load->model('Homemodel');
		$ord = $this->Homemodel->orderlist();
		$data['orders']=$ord;
		$data['title']="orders";
		$this->load->view('orderlist', $data);
	}
	public function dinesh()
	{
		$this->load->database();
		$this->load->model('Homemodel');
		$ord = $this->Homemodel->orderlist();
		echo json_encode($ord);
	}
	public function test()
	{
		
		$data['title']="testpage";
		$this->load->view('test', $data);
		
	}
	public function wellcome($greet =null){
		echo $greet;
	}
}
