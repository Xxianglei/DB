package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.Notice;

public interface NoticeMapper {

	List<Notice> get_Noticelist();

	List<Notice> get_NoticeLikelist(String content);

	void add_Notice(String title, String content, String create_date, int user);

	void update_Notice(String title, String content, String create_date, int id);

	void del_Notice(Integer id);

}
