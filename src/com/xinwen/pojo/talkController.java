package com.xinwen.pojo;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.jfinal.core.Controller;

/**
 * BlogController
 * 
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class talkController extends Controller {
	// 评论
	public void addtalk() throws UnsupportedEncodingException {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS");
		new talk().set("xid", getPara(0)).set("msg", URLDecoder.decode(getPara(1), "utf-8"))
				.set("time", df.format(new Date())).set("uname", URLDecoder.decode(getPara(2), "utf-8")).save();
		renderJson(talk.te.findAll(getPara(0)));
	}

	//
	public void findalltalk() {
		if (talk.te.findAll(getPara(0)) != null)
			renderJson(talk.te.findAll(getPara(0)));
		else
			renderJson("1");
	}
}
