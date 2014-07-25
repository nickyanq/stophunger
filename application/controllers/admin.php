<?php

/**
 * File : admin.php
 * Created at 25-07-2014 11:37:15 AM
 * 
 * @author Corneliu Iancu - Opti Systems
 * @contact corneliu.iancu@opti.ro
 */
if (!defined('BASEPATH'))
	exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct() {

		parent::__construct();

		$this->load->model('user_model', 'userModel');
		//verificare login :) de fiecare data 
		
	}

	public function index() {

		$errors = array();

		$this->load->library('encrypt');

		if ($this->input->post()) {

			$data = $this->input->post();

			$response = $this->userModel->login((object) $data);

			switch ($response['code']) {
				case 1 : {
						//successfull login	
						//verificam tipul userului, si il redirectionam catre dashbordul respectiv.
						switch ($response['user']->level) {

							case 1 : {
								//admin	
								redirect(base_url().'admin/admin-dashboard');
								die('admin');
								} break;
							case 2 : {
								//manager	
								die('manager');
								} break;
							case 3 : {
								//donator	
								die('donator');
								} break;
							default : {
									
								} break;
						}

						die('kewl');
					} break;
				case 99 : {

						array_push($errors, 'Parola este invalida.');

						//password did not matched
					} break;
				case 101 : {
						//user not found
						array_push($errors, 'Acest user nu exista');
					} break;
				default : {
						
					} break;
			}
		}

		$this->load->library('encrypt');

		$this->load->view('admin/header');

		$this->load->view('admin/lander', array('data' => array(), 'errors' => $errors));

		$this->load->view('admin/footer');
	}

	public function aDashboard() {
		
		$errors = array();

		$this->load->view('admin/header');

		$this->load->view('admin/admin-dashboard', array('data' => array(), 'errors' => $errors));

		$this->load->view('admin/footer');
	}

}
