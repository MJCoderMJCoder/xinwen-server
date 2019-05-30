package com.xinwen.common;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.xinwen.index.IndexController;
import com.xinwen.pojo.User;
import com.xinwen.pojo.UserController;
import com.xinwen.pojo.manager;
import com.xinwen.pojo.managerController;
import com.xinwen.pojo.mokuai;
import com.xinwen.pojo.mokuaiController;
import com.xinwen.pojo.talk;
import com.xinwen.pojo.talkController;
import com.xinwen.pojo.xinwen;
import com.xinwen.pojo.xinwenController;

/**
 * API引导式配置
 */
public class DemoConfig extends JFinalConfig {

	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		// 加载少量必要配置，随后可用getProperty(...)获取值
		loadPropertyFile("a_little_config.txt");
		me.setDevMode(getPropertyToBoolean("devMode", false));
		me.setViewType(ViewType.JSP);
	}

	/**
	 * 配置路由
	 */
	public void configRoute(Routes me) {
		me.add("/", IndexController.class); // 第三个参数为该Controller的视图存放路径
		me.add("/manager", managerController.class);
		me.add("/ssss", xinwenController.class);
		me.add("/talk", talkController.class);
		me.add("/user", UserController.class);
		me.add("/mokuai", mokuaiController.class);
	}

	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbcUrl"), getProperty("user"),
				getProperty("password").trim());
		me.add(c3p0Plugin);

		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		arp.addMapping("manager", manager.class);
		arp.addMapping("pinglun", talk.class);
		arp.addMapping("xinwen", xinwen.class);
		arp.addMapping("user", User.class);
		arp.addMapping("mokuai", mokuai.class);
	}

	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {

	}

	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {

	}

	/**
	 * 建议使用 JFinal 手册推荐的方式启动项目 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 8007, "/", 5);
	}
}
