<?php

defined('BASEPATH') or exit('No direct script access allowed');

class LoginModel extends CI_Model{

	public function logincheck($data)
	{
		//echo "<pre>-->mod";print_r($data);exit;
		$query  = $this->db->select("user_id,user_name,password,permission_user_id")
					->from("user_login")
					->where("user_name",$data['username'])
					->where("password",md5($data['password']))
					->get()
					->row_array();

					//echo($this->db->last_query());
					//echo "<pre>";print_r($query);exit;

			if(isset($query)){
				$logindata = array(
				'userid'=> $query['user_id'],
				'username'=> $query['user_name'],
				'permission_user_id'=> $query['permission_user_id']

			); 
				$this->session->set_userdata($logindata);
				return true;
			}
			else
			{
				return false;
			}
	}



	public function addregister($data)
	{
		// echo "<pre>--mod";print_r($data);exit;

			$mailcount = $this->db->select('email')
						->from('user_register')
						->where('email',$data['email'])
						->get();

					$mail = $mailcount->num_rows();
					if($mail > 0)
					{
						return 0;
					}else{

				$add = array(
					'user_name'=>$data['uname'],
					'email'=>$data['email'],
					'password'=>$data['password'],
					'encrypt_password'=>md5($data['password']),
					'created_at' => date('Y-m-d H:i:s')
				);

				$insert = $this->db->insert("user_register",$add);

				$insert_id = $this->db->insert_id();
					$addlogin = array(
						'user_id '=> $insert_id,
						'user_name'=> $add['email'],
						'password'=> md5($add['password']),
						'permission_user_id'=> 2
					);
					$logininsert = $this->db->insert("user_login",$addlogin);
				//echo($this->db->last_query());exit;
					if(isset($insert))
					{
						return true;
					}else
					{
						return false;
					}

				}
			
	}




	public function checkmail($data)
	{
		$chkmail = $this->db->select('email')
					->where('email',$data['email'])
					->get('user_register')
					->row_array();

			if(isset($chkmail))
			{
				$_SESSION['usermail'] = $chkmail;
				//echo "<pre>";print_r($chkmail);exit;
				return $chkmail;
			}else{
				return 0;
			}

				
	}

	public function updatepassword($data)
	{
		//echo "<pre>";print_r($data);exit;
		$updatepassword = array(
			'password' => $data['password'],
			'encrypt_password' => md5($data['password']),
			'updated_at' => date('Y-m-d H:i:s')
		);

		$update = $this->db->where('email',$data['email'])
					->update('user_register',$updatepassword);

			if(isset($update))
			{
				$loginpswdupdate = array(
					'password' => md5($data['password'])
				);
				$loginupdate =  $this->db->where('user_name',$data['email'])
					->update('user_login',$loginpswdupdate);
			}

		return $update;
	}

}