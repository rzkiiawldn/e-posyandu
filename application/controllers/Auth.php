<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->load->model("DataAkun");
	}
	public function index()
	{
		$this->load->view('login_admin');
	}

	public function loginKader()
	{
		$this->load->view('login_kader');
	}
	public function loginUser()
	{
		$this->load->view('login_user');
	}

	public function postLogin()
	{
		if ($this->input->post()) {
			if ($this->DataAkun->doLogin() === '0') {
				$this->session->set_flashdata('admin', 'Success as a admin.');
				redirect('admin');
			} else {
				$this->session->set_tempdata('err', 'User Name / Password salah....!', 3);
				redirect('auth');
			}
		}
		// if($this->input->post('username') === "user" && $this->input->post('password') === "user"){
		// 	$this->session->set_flashdata('user', 'Success as a user.');
		// 	redirect('user');
		// }else if($this->input->post('username') === "admin" && $this->input->post('password') === "admin"){
		// 	$this->session->set_flashdata('admin', 'Success as a admin.');
		// 	redirect('admin');
		// }else if($this->input->post('username') === "petugas" && $this->input->post('password') === "petugas"){
		// 	$this->session->set_flashdata('petugas', 'Success as a petugas.');
		// 	redirect('petugas');
		// }else{
		// 	$this->session->set_flashdata('error', 'Something is wrong.');
		// 	redirect('auth');
		// }
	}

	public function postLogin2()
	{
		if ($this->input->post()) {
			if ($this->DataAkun->doLogin2() === '1') {
				$this->session->set_flashdata('petugas', 'Success as a petugas.');
				redirect('petugas');
			} else {

				$this->session->set_tempdata('err', 'Kode Posyandu / Password Salah....!', 3);
				// $this->session->set_flashdata('error', 'Kode Posyandu / Password Salah....!');
				redirect('auth/loginKader');
			}
		}
	}

	public function postLogin3()
	{
		if ($this->input->post()) {
			if ($this->DataAkun->doLogin3() == '1') {
				$this->session->set_flashdata('user', 'Success as a user.');
				redirect('user');
			} else {

				$this->session->set_tempdata('err', 'ID KMS / Password Salah....!', 3);
				// $this->session->set_flashdata('error', 'Kode Posyandu / Password Salah....!');
				redirect('auth/loginUser');
			}
		}
	}

	public function logout()
	{

		$this->session->unset_userdata('nik');
		$this->session->set_tempdata('err', '<div class="alert alert-success" role="alert">You have been logged out!</div>', 3);
		redirect('auth');
	}
	public function logout_kader()
	{

		$this->session->unset_userdata('nik');
		$this->session->set_tempdata('err', '<div class="alert alert-success" role="alert">You have been logged out!</div>', 3);
		redirect('auth/loginKader');
	}
	public function logout_anak()
	{

		$this->session->unset_userdata('nik');
		$this->session->set_tempdata('err', '<div class="alert alert-success" role="alert">You have been logged out!</div>', 3);
		redirect('auth/loginUser');
	}
}
