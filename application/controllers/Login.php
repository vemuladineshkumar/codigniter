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
	Public function ___construct(){
			   parent::___construct();
			   $this->load->database();
		   }

	public function index()
	{  $this->load->helper('form');
    $this->load->view('signin.php');
    }
        
        public function signup()
        {
            $this->load->helper('form');
      $this->load->library('form_validation');
	  $this->form_validation->set_rules('email','E-mail','required|is_unique[users.username]');
	  $this->form_validation->set_rules('name', 'User Name', 'min_length[6]|max_length[15]|required');
	  $this->form_validation->set_rules('re_pass', 'Confirm Password', 'matches[pass]|required');
	  $this->form_validation->set_rules('pass', 'Password', 'min_length[6]|max_length[10]|callback_password_check|required');
	  $this->form_validation->set_rules('phone', 'Phone Number', 'min_length[10]|max_length[11]|required');
	  $this->form_validation->set_message('password_check', 'Password must have at least 6 characters with atlease 1 CAPS, 1 small and 1 Numerical value');
		
	  if($this->form_validation->run() == false){
           // echo validation_errors();
		$this->load->view('signup');
		return;
		}
	
		$email = $this->input->post('email');
		$phone = $this->input->post('phone');
		$paaword = $this->input->post('pass');
		$additional_data = array(
			'first_name' => $this->input->post('name'),
			'phone' => $this->input->post('phone')
		);
		if ( $this->ion_auth->register($email, $paaword,$email, $additional_data))
		{
			// check to see if we are creating the user
			// redirect them back to the admin page
			$this->session->set_flashdata('message', $this->ion_auth->messages());
			redirect("Login/signin", 'refresh');
		}
	}
	public function password_check($str)
	{
	   if (preg_match('#[0-9]#', $str) && preg_match('#[a-zA-Z]#', $str)) {
		 return TRUE;
	   }
	   return FALSE;
	}

		public function signin()
        {
            $this->load->helper('form');
      $this->load->library('form_validation');
      $this->form_validation->set_rules('email','E-mail','required|is_unique[registration.username]');
        if($this->form_validation->run() == false){
           // echo validation_errors();
        $this->load->view('signin');
        } 

            }

	
}
