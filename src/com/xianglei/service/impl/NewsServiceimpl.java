package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.NewsServiceMapper;
import com.xianglei.pojo.DBNews;
import com.xianglei.service.NewsService;

@Service
public class NewsServiceimpl implements NewsService {

	@Autowired 
	NewsServiceMapper mapper;
	public List<DBNews> get_News(String string) {
		// TODO Auto-generated method stub
		return mapper.get_News(string);
	}
	public List<DBNews> get_News2(int begin, int end,String tag) {
		// TODO Auto-generated method stub
		return mapper.get_News2(begin,end,tag);
	}
	public List<DBNews> get_News3(String string) {
		// TODO Auto-generated method stub
		return mapper.get_News3(string);
	}
	
	public List<DBNews> get_News4(int begin, int end) {
		// TODO Auto-generated method stub
		return mapper.get_News4(begin,end);
	}
	public List<DBNews> get_Hot() {
		// TODO Auto-generated method stub
		return mapper.get_Hot();
	}
	public DBNews get_Conetent(String id) {
		// TODO Auto-generated method stub
		return mapper.get_Conetent(id);
	}
	public List<DBNews> about_Conetent(String id) {
		// TODO Auto-generated method stub
		return mapper.about_Conetent(id);
	}
}
