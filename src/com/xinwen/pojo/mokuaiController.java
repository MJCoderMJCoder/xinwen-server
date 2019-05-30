package com.xinwen.pojo;

import java.util.List;

import com.jfinal.core.Controller;

/**
 * BlogController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class mokuaiController extends Controller {
	public void insertM() {
		getModel(mokuai.class).save();
		List<mokuai> m = mokuai.te.findAll();
		setAttr("m", m);
		render("/mokuai_list.jsp");
	}

	public void findAll() {
		List<mokuai> m = mokuai.te.findAll();
		setAttr("m", m);
		render("/mokuai_list.jsp");
	}

	public void findAlls() {
		List<mokuai> m = mokuai.te.findAll();
		if (m == null) {
			renderJson("1");
		} else {
			renderJson(m);
		}
	}

	public void toup() {
		setAttr("x", mokuai.te.findById(getPara(0)));
		render("/mokuai_update.jsp");
	}

	public void findDel() {
		mokuai.te.deleteById(getPara(0));
		List<mokuai> m = mokuai.te.findAll();
		setAttr("m", m);
		render("/mokuai_list.jsp");
	}

	// 更新模块
	public void updateM() {
		mokuai.te.findById(getPara("id")).set("title", getPara("title")).update();
		List<mokuai> m = mokuai.te.findAll();
		setAttr("m", m);
		render("/mokuai_list.jsp");
	}

}
