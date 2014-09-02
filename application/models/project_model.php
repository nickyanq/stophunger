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

	public function findById($id) {

		$proj = $this->db->get_where('projects', array('id' => $id))->row();

		if ($proj) {
			return $proj;
		} else {
			return false;
		}
	}

	public function updateProject($id, $data) {

		$update = array(
			'title' => $data->title,
			'slug' => $data->slug,
			'show_all_projects' => isset($data->show_all_projects) ? true : false,
			'description' => $data->description,
		);

		if (isset($data->coverphoto)) {
			$update['coverphoto'] = $data->coverphoto;
		}
		if (isset($data->photo_top)) {
			$update['photo_top'] = $data->photo_top;
		}
		if (isset($data->photo_bottom)) {
			$update['photo_bottom'] = $data->photo_bottom;
		}

		$this->db->where('id', $id);
		$this->db->update('projects', $update);
	}

	public function addProject($oProject) {

		if (isset($oProject->show_all_projects)) {
			$oProject->show_all_projects = true;
		}

		$aProject = (array) $oProject;

		$this->db->insert('projects', $aProject);

		return $this->db->insert_id();
	}

}
