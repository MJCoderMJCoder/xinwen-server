package com.xinwen.pojo;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import com.jfinal.core.Controller;

/**
 * BlogController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class UserController extends Controller {
	// 用户注册
	public void addUser() throws UnsupportedEncodingException {
		new User().set("username", getPara(0)).set("pass", getPara(1))
				.set("nickname", URLDecoder.decode(getPara(2), "UTF-8")).save();
		renderJson("success");
	}

	// 登录
	public void ulogin() {
		User m = User.te.findManagerByusername(getPara(0));
		if (m.getStr("pass").equals(getPara(1)))
			renderJson(m);
		else
			renderJson("1");
	}

	// 更新密码
	public void updateU() throws UnsupportedEncodingException {
		User.te.findById(getPara(0)).set("pass", getPara(1)).set("nickname", URLDecoder.decode(getPara(2), "utf-8"))
				.update();
		renderJson("success");
	}

	public void findAlluser() {
		if (User.te.findAllUser() == null) {
			renderJson("1");
		} else
			renderJson(User.te.findAllUser());
	}
}
