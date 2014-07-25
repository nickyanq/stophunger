<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 * 	- or -  
	 * 		http://example.com/index.php/welcome/index
	 * 	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index() {
		$this->load->view('header');

		$this->load->view('lander');

		$this->load->view('footer');
	}

	public function map() {

		$this->load->view('maps');
	}

	public function asociatia() {

		$this->load->view('header');

		$this->load->view('asociatia');

		$this->load->view('footer');
	}

	public function proiecte() {

		$this->load->view('header');

		$this->load->view('proiecte');

		$this->load->view('footer');
	}

	public function contact() {

		$this->load->view('header');

		$this->load->view('contact');

		$this->load->view('footer');
	}

	public function proiect() {

				
		
		$this->load->view('header');
		switch ($this->uri->segment(2)) {
			case 'o-dorinta-de-craciun' : {
				$this->load->view('proiect');
				
				} break;
			case 'test1' : {
					
				} break;
			case 'test2' : {
					
				} break;
			default : {
					$this->load->view('404');
				} break;
		}

		$this->load->view('footer');
	}

}
