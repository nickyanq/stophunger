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
		$this->load->model('news_model', 'newsModel');
	}

	public function index() {

		if ($this->input->post()) {
			$data = $this->input->post();
			if (empty($data['newsletter'])) {
				$this->session->set_flashdata('error', 'Completati campul de newsletter.');

				redirect(base_url());
			}
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
		$this->load->library('mailer');

		if ($this->input->post()) {

			$data = $this->input->post();
			
//			validare data --> validare email.

			$config = Array(
				'mailtype' => 'html'
			);
			$this->load->library('email' , $config);

			$this->email->from($data['email'], $data['firstname'] . ' ' . $data['lastname']);

			$this->email->to('office@stophunger.ro');

			$this->email->subject('Stop hunger - Contact page');

			$message = $this->load->view('mail-template', $data ,TRUE);
			
			$this->email->message($message);

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
			$this->load->view('proiect', array('project' => $project));
		} else {
			$this->load->view('404');
		}


		$this->load->view('footer');
	}

	public function noutati() {

		$news = $this->newsModel->getAllNews();

		$this->load->view('header');

		$this->load->view('noutati', array('news' => $news));

		$this->load->view('footer');
	}

	public function noutate($id) {

		$noutate = $this->newsModel->findById($id);

		$this->load->view('header');

		if (!$noutate) {
			$this->load->view('404', array());
		} else {
			$this->load->view('noutate', array('noutate' => $noutate));
		}



		$this->load->view('footer');
	}

	public function doneaza() {
		$this->load->view('header');

		$this->load->view('doneaza', array());

		$this->load->view('footer');
	}

	public function adoptaOFamilie() {
		
		if($data = $this->input->post()){
			
			$config = Array(
				'mailtype' => 'html'
			);
			$this->load->library('email' , $config);

			$this->email->from($data['email'], $data['firstname_lastname']);

			$this->email->to('corneliu.iancu@opti.ro');

			$this->email->subject('Stop hunger - Contact Adopta o familie');

			$message = $this->load->view('mail-template-adopta', $data ,TRUE);
			
			$this->email->message($message);

			$this->email->send();

			$this->session->set_flashdata('success', "Trimis cu succes.");

			redirect(base_url());
			
		}
		
		$this->load->view('header');

		$this->load->view('adopta-o-familie', array());

		$this->load->view('footer');
	}

	public function template() {
		$this->load->view('mail-template', array());
	}

}
