<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/21 0020
 * Time: 上午 11:42
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 用户及组模型
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Admingroup_model extends CI_Model {
	const TBL_ADMIN = 'admin';
	const TBL_AUTHRULE = 'auth_rule';

	/**
	 * 函数：获取管理员用户数量
	 * @return int 管理员用户数量
	 */
	public function get_administrator_count() {
		return $this -> db -> count_all(self::TBL_ADMIN);
	}

}
