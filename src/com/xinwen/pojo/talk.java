package com.xinwen.pojo;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;
@SuppressWarnings("serial")
public class talk extends Model<talk> {
	public static final talk te = new talk();
		public List<talk> findAll(String id){
			List<talk> l=find("select *  from pinglun where xid=?",id);
			if(l.size()>0){
				return l;
				
			}else
				return null;
		} 
		public talk findAbyid(String id){
			List<talk> l=find("select *  from pinglun where xid=?",id);
			if(l.size()>0){
				return l.get(0);
				
			}else
				return null;
		} 
}