package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.DBNews;

public interface NewsServiceMapper {

	List<DBNews> get_News();

	List<DBNews> get_News2(int begin, int end);

}
