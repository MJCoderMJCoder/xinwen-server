package com.xinwen.pojo;

import java.util.List;
import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class User extends Model<User> {
	public static final User te = new User();

	/**
	 * 根据用户名查找管理员
	 */
	public User findManagerByusername(String username) {
		List<User> l = null;
		l = find("select * from user where username=?", username);
		if (l.size() > 0)
			return l.get(0);
		else
			return null;
	}

	/**
	 * 根据用户名查找管理员
	 */
	public List<User> findAllUser() {
		List<User> l = null;
		l = find("select * from user");
		if (l.size() > 0)
			return l;
		else
			return null;
	}
}