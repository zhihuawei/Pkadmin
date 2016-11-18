<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/18 0023
 * Time: 上午 11:30
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 数据库管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Database extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		$this -> load -> model('setting_model', 'setting');
	}

	/**
	 * 数据库表首页
	 */
	public function index() {
		$data = $this -> data;
		$table = $this -> setting -> get_database_table();
		//将键名转换为小写
		$data['tablelist'] = array_map('array_change_key_case', $table);
		$this -> load -> view('database.html', $data);
	}

	/**
	 * 数据库备份
	 */
	public function backup() {
		$prefs = array(
			'tables' => array(), 
			'ignore' => array(), 
			'format' => 'txt', 
			'filename' => date("YmdHis").'mybackup.sql',
			'newline' => "\n"
		);
		$this->load->dbutil();
		$backup = $this->dbutil->backup($prefs);
		
		var_dump($backup);

		


	}

}
