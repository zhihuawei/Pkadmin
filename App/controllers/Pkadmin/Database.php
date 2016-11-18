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
		$data = $this -> data;
		$prefs = array('tables' => array(), 'ignore' => array(), 'format' => 'zip', 'filename' => date("YmdHis") . '_Pk_admin_backup.sql', 'newline' => "\n");
		$this -> load -> dbutil();
		$backup = $this -> dbutil -> backup($prefs);
		$this -> load -> helper('file');
		//备份文件路径
		$backup_path = "./Data/backup/";
		if (!file_exists($backup_path)) {
			mkdir($backup_path, 0777, true);
		}
		$path = $backup_path . date("YmdHis") . '_Pk_admin_backup.zip';
		write_file($path, $backup);
		$success['msg'] = "数据库备份成功，备份文件路径：" . $path;
		$success['url'] = site_url("Pkadmin/Database/index");
		$success['wait'] = 3;
		$data['success'] = $success;
		$this -> load -> view('success.html', $data);
	}
	
	/**
	 * 数据库优化
	 */
	 

}
