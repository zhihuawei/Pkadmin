<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/16 0022
 * Time: 上午 11:16
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 后台管理员管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		//$this -> load -> model('setting_model', 'setting');
	}

	/**
	 * 管理员用户管理首页
	 */
	public function index() {
		$data = $this -> data;
		$this -> load -> view('administrator.html', $data);
		//var_dump("index");
	}

}
