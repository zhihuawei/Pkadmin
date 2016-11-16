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
		if($id == 1){
			
		}
		//$id = $this->uri->segment(4);
		var_dump($id);
		echo 123;
	}

}
