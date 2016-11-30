<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/30 0025
 * Time: 下午 4:33
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 后台文章分类管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		$this -> load -> library('pagination');
		//		$this -> load -> model('article_model', 'ag');
	}

	/**
	 * 文章分类首页-列表
	 */
	public function index() {
	}

}
