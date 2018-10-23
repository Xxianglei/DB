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
	public List<DBNews> get_News() {
		// TODO Auto-generated method stub
		return mapper.get_News();
	}
	public List<DBNews> get_News2(int begin, int end) {
		// TODO Auto-generated method stub
		return mapper.get_News2(begin,end);
	}

}
