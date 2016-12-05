<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/02 0031
 * Time: 上午 9:10
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power:  前台首页控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Home_Controller {

	public function index() {
		$this -> load -> view('welcome');
	}
	
	public function test() {
		echo APPPATH . ADMIN_VIEW_DIR;
		var_dump(123);
		echo "hahhahhaha";
		//$this -> load -> view('welcome_message');
	}

}
