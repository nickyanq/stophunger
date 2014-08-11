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

	public static $accountTypes = array('Admin', 'Manager', 'Donor');
	protected $user;

	
	/**
	 * Initialize the user model, and the case model.
	 * Also check if there is any logged user 
	 * and redirects them to dashboard if logged.
	 */
	public function __construct() {

		parent::__construct();

		$this->user = FALSE;

		$this->load->model('user_model', 'userModel');
		//verificare login :) de fiecare data 

		$this->load->model('case_model', 'caseModel');

		$this->check_login();
	}

	/**
	 * Login page,
	 * If we get post data, we try to login and redirect the user
	 * depending on its account level.
	 */
	public function index() {

		$errors = array();

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
									redirect(base_url() . 'admin/admin-dashboard/list-accounts');
									die('admin');
								} break;
							case 2 : {
									//manager
									redirect(base_url() . 'admin/manager-dashboard/list-cases');
									die('manager');
								} break;
							case 3 : {
									//donator	
									redirect(base_url() . 'sponsor');
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

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/lander', array('data' => array(), 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 * The page to add a new account
	 * 
	 */
	public function adminAddAccounts() {

		//set restriction level to admin only

		$errors = array();

		if ($this->input->post()) {

			$data = $this->input->post();

			$response = $this->userModel->addAccount((object) $data);

			switch ($response['code']) {
				case 1 : {
						//success
						$this->session->set_flashdata('success', $response['message']);
					} break;
				case 10 : {
						$this->session->set_flashdata('error', $response['message']);
						//username in folosinta
					} break;
				case 11 : {
						$this->session->set_flashdata('error', $response['message']);
						//email in folosinta
					} break;
				default : {
						$this->session->set_flashdata('error', $response['message']);
						//cazul 3
					} break;
			}

			redirect(base_url() . 'admin/admin-dashboard/add-accounts');
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('data' => array(), 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 * Main Admin dashboard - listing accounts
	 */
	public function adminListAccounts() {
		//set restriction level to admin only

		$accounts = $this->userModel->getAccounts();

		$errors = array();
		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('data' => $accounts, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 *  Check login private method.
	 * It's called in the constructor so it's called at the begining of every page.
	 */
	private function check_login() {


		$current_user = $this->session->userdata('user');

		if (!$current_user && $this->uri->segment(2)) {
			//redirectionare
			redirect(base_url() . 'admin/');
		} else {

			$this->user = $current_user;
			//nu face nimic 
		}
	}

	/**
	 * The level 2 - manager dashboard.
	 */
	public function managerDashboard() {

		$config['upload_path'] = './assets/uploads/';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		$config['max_size'] = 0;
		$config['max_width'] = 0;
		$config['max_height'] = 0;

		$this->load->library('upload', $config);

		$errors = array();
		if ($this->input->post()) {

			$data = $this->input->post();

			if (!$this->upload->do_upload('profile')) {
				$error = array('error' => $this->upload->display_errors());
//				it should never enter here.
				var_dump($error);

				die('failed upload');
			} else {

				$data['case'] = array('upload_data' => $this->upload->data());

				$r = $this->caseModel->addCase((object) $data);

				switch ($r['code']) {
					case 1 : {
							$this->session->set_flashdata('success', $r['message']);
						} break;
					case 101 : {
							$this->session->set_flashdata('error', $r['message']);
						} break;
					default : {
							$this->session->set_flashdata('error', 'Cazul nu a putut fi insertat.');
						} break;
				}
			}
			redirect(base_url() . 'admin/manager-dashboard/add-case');
		}


		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/manager-dashboard', array('data' => array(), 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 * Managers dashboard - listing cases.
	 */
	public function managerListCases() {

		$errors = array();

		$cases = $this->caseModel->getAllCases();

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/manager-dashboard', array('data' => $cases, 'user' => $this->user));

		$this->load->view('admin/footer');
	}
	
	
	/**
	 * The page for managing an existing case.
	 */
	public function manageCase($route) {

		$files = $this->caseModel->getAllFiles($route);

		$errors = array();

		$case = $this->caseModel->getCase($route);

		//verificare post :)
		if ($this->input->post()) {
			$data = $this->input->post();

			if (($this->input->post('submit') == 'updateInfo')) {
				//update la informatii
				$r = $this->caseModel->updateCase($data, $route);

				$this->session->set_flashdata('success', $r['message']);
			} else {

				//verifica daca este setat numele fisierului
				if ($data['filename'] == '') {
					$this->session->set_flashdata('error', 'Trebuie sa completati numele fisierului.');
					redirect(base_url() . 'admin/manager-dashboard/case/' . $route);
				}

				if ($_FILES['document']['name'] == '') {
					$this->session->set_flashdata('error', 'Trebuie sa selectati un fisier.');
					redirect(base_url() . 'admin/manager-dashboard/case/' . $route);
				}

				$ext = end(explode(".", $_FILES['document']['name']));
				$config['upload_path'] = './assets/uploads/';
				$config['allowed_types'] = 'gif|jpg|png|pdf';
				$config['max_size'] = 0;
				$config['max_width'] = 0;
				$config['max_height'] = 0;

				$filename = md5(microtime());

				$config['file_name'] = $filename . '.' . $ext;

				$this->load->library('upload', $config);

				if (!$this->upload->do_upload('document')) {
					$error = array('error' => $this->upload->display_errors());
					$this->session->set_flashdata('error', $error['error']);
					redirect(base_url() . 'admin/manager-dashboard/case/' . $route);
				} else {
					$file = array(
						'id_case' => $route,
						'title' => $data['filename'],
						'filepath' => $filename . '.' . $ext
					);

					$this->caseModel->addFile($file);

					$this->session->set_flashdata('success', 'Adaugat cu succes.');
				}
			}


			redirect(base_url() . 'admin/manager-dashboard/case/' . $route);
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/manager-dashboard', array('case' => $case, 'files' => $files, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 * Sponsor dashboard.
	 */
	public function sponsor() {

		$cases = $this->caseModel->getAllCases();

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/sponsor-dashboard', array('cases' => $cases));

		$this->load->view('admin/footer');
	}

	/**
	 * View case as a sponsor.
	 * No editing allowed.
	 */
	public function sponsorCase($caseId) {

		$files = $this->caseModel->getAllFiles($caseId);

		$errors = array();

		$case = $this->caseModel->getCase($caseId);


		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/parts/sponsor-case', array('case' => $case, 'files' => $files));

		$this->load->view('admin/footer');
	}

	/**
	 * Destroys the sessions and redirects the user to login page.
	 */
	public function logout() {
		$this->session->sess_destroy();
		redirect(base_url() . 'admin/');
	}

	
	/**
	 * Deletes a file, and redirect the user to previous page(the case page).
	 * @param type $idFile
	 */
	public function deleteFile($idFile) {

		$this->load->library('user_agent');

		if ($filepath = $this->caseModel->deleteFileById($idFile)) {

			if (unlink($filepath)) {
				$this->session->set_flashdata('success', 'Sters cu succes.');
			} else {
				$this->session->set_flashdata('error', 'Fisierul nu a fost gasit.');
			}
		} else {
			$this->session->set_flashdata('error', 'Eroare la stergere');
		};
		if ($this->agent->is_referral()) {
			redirect($this->agent->referrer());
		} else {
			redirect(base_url());
		}
	}
	
	/**
	 * Deletes a case and all files beneath it.
	 * 
	 * @param type $idCase
	 */
	public function deleteCase($idCase) {

		$this->load->library('user_agent');

		if ($this->caseModel->deleteCaseById($idCase)) {

			$this->session->set_flashdata('success', 'Cazul a fost sters cu succes.');
		} else {
			$this->session->set_flashdata('error', 'Eroare la stergere');
		};

		redirect(base_url() . 'admin/manager-dashboard/list-cases');
	}

}
