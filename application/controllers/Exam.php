<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Exam extends CI_Controller {

	 function __construct()
	 {
	   parent::__construct();
	   $this->load->database();
	   $this->load->helper('url');
	   
	   $this->lang->load('basic', $this->config->item('language'));
		// redirect if not loggedin
		if(!$this->session->userdata('logged_in')){
			redirect('login');
			
		}
		$logged_in=$this->session->userdata('logged_in');
		if($logged_in['base_url'] != base_url()){
		$this->session->unset_userdata('logged_in');		
		redirect('login');
		}
	 }

	public function index()
	{
        $data['title']="Exam List";
		$this->load->view('header',$data);
		$this->load->view('exam_list',$data);
		$this->load->view('footer',$data);
	}
	  
	public function add_new_exam()
	{		
        $data['title']=$this->lang->line('add_new'). " Exam";
		 
		 $this->load->view('header',$data);
		$this->load->view('new_exam',$data);
		$this->load->view('footer',$data);
	}
	
	
	
}
