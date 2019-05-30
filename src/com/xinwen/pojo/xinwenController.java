package com.xinwen.pojo;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;

/**
 * BlogController
 * 
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class xinwenController extends Controller {
	//
	public void addNews() throws UnsupportedEncodingException {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		super.getFile("tupian").getFile().renameTo(new File("/WebRoot/img/" + System.currentTimeMillis() + ".jpg"));
		getModel(xinwen.class).set("img", URLDecoder.decode(super.getFile("tupian").getFileName(), "UTF-8"))
				.set("time", df.format(new Date())).save();
		List<xinwen> l = xinwen.te.findAll();
		if (l != null) {
			setAttr("x", l);
			render("/xinwenlist.jsp");
		}
	}

	public void findallxinwen() {
		setAttr("x", xinwen.te.findAll());
		render("/xinwenlist.jsp");
	}

	public void findallxinwenBym() throws UnsupportedEncodingException {
		System.out.println(URLDecoder.decode(getPara(0), "UTF-8"));
		List<xinwen> l = xinwen.te.findAllBym(URLDecoder.decode(getPara(0), "UTF-8"));
		if (l == null)
			renderJson("1");
		else
			renderJson(l);
	}

	public void toadd() {
		setAttr("m", mokuai.te.findAll());
		render("/xinwen_add.jsp");
	}

	//
	public void findallxinwenjs() {
		setAttr("x", xinwen.te.findAll());
		render("/xinwenlist.jsp");
	}

	public void del() {
		xinwen.te.deleteById(getPara(0));
		setAttr("x", xinwen.te.findAll());
		render("/xinwenlist.jsp");
	}

	public void toupx() {
		setAttr("m", mokuai.te.findAll());
		setAttr("x", xinwen.te.findById(getPara(0)));
		render("/xinwen_update.jsp");
	}

	public void updates() throws UnsupportedEncodingException {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		super.getFile("tupian").getFile().renameTo(new File("/WebRoot/img/" + System.currentTimeMillis() + ".jpg"));
		xinwen.te.findById(getPara("id")).set("img", URLDecoder.decode(super.getFile("tupian").getFileName(), "UTF-8"))
				.set("time", df.format(new Date())).set("title", getPara("title")).set("msg", getPara("msg"))
				.set("mname", getPara("mname")).update();
		List<xinwen> l = xinwen.te.findAll();
		if (l != null) {
			setAttr("x", l);
			render("/xinwenlist.jsp");
		}
	}
}
