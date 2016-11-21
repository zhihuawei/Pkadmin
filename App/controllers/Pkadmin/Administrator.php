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
		$config['per_page'] = 2;

		//初始化分类页
		$this -> pagination -> initialize($config);
		//生成分页信息
		$data['pageinfo'] = $this -> pagination -> create_links();
		$data['administrator_list'] = $this -> ag -> get_administrator_list($keyword, $config['per_page'], $offset);
		$this -> load -> view('administrator.html', $data);
		//var_dump("index");
	}

}
