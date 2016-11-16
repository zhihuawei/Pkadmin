<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/14 0021
 * Time: 上午 8:44
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 网站设置控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Setting extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
	}

	/**
	 * 网站设置首页
	 */
	public function setting() {
		$data = $this -> data;
		if ($_POST) {
			$params['title'] = $this -> input -> post('title');
			$params['sitename'] = $this -> input -> post('sitename');
			$params['keywords'] = $this -> input -> post('keywords');
			$params['footer'] = $this -> input -> post('footer');
			$params['description'] = $this -> input -> post('description');
		} else {
			$this -> load -> view('setting.html', $data);
		}
	}

}
