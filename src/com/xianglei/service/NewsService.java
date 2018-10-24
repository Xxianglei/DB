package com.xianglei.service;

import java.util.List;

import com.xianglei.pojo.DBNews;

public interface NewsService {

	List<DBNews> get_News(String string);

	List<DBNews> get_News2(int begin, int end, String tag);

	List<DBNews> get_News3(String type);
	List<DBNews> get_News4(int begin, int end);

	List<DBNews> get_Hot();

	DBNews get_Conetent(String id);

	List<DBNews> about_Conetent(String id);
}
