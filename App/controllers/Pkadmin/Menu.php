<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/16 0022
 * Time: 上午 11:16
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 后台菜单管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		$this -> load -> model('setting_model', 'setting');
	}

	/**
	 * 首页->菜单列表
	 */
	public function index() {
		$data = $this -> data;
		$list = $this -> setting -> get_all_menu();
		$data['menu_list'] = $this -> get_menu_tree($list);
		$this -> load -> view('menu.html', $data);
	}

	/**
	 * 删除菜单
	 */
	public function del($id) {
		$data = $this -> data;
		//控制台菜单不允许删除
		if ($id == 1) {
			$error['msg'] = "控制台菜单不允许删除！";
			$error['url'] = site_url("Pkadmin/Menu/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
			return;
		}
		//如果菜单存在下级菜单不允许删除
		if ($this -> setting -> have_menu_children($id)) {
			$error['msg'] = "此菜单下存在子菜单不允许删除！";
			$error['url'] = site_url("Pkadmin/Menu/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
			return;
		}
		//进行删除操作
		if ($this -> setting -> del_menu($id)) {
			$this -> pk -> add_log('删除操作菜单，ID：' . $id, $this -> ADMINISTRSTORS['admin_id'], $this -> ADMINISTRSTORS['username']);
			$success['msg'] = "菜单删除成功！";
			$success['url'] = site_url("Pkadmin/Menu/index");
			$success['wait'] = 3;
			$data['success'] = $success;
			$this -> load -> view('success.html', $data);
		} else {
			$error['msg'] = "菜单删除失败！";
			$error['url'] = site_url("Pkadmin/Menu/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
		}
	}

	/**
	 * 编辑菜单
	 */
	public function edit($id) {
		$data = $this -> data;
		$data['menulist'] = $this -> setting -> get_all_menu();
		$data['editmenu'] = $this -> setting -> get_menu_byid($id);
		$this -> load -> view('menu_edit.html', $data);
	}

}
