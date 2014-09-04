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
	 * 	Fetches all news.
	 */
	public function getAllNews() {
		$query = $this->db->get('news');
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

	/**
	 * 	Returns a priject by its id. 
	 * @param type $id
	 * @return boolean
	 */
	public function findById($id) {

		$proj = $this->db->get_where('projects', array('id' => $id))->row();

		if ($proj) {
			return $proj;
		} else {
			return false;
		}
	}

	/**
	 * Returns a news record by its id.
	 * @param type $id
	 * @return boolean
	 */
	public function getNewsById($id) {
		$proj = $this->db->get_where('news', array('id' => $id))->row();

		if ($proj) {
			return $proj;
		} else {
			return false;
		}
	}

	/**
	 * Update a projects data.
	 * @param type $id
	 * @param type $data
	 */
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

	/**
	 * Adds a news
	 */
	public function addNews($aData) {

		$this->db->insert('news', $aData);

		return $this->db->insert_id();
	}

	/**
	 * Updates a news info.
	 * By its id.
	 * @param type $id
	 * @param type $data
	 */
	public function updateNews($id, $data) {
		$update = array(
			'title' => $data->title,
			'date' => $data->date,
			'intro' => $data->intro,
			'description' => $data->description,
		);
		if (isset($data->coverphoto)) {
			$update['coverphoto'] = $data->coverphoto;
		}
		if (isset($data->photo_bottom)) {
			$update['photo_bottom'] = $data->photo_bottom;
		}
		$this->db->where('id', $id);
		$this->db->update('news', $update);
	}

	/**
	 * Deletes a news with a given id
	 * @param type $iId
	 * @return boolean
	 */
	public function deleteNews($iId) {
		$this->db->delete('news', array('id' => $iId));
		return true;
	}

	/**
	 * Adds a project.
	 * @param type $oProject
	 * @return type
	 */
	public function addProject($oProject) {

		if (isset($oProject->show_all_projects)) {
			$oProject->show_all_projects = true;
		}

		$aProject = (array) $oProject;

		$this->db->insert('projects', $aProject);

		return $this->db->insert_id();
	}

	/**
	 * Returns an array of testimonials assigned to a project
	 * @param type $id
	 * @return type
	 */
	public function getTestimonials($id) {
		return $this->db->get_where('testimonials', array('project_id' => $id))->result();
	}

	/**
	 * Returns a testimonial by its id.
	 */
	public function getTestimonialById($id) {

		$this->db->select('testimonials.*,projects.title as ptitle');
		$this->db->from('testimonials');
		$this->db->join('projects', 'testimonials.project_id = projects.id');
		$this->db->where('testimonials.id', $id);

		return $this->db->get()->row();
	}

	/**
	 * Update testimonial data
	 * @param type $id
	 * @param type $data
	 */
	public function updateTestimonial($id, $data) {
		$this->db->where('id', $id);
		$this->db->update('testimonials', $data);
		return true;
	}
	
	/**
	 * Adds a new testimonial asigned to a project id
	 * @param type $iProjectId
	 * @param array $aData
	 * @return type
	 */
	public function addTestimonial($iProjectId, $aData) {
		$aData['project_id'] = $iProjectId;
		$this->db->insert('testimonials', $aData);
		return $this->db->insert_id();
	}

	
	/**
	 * Deletes a testimonial by its id,
	 * and returns the id of the project it belonged to
	 * @param type $iTestimonialId
	 */
	public function deleteTestimonial($iTestimonialId){
		
		$pr = $this->db->get_where('testimonials',array('id'=>$iTestimonialId))->row();
		
		$this->db->delete('testimonials', array('id' => $iTestimonialId));	
		
		return $pr->project_id;
	
	}
	
}
