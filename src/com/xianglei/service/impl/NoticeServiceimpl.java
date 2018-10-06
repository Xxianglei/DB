package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.NoticeMapper;
import com.xianglei.pojo.Notice;
import com.xianglei.service.NoticeService;

@Service
public class NoticeServiceimpl implements NoticeService {
	@Autowired
	NoticeMapper noticemapper;
	
	public List<Notice> get_Noticelist() {
		return noticemapper.get_Noticelist();

	}

	public List<Notice> get_NoticeLikelist(String content) {
		return noticemapper.get_NoticeLikelist(content);
	}

	public void add_Notice(String title, String content, String create_date, int user) {
	
		noticemapper.add_Notice(title,content,create_date,user);
	}

	public void update_Notice(String title, String content, String create_date, int id) {
		noticemapper.update_Notice(title,content,create_date,id);
		
	}

	public void del_Notice(Integer id) {
		noticemapper.del_Notice(id);
		
	}

}
