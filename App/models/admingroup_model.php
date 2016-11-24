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
	const TBL_AUTHGROUP = 'auth_group';
	const TBL_AUTHGROUPACCESS = 'auth_group_access';

	/**
	 * 函数：获取管理员用户数量
	 * @return int 管理员用户数量
	 */
	public function get_administrator_count() {
		return $this -> db -> count_all(self::TBL_ADMIN);
	}

	/**
	 * 函数：获取管理员用户列表
	 * @param array $map 模糊查询
	 * @param int $limit 每页显示数
	 * @param int $offset 偏移量
	 * @param array 管理员用户列表
	 */
	public function get_administrator_list($keyword = '', $limit, $offset) {
		if (empty($keyword)) {
			return $this -> db -> limit($limit, $offset) -> get(self::TBL_ADMIN) -> result_array();
		} else {
			return $this -> db -> like('username', $keyword) -> or_like('email', $keyword) -> limit($limit, $offset) -> get(self::TBL_ADMIN) -> result_array();
		}
	}

	/**
	 * 函数：删除管理员用户
	 * @param int $admin_id 管理员id
	 * @return bool
	 */
	public function del_administrator($admin_id) {
		$condition['admin_id'] = $admin_id;
		$this -> db -> where($condition) -> delete(self::TBL_AUTHGROUPACCESS);
		return $this -> db -> where($condition) -> delete(self::TBL_ADMIN);
	}

	/**
	 * 函数：根据id获取管理员信息
	 * @param int $admin_id 管理员id
	 * @return array $admininfo
	 */
	public function get_administrator_info($admin_id) {
		$condition['admin_id'] = $admin_id;
		$admininfo = $this -> db -> where($condition) -> get(self::TBL_ADMIN) -> row_array();
		$admininfo['head_pic'] = unserialize($admininfo['head_pic']);
		return $admininfo;
	}

	/**
	 * 函数：根据管理员id获取管理员权限组信息
	 * @param int $admin_id 管理员id
	 * @return array 管理员权限组信息
	 */
	public function get_administrator_authgroup($admin_id) {
		$condition['admin_id'] = $admin_id;
		return $this -> db -> where($condition) -> get(self::TBL_AUTHGROUPACCESS) -> row_array();
	}

	/**
	 * 函数：获取权限组列表
	 * @return array
	 */
	public function get_auth_group_list() {
		return $this -> db -> get(self::TBL_AUTHGROUP) -> result_array();
	}

	/**
	 * 函数：修改管理员信息
	 * @param int $admin_id 管理员id
	 * @param array $auth_group 管理员权限组id
	 * @param array $params 管理员信息
	 * @return bool
	 */
	public function update_administrator($admin_id, $auth_group, $params) {
		$condition['admin_id'] = $admin_id;
		$this -> db -> where($condition) -> update(self::TBL_AUTHGROUPACCESS, $auth_group);
		return $this -> db -> where($condition) -> update(self::TBL_ADMIN, $params);
	}

	/**
	 * 函数：插入管理员信息
	 * @param array $params 管理员信息
	 * @param array $auth_group 管理员权限组id
	 */
	public function insert_administrator($params, $auth_group) {
		$result = $this -> db -> insert(self::TBL_ADMIN, $params);
		$auth_group['admin_id'] = $this -> db -> insert_id();
		return $this -> db -> insert(self::TBL_AUTHGROUPACCESS, $auth_group);
	}

}