<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/21 0023
 * Time: 上午 10:03
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 后台管理员管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		$this -> load -> library('pagination');
		$this -> load -> model('admingroup_model', 'ag');
	}

	/**
	 * 管理员用户管理首页
	 */
	public function index($offset = '') {
		$data = $this -> data;
		$keyword = $this -> input -> post('keyword');

		//配置分页信息
		$config['base_url'] = site_url('Pkadmin/Administrator/index/');
		$config['total_rows'] = $this -> ag -> get_administrator_count();
		$config['per_page'] = 20;

		//初始化分类页
		$this -> pagination -> initialize($config);
		//生成分页信息
		$data['pageinfo'] = $this -> pagination -> create_links();
		$data['administrator_list'] = $this -> ag -> get_administrator_list($keyword, $config['per_page'], $offset);
		$this -> load -> view('administrator.html', $data);
	}

	/**
	 * 删除管理员
	 */
	public function del($id) {
		$data = $this -> data;
		//超级管理员不允许删除
		if ($id == 1) {
			$error['msg'] = "超级管理员不允许删除！";
			$error['url'] = site_url("Pkadmin/Administrator/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
			return;
		}
		if ($this -> ag -> del_administrator($id)) {
			$this -> pk -> add_log('删除管理员用户，ID：' . $id, $this -> ADMINISTRSTORS['admin_id'], $this -> ADMINISTRSTORS['username']);
			$success['msg'] = "管理员用户删除成功！";
			$success['url'] = site_url("Pkadmin/Administrator/index");
			$success['wait'] = 3;
			$data['success'] = $success;
			$this -> load -> view('success.html', $data);
		} else {
			$error['msg'] = "管理员用户删除失败！";
			$error['url'] = site_url("Pkadmin/Administrator/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
		}
	}

	/**
	 * 编辑管理员
	 */
	public function edit($id) {
		$data = $this -> data;
		$data['auth_group'] = $this -> ag -> get_auth_group_list($id);
		$data['admin_info'] = $this -> ag -> get_administrator_info($id);
		$this -> load -> view('admin_edit.html', $data);
	}

}
