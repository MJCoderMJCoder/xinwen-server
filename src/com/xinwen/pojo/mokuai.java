package com.xinwen.pojo;

import java.util.List;
import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class mokuai extends Model<mokuai> {
	public static final mokuai te = new mokuai();

	/**
	 * 根据用户名查找管理员
	 */
	public List<mokuai> findAll() {
		List<mokuai> l = null;
		l = find("select * from mokuai ");
		if (l.size() > 0)
			return l;
		else
			return null;
	}
}