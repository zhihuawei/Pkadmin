/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/14 0018
 * Time: 上午 10:02
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: setting.js
 * ==========================================
 */

//表单提交验证
var Script = function() {

	'use strict';

	$.validator.setDefaults({
		submitHandler: function(form) {
			form.submit();
		}
	});
	$().ready(function() {
		$("#settingForm").validate({
			rules: {
				mobile: {
					required: true,
					isMobile: true
				},
				qq: {
					required: true,
					maxlength: 20
				},
				email: {
					required: true,
					email: true
				},
			},
			messages: {
				mobile: "请输入正确的手机号！",
				email: "请输入正确的邮箱号！",
				qq: {
					required: "请输入qq号码！",
					maxlength: "您的qq号码不能超过20个字符长！"
				},
			}
		});

	});
}();