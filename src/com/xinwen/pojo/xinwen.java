package com.xinwen.pojo;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;
@SuppressWarnings("serial")
public class xinwen extends Model<xinwen> {
	public static final xinwen te = new xinwen();
		public List<xinwen> findAll(){
			List<xinwen> l=find("select *  from xinwen order by tag desc");
			if(l.size()>0){
				return l;
				
			}else
				return null;
		} 
		public List<xinwen> findAllBym(String mname){
			List<xinwen> l=find("select *  from xinwen where mname=? order by tag desc",mname);
			if(l.size()>0){
				return l;
				
			}else
				return null;
		} 
		public xinwen findzhiding(){
			List<xinwen> l=find("select *  from xinwen where tag=?","10");
			if(l.size()>0){
				return l.get(0);
				
			}else
				return null;
		}
}