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
	public $projectModel;

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
		$this->load->model('project_model', 'projectModel');

		$this->check_login();
	}

	/**
	 * Login page,
	 * If we get post data, we try to login and redirect the user
	 * depending on its account level.
	 */
	public function index() {

//		$this->userModel

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
									$this->session->set_flashdata('success', 'Bine ai venit!');
									//admin	
									redirect(base_url() . 'admin/admin-dashboard/list-accounts');
									die('admin');
								} break;
							case 2 : {
									$this->session->set_flashdata('success', 'Bine ai venit!');
									//manager
									redirect(base_url() . 'admin/manager-dashboard/list-cases');
									die('manager');
								} break;
							case 3 : {
									$this->session->set_flashdata('success', 'Bine ai venit!');
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
						$this->session->set_flashdata('error', 'Parola este invalida.');
						array_push($errors, 'Parola este invalida.');

						//password did not matched
					} break;
				case 101 : {
						$this->session->set_flashdata('error', 'Acest user nu exista');
						//user not found
						array_push($errors, 'Acest user nu exista');
					} break;
				default : {
						
					} break;
			}
			redirect(base_url() . 'admin');
		}

		if ($this->user) {

			switch ($this->user->level) {
				case 1 : {
						redirect(base_url() . 'admin/admin-dashboard/list-accounts');
					} break;
				case 2 : {
						redirect(base_url() . 'admin/manager-dashboard/list-cases');
					} break;
				default : {
						redirect(base_url() . 'sponsor');
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

		$this->setPermisionLevel(1);


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

		$this->setPermisionLevel(1);

		$accounts = $this->userModel->getAccounts();

		$errors = array();

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('data' => $accounts, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 * Edits an account out.
	 * @param type $idAccount
	 */
	public function editAccount($idAccount) {

		$this->setPermisionLevel(1);

		$account = $this->userModel->getAccountById($idAccount);

		if (!$account) {
			$this->session->set_flashdata('error', 'Acest account nu a fost gasit.');
			redirect(base_url() . 'admin/admin-dashboard/list-accounts');
		}

		if ($data = $this->input->post()) {

			$this->load->library('encrypt');

			$data['id'] = $idAccount;

			$this->userModel->updateAccount((object) $data);

			$this->session->set_flashdata('success', 'Contul a fost salvat cu succes.');
			redirect(base_url() . 'admin/admin-dashboard/edit-account/' . $idAccount);
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('account' => $account, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	/**
	 * Deletes an account
	 * @param type $idAccount
	 */
	public function deleteAccount($idAccount) {

		$this->setPermisionLevel(1);

		if ($this->userModel->deleteAccount($idAccount)) {
			$this->session->set_flashdata('success', 'Contul a fost sters cu succes.');
		} else {
			$this->session->set_flashdata('error', 'Contul nu a fost gasit.');
		}
		redirect(base_url() . 'admin/admin-dashboard/list-accounts');

		die('ballocks');
	}

	/**
	 * The level 2 - manager dashboard.
	 */
	public function managerDashboard() {

		$this->setPermisionLevel(2);

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

		$this->setPermisionLevel(2);

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

		$this->setPermisionLevel(2);

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

		$this->setPermisionLevel(3);

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

		$this->setPermisionLevel(3);

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

		$this->setPermisionLevel(2);

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

		$this->setPermisionLevel(2);

		$this->load->library('user_agent');

		if ($this->caseModel->deleteCaseById($idCase)) {

			$this->session->set_flashdata('success', 'Cazul a fost sters cu succes.');
		} else {
			$this->session->set_flashdata('error', 'Eroare la stergere');
		};

		redirect(base_url() . 'admin/manager-dashboard/list-cases');
	}

	public function adminListProjects() {

		$this->setPermisionLevel(1);

		$projects = $this->projectModel->getAllProjects();

		$errors = array();

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('data' => $projects, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	public function adminListNews() {
		$this->setPermisionLevel(1);

		$news = $this->projectModel->getAllNews();

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('data' => $news, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	public function adminEditNews($id) {

		$oNews = $this->projectModel->getNewsById($id);

		if ($this->input->post()) {
			$data = $this->input->post();
//			print_r($data);

			if (!empty($_FILES)) {
				$this->load->library('upload');

				// news images se salveaza in assets/images/uploads/newsphotos/

				$config['upload_path'] = 'assets/images/uploads/newsphotos/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '10000';
				$config['max_width'] = '2048';
				$config['max_height'] = '1536';
				$this->upload->initialize($config);

				foreach ($_FILES as $field => $file) {
					if ($file['error'] == 0) {
						//stergem poza curenta
						@unlink('assets/images/uploads/newsphotos/' . $oNews->{$field});

						$_FILES[$field]['name'] = uniqid() . microtime() . '.jpg';

						if ($this->upload->do_upload($field)) {
							$dt = $this->upload->data();
							$data[$field] = $dt['file_name'];
						} else {
							$errors = $this->upload->display_errors();
							$this->session->set_flashdata('error', $errors);
							redirect(base_url() . 'admin/admin-dashboard/nws/' . $oProject->id);
						}
					}
				}

				$this->projectModel->updateNews($id, (object) $data);
				$this->session->set_flashdata('success', 'Salvat cu success.');
				redirect(base_url() . 'admin/admin-dashboard/nws/' . $id);
			}
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('news' => $oNews, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	public function adminAddNews() {

		if ($this->input->post()) {
			$data = $this->input->post();
			//verificare imputuri goale
			$js = '<script type="text/JavaScript">$().ready(function(){';
			foreach ($data as $key => $value) {
				$js.='$("input[name=' . $key . ']").val("' . $value . '");';;
			}
			$js.='});</script>';

			if ($data['title'] == '') {
				$this->session->set_flashdata('error', 'Campul titlu nu este completat.');
				$this->session->set_flashdata('hydrate_fields', $js);
				redirect(base_url() . 'admin/admin-dashboard/add-news');
			}
			if ($data['date'] == '') {
				$this->session->set_flashdata('error', 'Campul data nu este completat.');
				$this->session->set_flashdata('hydrate_fields', $js);
				redirect(base_url() . 'admin/admin-dashboard/add-news');
			}
			if ($data['intro'] == '') {
				$this->session->set_flashdata('error', 'Campul intro nu este completat.');
				$this->session->set_flashdata('hydrate_fields', $js);
				redirect(base_url() . 'admin/admin-dashboard/add-news');
			}
			if ($data['description'] == '') {
				$this->session->set_flashdata('error', 'Campul descriere nu este completat.');
				$this->session->set_flashdata('hydrate_fields', $js);
				redirect(base_url() . 'admin/admin-dashboard/add-news');
			}



			if (!empty($_FILES)) {
				$this->load->library('upload');
				// news images se salveaza in assets/images/uploads/newsphotos/
				$config['upload_path'] = 'assets/images/uploads/newsphotos/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '10000';
				$config['max_width'] = '2048';
				$config['max_height'] = '1536';
				$this->upload->initialize($config);

				foreach ($_FILES as $field => $file) {
					if ($file['error'] == 0) {
						//stergem poza curenta
//						@unlink('assets/images/uploads/newsphotos/' . $oNews->{$field});

						$_FILES[$field]['name'] = uniqid() . microtime() . '.jpg';

						if ($this->upload->do_upload($field)) {
							$dt = $this->upload->data();
							$data[$field] = $dt['file_name'];
						} else {
							$errors = $this->upload->display_errors();
							$this->session->set_flashdata('error', $errors);
							redirect(base_url() . 'admin/admin-dashboard/nws/' . $oProject->id);
						}
					}
				}
			}

			print_r($data);
			die;
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('user' => $this->user));

		$this->load->view('admin/footer');
	}

	public function adminEditProject($project_id) {

		$oProject = $this->projectModel->findById($project_id);



		if ($this->input->post()) {
			$data = $this->input->post();

			if (!empty($_FILES)) {
				$this->load->library('upload');
				$config['upload_path'] = 'assets/images/uploads/projectPhotos/admin_uploads/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '10000';
				$config['max_width'] = '2048';
				$config['max_height'] = '1536';
				$this->upload->initialize($config);

				foreach ($_FILES as $field => $file) {
					if ($file['error'] == 0) {
						echo $oProject->{$field};
						//stergem poza curenta
						@unlink('assets/images/uploads/projectPhotos/' . $oProject->{$field});

						$_FILES[$field]['name'] = uniqid() . microtime() . '.jpg';

						if ($this->upload->do_upload($field)) {
							$dt = $this->upload->data();
							$data[$field] = 'admin_uploads/' . $dt['file_name'];
						} else {
							$errors = $this->upload->display_errors();
							$this->session->set_flashdata('error', $errors);
							redirect(base_url() . 'admin/admin-dashboard/edit-project/' . $oProject->id);
						}
					}
				}
			}

			$this->projectModel->updateProject($project_id, (object) $data);
			$this->session->set_flashdata('success', 'Salvat cu success.');
			redirect(base_url() . 'admin/admin-dashboard/project/' . $project_id);
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('project' => $oProject, 'user' => $this->user));

		$this->load->view('admin/footer');
	}

	public function adminAddProject() {
		if ($this->input->post()) {

			$data = $this->input->post();

			switch (true) {
				case empty($data['title']) : {
						$this->session->set_flashdata('error', 'Titlu lasat gol.');
						redirect(base_url() . 'admin/admin-dashboard/add-project');
					} break;
				case empty($data['slug']) : {
						$this->session->set_flashdata('error', 'URL slug lasat gol');
						redirect(base_url() . 'admin/admin-dashboard/add-project');
					} break;
				case empty($data['description']) : {
						$this->session->set_flashdata('error', 'Campul descriere este gol');
						redirect(base_url() . 'admin/admin-dashboard/add-project');
					} break;
				default : {
						
					} break;
			}

			$this->load->library('upload');

			$config['upload_path'] = 'assets/images/uploads/projectPhotos/admin_uploads/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size'] = '10000';
			$config['max_width'] = '2048';
			$config['max_height'] = '1536';

			$this->upload->initialize($config);


			foreach ($_FILES as $field => $file) {
				// No problems with the file
				//verificare file exists

				if (empty($_FILES[$field]['name'])) {
					$this->session->set_flashdata('error', $field . ' nu s-a setat ');
					redirect(base_url() . 'admin/admin-dashboard/add-project');
				}

				if ($file['error'] == 0) {
					// So lets upload

					$_FILES[$field]['name'] = uniqid() . microtime() . '.jpg';

					if ($this->upload->do_upload($field)) {
						$dt = $this->upload->data();
					} else {
						$errors = $this->upload->display_errors();
						$this->session->set_flashdata('error', $errors);
						redirect(base_url() . 'admin/admin-dashboard/add-project');
					}
				}

				$data[$field] = 'admin_uploads/' . $dt['file_name'];
			}
			$pr_id = $this->projectModel->addProject((object) $data);
			$this->session->set_flashdata('success', 'Salvat cu success.');
			redirect(base_url() . 'admin/admin-dashboard/project/' . $pr_id);
		}

		$this->load->view('admin/header', array('user' => $this->user));

		$this->load->view('admin/admin-dashboard', array('user' => $this->user));

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
	 * Sets a user level permision
	 * 
	 * @param type $level
	 */
	private function setPermisionLevel($level) {
		if ($this->user->level > $level) {
			$this->session->set_flashdata('error', 'Access denied');
			if ($this->user) {

				switch ($this->user->level) {
					case 1 : {
							redirect(base_url() . 'admin/admin-dashboard/list-accounts');
						} break;
					case 2 : {
							redirect(base_url() . 'admin/manager-dashboard/list-cases');
						} break;
					default : {
							rredirect(base_url() . 'sponsor');
						} break;
				}
			}
		} else {
//			echo "<script>alert('" . 'it is cool' . "')</script>";
		}
	}

}
