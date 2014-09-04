<?php

/**
 * File : case_model.php
 * Created at 28-07-2014 1:03:04 PM
 * 
 * @author Corneliu Iancu - Opti Systems
 * @contact corneliu.iancu@opti.ro
 */
class News_model extends CI_Model {

	public function __construct() {

		// Call the Model constructor
		parent::__construct();
	}

	/**
	 * 	Fetches all projects.
	 */
	public function getAllNews() {
		$query = $this->db->get('news');
		return $query->result();
	}

	/**
	 * Searches for a project by it's slug.
	 */
	public function findById($id) {

		$new = $this->db->get_where('news', array('id' => $id))->row();

		if ($new) {
			return $new;
		} else {
			return false;
		}
	}

}
