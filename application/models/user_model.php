<?php

/**
 * File : user_model.php
 * Created at 25-07-2014 4:26:06 PM
 * 
 * @author Corneliu Iancu - Opti Systems
 * @contact corneliu.iancu@opti.ro
 */
class User_model extends CI_Model {

	var $title = '';
	var $content = '';
	var $date = '';

	function __construct() {

		// Call the Model constructor
		parent::__construct();
	}

	function login($data) {

		$user = $this->db->get_where('users', array('username' => $data->username), 1)->row();
		
		if ($user) {
			//check password match
			if ($this->encrypt->decode($user->password) == $data->password) {
				
				return array('code' => 1, 'messasge' => 'Successfull login','user'=> $user);
				
			} else {
				return array('code' => 99, 'messasge' => 'Parola este invalida.');
			}
		} else {
			return array('code' => 101, 'messasge' => 'Userul nu a fost gasit');
		}
	}

	function get_last_ten_entries() {
		$query = $this->db->get('entries', 10);
		return $query->result();
	}

	function insert_entry() {
		$this->title = $_POST['title']; // please read the below note
		$this->content = $_POST['content'];
		$this->date = time();

		$this->db->insert('entries', $this);
	}

	function update_entry() {
		$this->title = $_POST['title'];
		$this->content = $_POST['content'];
		$this->date = time();

		$this->db->update('entries', $this, array('id' => $_POST['id']));
	}

}
