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
		if($this->setting->have_menu_children($id)){
			$error['msg'] = "此菜单下存在子菜单不允许删除！";
			$error['url'] = site_url("Pkadmin/Menu/index");
			$error['wait'] = 3;
			$data['error'] = $error;
			$this -> load -> view('error.html', $data);
			return;
		}
		//if()
		//$id = $this->uri->segment(4);
		//var_dump($id);
		//echo 123;
	}

}
