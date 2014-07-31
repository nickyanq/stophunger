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
	public function __construct() {
		parent::__construct();
		$this->load->model('case_model', 'caseModel');
		$this->load->model('user_model', 'userModel');
		$this->load->model('project_model', 'projectModel');
	}

	public function index() {

		if ($this->input->post()) {
			$data = $this->input->post();

			$this->userModel->addNewsletter($data['newsletter']);

			$this->session->set_flashdata('success', 'Adaugat cu succes.');

			redirect(base_url());
		}

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

		$projects = $this->projectModel->getAllProjects();

		$this->load->view('header');

		$this->load->view('proiecte', array('projects' => $projects));

		$this->load->view('footer');
	}

	public function contact() {


		if ($this->input->post()) {

			$data = $this->input->post();

//			validare data --> validare email.


			$this->load->library('email', $config);

			$this->email->from($data['email'], $data['firstname'] . ' ' . $data['lastname']);

			$this->email->to('ianq_cornel@yahoo.com');

			$this->email->subject('Stop hunger - Contact page');

			$this->email->message($data['comment']);

			$this->email->send();

			$this->session->set_flashdata('success', "Trimis cu succes.");

			redirect(base_url() . 'contact');
		}

		$this->load->view('header');

		$this->load->view('contact');

		$this->load->view('footer');
	}

	public function proiect() {



		$this->load->view('header');

		$slug = $this->uri->segment(2);

		$project = $this->projectModel->findBySlug($slug);

		if ($project) {
			$this->load->view('proiect',array('project'=>$project));
		} else {
			$this->load->view('404');
		}


		$this->load->view('footer');
	}

}
