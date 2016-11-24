<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/22 0024
 * Time: 下午 3:36
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 后台角色权限组管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Authgroup extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		$this -> load -> library('pagination');
		$this -> load -> model('admingroup_model', 'ag');
	}

	/**
	 * 角色权限用户组管理首页
	 */
	public function index() {
		$data = $this -> data;
		$data['auth_group'] = $this -> ag -> get_auth_group_list();
		$this -> load -> view('authgroup.html', $data);
	}

	/**
	 * 删除角色权限
	 */
	public function del($id) {
		$data = $this -> data;
		//角色下存在用户，不允许删除
		if($this -> ag -> get_admincount_of_authgroup($id)){
			$error['msg'] = "此角色权限下存在管理员用户，不允许删除！";
			$error['url'] = site_url("Pkadmin/Authgroup/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
			return;
		}
	}

	public function edit() {
	}

}
