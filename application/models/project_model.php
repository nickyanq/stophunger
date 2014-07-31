<?php

/**
 * File : case_model.php
 * Created at 28-07-2014 1:03:04 PM
 * 
 * @author Corneliu Iancu - Opti Systems
 * @contact corneliu.iancu@opti.ro
 */
class Project_model extends CI_Model {

	public function __construct() {

		// Call the Model constructor
		parent::__construct();
	}

	/**
	 * 	Fetches all projects.
	 */
	public function getAllProjects() {
		$query = $this->db->get('projects');
		return $query->result();
	}

	/**
	 * Searches for a project by it's slug.
	 */
	public function findBySlug($slug) {

		$proj = $this->db->get_where('projects', array('slug' => $slug))->row();

		if ($proj) {
			return $proj;
		} else {
			return false;
		}
	}

}
