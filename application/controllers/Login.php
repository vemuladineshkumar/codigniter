<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
    $this->load->view('login.php');
    }
        
        public function registration()
        {
            $this->load->helper('form');
      $this->load->library('form_validation');
      $this->form_validation->set_rules('email','E-mail','required|is_unique[registration.username]');
        if($this->form_validation->run() == false){
           // echo validation_errors();
        $this->load->view('login');
        } 

            }

	
}
