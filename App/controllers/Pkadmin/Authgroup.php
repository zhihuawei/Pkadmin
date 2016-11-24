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
		//var_dump($data['auth_group']);
		$this -> load -> view('authgroup.html', $data);
	}

	/**
	 * 删除角色权限
	 */
	public function del($id) {

	}

	public function edit() {
	}

}
