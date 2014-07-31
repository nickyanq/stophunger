<?php

/**
 * File : user_model.php
 * Created at 25-07-2014 4:26:06 PM
 * 
 * @author Corneliu Iancu - Opti Systems
 * @contact corneliu.iancu@opti.ro
 */
class User_model extends CI_Model {

	public function __construct() {

		// Call the Model constructor
		parent::__construct();
	}

	public function login($data) {

		$user = $this->db->get_where('users', array('username' => $data->username), 1)->row();

		if ($user) {
			//check password match
			if ($this->encrypt->decode($user->password) == $data->password) {

				$this->session->set_userdata('user', $user);

				return array('code' => 1, 'messasge' => 'Successfull login', 'user' => $user);
			} else {
				return array('code' => 99, 'messasge' => 'Parola este invalida.');
			}
		} else {
			return array('code' => 101, 'messasge' => 'Userul nu a fost gasit');
		}
	}

	public function addAccount($account) {

		$errors = array();
		
		if (!isset($account->username)) {
			return array('code'=>3, 'message'=>'Usernameul nu este completat.');
		}
		if (!isset($account->password)) {
			return array('code'=>3, 'message'=>'Parola nu este completata.');
		}
		if (!isset($account->email)) {
			return array('code'=>3, 'message'=>'Emailul nu este compltetat.');
		}
		if (!isset($account->firstname)) {
			return array('code'=>3, 'message'=>'Numele nu este completat.');
		}
		if (!isset($account->lastname)) {
			return array('code'=>3, 'message'=>'Prenumele nu este completat.');
		}
		if (!isset($account->level)) {
			return array('code'=>3, 'message'=>'Tipul contului nu este completat.');
		}


		$username_ck = $this->db->get_where('users', array('username' => $account->username), 1)->row();

		if ($username_ck) {
			return array('code' => 10, 'message' => 'Acest username este deja in folosinta');
		}

		$email_ck = $this->db->get_where('users', array('email' => $account->email), 1)->row();
		if ($email_ck) {
			return array('code' => 11, 'message' => 'Acest email este deja in folosinta');
		}

		if (!isset($account->username)) {
			
		}

		$new_user = array(
			'username' => $account->username,
			'password' => $this->encrypt->encode($account->password),
			'real_password' => $account->password,
			'email' => $account->email,
			'firstname' => $account->firstname,
			'lastname' => $account->lastname,
			'level' => $account->level,
			'insertdate' => date('Y-m-d H:i:s', time()),
			'last_login' => null
		);
		$this->db->insert('users', $new_user);

		return array('code' => 1, 'message' => 'Inserat cu success.');
	}

	/**
	 * Fetches all accounts
	 */
	public function getAccounts(){
		$query = $this->db->get('users');
		return $query->result();
	}
			
	
	public function addNewsletter($email){
		
		$insert = array('email'=>$email);
		
		$this->db->insert('newsletter',$insert);
		
		return array('code'=>1 , 'message' => "Adaugat cu succes.");
		
	}

}
