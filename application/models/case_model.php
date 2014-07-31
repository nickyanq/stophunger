<?php

/**
 * File : case_model.php
 * Created at 28-07-2014 1:03:04 PM
 * 
 * @author Corneliu Iancu - Opti Systems
 * @contact corneliu.iancu@opti.ro
 */
class Case_model extends CI_Model {

	public function __construct() {

		// Call the Model constructor
		parent::__construct();
	}

	/**
	 * 	Fetches all cases.
	 */
	public function getAllCases() {
		$query = $this->db->get('cases');
		return $query->result();
	}

	/**
	 * 	Fetches a case.
	 */
	public function getCase($id) {

		return $this->db->get_where('cases', array('id' => $id), 1)->row();
	}

	public function addFile($file) {
		$this->db->insert('files', $file);
	}

	public function updateCase($data, $id) {

		$update = array(
			'firstname' => $data['firstname'],
			'lastname' => $data['lastname'],
			'age'=> $data['age'],
			'city' => $data['city'],
			'description' => $data['description'],
			'partener' => $data['partener'],
			'more_details' => $data['more_details']
		);

		$this->db->where('id', $id);
		$this->db->update('cases', $update);

		return array('code' => 1, 'message' => 'Salvat cu succes.');
	}
	
	
	public function getAllFiles($id_case){
		return $this->db->get_where('files',array('id_case'=>$id_case))->result();
	}

	public function addCase($data) {

		$case = array(
			'firstname' => '',
			'lastname' => '',
			'age' => '',
			'city' => '',
			'description' => '',
			'more_details' => '',
			'profile' => null,
			'insertdate' => date('Y-m-d', time()),
		);

		if (!isset($data->firstname)) {
			return array('code' => '101', 'message' => 'Campul nume este necompletat.');
		}
		if (!isset($data->lastname)) {
			return array('code' => '101', 'message' => 'Campul prenume este necompletat.');
		}
		if (!isset($data->description)) {
			return array('code' => '101', 'message' => 'Campul descriere este necompletat.');
		}

		if (isset($data->case)) {
			//ar trebui verificat daca exista poza de profil deja.
			$case['profile'] = $data->case['upload_data']['file_name'];
		}


		$case['firstname'] = $data->firstname;
		$case['lastname'] = $data->lastname;
		$case['description'] = $data->description;
		$case['more_details'] = $data->more_details;
		$case['age'] = $data->age;
		$case['city'] = $data->city;
		$case['partener'] = $data->partener;

		$this->db->insert('cases', $case);

		return array('code' => '1', 'message' => 'Caz inserat cu succes.');
	}

}
