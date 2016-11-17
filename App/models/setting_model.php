<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/14 0019
 * Time: 上午 10:12
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 系统设置模型
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Setting_model extends CI_Model {
	const TBL_LOG = 'admin_log';
	const TBL_ADMIN = 'admin';
	const TBL_SETTING = 'setting';
	const TBL_AUTHRULE = 'auth_rule';

	/**
	 * 函数：更新网站设置信息
	 * @param array $params 网站信息内容
	 */
	public function update_site_setting($params) {
		foreach ($params as $key => $val) {
			$condition['key'] = $key;
			$data['val'] = $val;
			$this -> db -> where($condition) -> update(self::TBL_SETTING, $data);
		}
	}

	/**
	 * 函数：获取操作菜单信息
	 * @return array
	 */
	public function get_all_menu() {
		return $this -> db -> order_by('sort', 'ASC') -> get(self::TBL_AUTHRULE) -> result_array();
	}

	/**
	 * 函数：获取当前菜单id下是否存在子菜单
	 * @param int $id 菜单id
	 * @return bool
	 */
	public function have_menu_children($id) {
		$condition['pid'] = $id;
		if ($this -> db -> where($condition) -> count_all_results(self::TBL_AUTHRULE)) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

}
