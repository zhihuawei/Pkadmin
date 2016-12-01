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
		$this -> load -> model('article_model', 'ac');
	}

	/**
	 * 文章分类首页-列表
	 */
	public function index() {
		$data = $this -> data;
		$data['category_list'] = $this->ac->get_category_list();
		$this -> load -> view('category.html', $data);
	}

	/**
	 * 添加文章分类
	 */
	public function add() {
		$data = $this -> data;
		$this -> load -> view('category_add.html', $data);
	}

	/**
	 * 删除文章分类
	 */
	public function del() {
	}

	/**
	 * 修改文章分类
	 */
	public function edit() {
		$data = $this -> data;
		$this -> load -> view('category_edit.html', $data);
	}

	/**
	 * 新增或修改文章分类信息
	 */
	public function update() {
		$data = $this -> data;
		$id = $this -> input -> post('id');
		$params['category_name'] = $this -> input -> post('category_name');
		$params['keywords'] = $this -> input -> post('keywords');
		$params['sort'] = $this -> input -> post('sort');
		$params['category_desc'] = $this -> input -> post('category_desc');
		//修改修改分类
		if ($id) {

		} else {
			//新增文章分类
			if ($this -> ac -> insert_category($params)) {
				$this -> pk -> add_log('新增文章分类：' . $params['category_name'], $this -> ADMINISTRSTORS['admin_id'], $this -> ADMINISTRSTORS['username']);
				$success['msg'] = "新增文章分类成功！";
				$success['url'] = site_url("Pkadmin/Category/index");
				$success['wait'] = 3;
				$data['success'] = $success;
				$this -> load -> view('success.html', $data);
			} else {
				$error['msg'] = "新增文章分类失败！";
				$error['url'] = site_url("Pkadmin/Category/index");
				$error['wait'] = 3;
				$data['error'] = $error;
				$this -> load -> view('error.html', $data);
			}
		}
	}

}
