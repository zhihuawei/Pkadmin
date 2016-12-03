<?php

/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/30 0026
 * Time: 下午 5:32
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: 文章及分类模型
 * ==========================================
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class Article_model extends CI_Model {
	const TBL_CATEGORY = 'category';
	const TBL_ARTICLE = 'article';

	/**
	 * 函数：获取文章分类列表
	 * @return array
	 */
	public function get_category_list() {
		return $this -> db -> order_by('sort', 'ASC') -> get(self::TBL_CATEGORY) -> result_array();
	}

	/**
	 * 函数：获取文章分类信息
	 * @param int $category_id 分类id
	 * @return array 分类信息
	 */
	public function get_category_info($category_id) {
		$condition['category_id'] = $category_id;
		return $this -> db -> where($condition) -> get(self::TBL_CATEGORY) -> row_array();
	}

	/**
	 * 函数：插入文章分类
	 * @param array $params 文章分类信息
	 * @return bool
	 */
	public function insert_category($params) {
		return $this -> db -> insert(self::TBL_CATEGORY, $params);
	}

	/**
	 * 函数：修改文章分类
	 * @param int $category_id 分类id
	 * @param array $params 文章分类信息
	 * @return bool
	 */
	public function update_category($category_id, $params) {
		$condition['category_id'] = $category_id;
		return $this -> db -> where($condition) -> update(self::TBL_CATEGORY, $params);
	}

	/**
	 * 函数：删除文章分类
	 * @param int $category_id 分类id
	 * @return bool
	 */
	public function del_category($category_id) {
		$condition['category_id'] = $category_id;
		return $this -> db -> where($condition) -> delete(self::TBL_CATEGORY);
	}

	/**
	 * 函数：插入文章
	 * @param array $params 文章信息
	 * @return bool
	 */
	public function insert_article($params) {
		return $this -> db -> insert(self::TBL_ARTICLE, $params);
	}

	/**
	 * 函数：修改文章
	 * @param int $article_id 文章分类id
	 * @param array $params 文章信息
	 * @return bool
	 */
	public function update_article($article_id, $params) {
		$condition['article_id'] = $article_id;
		return $this -> db -> where($condition) -> update(self::TBL_ARTICLE, $params);
	}

}
