/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/12/1 0020
 * Time: 下午 3:08
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: article.js
 * ==========================================
 */

//$(function() {
//
//
//});

//表单提交验证
var Script = function() {

	'use strict';

	$.validator.setDefaults({
		submitHandler: function(form) {
			form.submit();
		}
	});

	$().ready(function() {
		$("#articleForm").validate({
			rules: {
				category_name: {
					required: true,
				},
				keywords: {
					required: true,
				},
				sort: {
					required: true,
				},
				category_desc: {
					required: true,
				},
			},

			messages: {
				category_name: "请输入分类名称！",
				keywords: "请为分类输入简要关键字！",
				sort: "请输入分类排序数值！",
				category_desc: "请输入分类的简单描述！",
			}
		});
	});

}();