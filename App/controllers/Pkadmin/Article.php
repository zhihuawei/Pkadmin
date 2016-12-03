<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/12/1 00226
 * Time: 下午 2:21
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 后台文章管理控制器
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends Pkadmin_Controller {

	public function __construct() {
		parent::__construct();
		$this -> load -> library('pagination');
		$this -> load -> model('article_model', 'ac');
	}

	/**
	 * 文章管理首页
	 */
	public function index($offset = '') {
		$data = $this -> data;
		$this -> load -> view('article.html', $data);
	}

	/**
	 * 新增文章
	 */
	public function add() {
		$data = $this -> data;
		$data['category_list'] = $this -> ac -> get_category_list();
		$this -> load -> view('article_add.html', $data);
	}

	/**
	 * 修改文章
	 */
	public function edit() {
		$data = $this -> data;
		$data['category_list'] = $this -> ac -> get_category_list();
		$this -> load -> view('article_edit.html', $data);
	}

	/**
	 * 删除文章
	 */
	public function del() {
	}

	/**
	 * 新增修改文章内容
	 */
	public function update() {
		$data = $this -> data;
		$id = $this -> input -> post('id');
		$params['category_id'] = $this -> input -> post('category_id');
		$params['article_title'] = $this -> input -> post('article_title');
		$params['keywords'] = $this -> input -> post('keywords');
		$params['article_desc'] = $this -> input -> post('article_desc');
		$params['content'] = $this -> input -> post('content');
		$params['edit_time'] = time();

		//文章插图上传
		if (!empty($_FILES['article_pic']['tmp_name'])) {
			//配置上传参数
			$config['upload_path'] = './Data/upload/article_pic/' . date("Ym");
			//原图路径
			if (!file_exists($config['upload_path'])) {
				mkdir($config['upload_path'], 0777, true);
			}
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['file_name'] = 'pkadmin_' . date("YmdHis") . random();
			$config['max_size'] = 2048;
			$this -> load -> library('upload', $config);
			if ($this -> upload -> do_upload('article_pic')) {
				$article_pic_info = $this -> upload -> data();
				$path_info = "Data/upload/article_pic/" . date("Ym") . "/";
				$params['article_pic'] = $path_info . $article_pic_info['file_name'];
			} else {
				$error['msg'] = $this -> upload -> display_errors();
				$error['url'] = site_url("Pkadmin/Article/index");
				$error['wait'] = 3;
				$data['error'] = $error;
				$this -> load -> view('error.html', $data);
				return;
			}
		}
		if ($id) {
			//修改文章
		} else {
			//插入文章
			$params['issue_time'] = time();
			if ($this -> ac -> insert_article($params)) {
				$this -> pk -> add_log('新增文章：' . $params['article_title'], $this -> ADMINISTRSTORS['admin_id'], $this -> ADMINISTRSTORS['username']);
				$success['msg'] = "新增文章成功！";
				$success['url'] = site_url("Pkadmin/Article/index");
				$success['wait'] = 3;
				$data['success'] = $success;
				$this -> load -> view('success.html', $data);
			} else {
				$error['msg'] = "新增文章失败！";
				$error['url'] = site_url("Pkadmin/Article/index");
				$error['wait'] = 3;
				$data['error'] = $error;
				$this -> load -> view('error.html', $data);
			}
		}

	}

}
