package com.xianglei.service;

import java.util.List;

import com.xianglei.pojo.DBNews;

public interface NewsService {

	List<DBNews> get_News();

	List<DBNews> get_News2(int begin, int end);

}
