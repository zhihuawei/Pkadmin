/**
 * ==========================================
 * Created by Pocket Knife Technology.
 * Author: ZhiHua_W <zhihua_wei@foxmail.com>
 * Date: 2016/11/28 0018
 * Time: 上午 11:10
 * Project: Pkadmin后台管理系统
 * Version: 1.0.0
 * Power: authgroup.js
 * ==========================================
 */

var Script = function() {

	$(".children").click(function() {
		$(this).parent().parent().parent().find(".father").prop("checked", true);
	})
	$(".father").click(function() {
		if(this.checked) {
			$(this).parent().parent().parent().find(".children").prop("checked", true);
		} else {
			$(this).parent().parent().parent().find(".children").prop("checked", false);
		}
	})

}