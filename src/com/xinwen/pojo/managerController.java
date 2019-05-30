package com.xinwen.pojo;

import com.jfinal.core.Controller;

/**
 * BlogController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class managerController extends Controller {
	// 登录
	public void login() {
		manager m = manager.te.findManagerByusername(getPara("username"));
		if (m != null && m.getStr("pass").equals(getPara("pass"))) {
			setAttr("m", m);
			setSessionAttr("m", m);
			render("/manager_index.jsp");
		} else
			render("/manager_login.jsp");
	}

	// 更新密码
	public void updateManager() {
		manager m = getSessionAttr("m");
		if (getPara("oldpass").equals(m.getStr("pass"))) {
			manager.te.findById(getPara("id")).set("pass", getPara("newpass")).update();
			redirect("/manager_login.jsp");
		} else {
			redirect("/manager_login.jsp");
		}

	}

	// 退出
	public void exit() {
		removeSessionAttr("m");
		render("/manager_login.jsp");
	}
}
