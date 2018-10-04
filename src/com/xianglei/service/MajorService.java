package com.xianglei.service;

import java.util.List;

import com.xianglei.pojo.Major;

public interface MajorService {

	List<Major> get_majorlist();

	List<Major> get_majorLikelist(String content);

	void addMajor(String major, String remark);

	void update_Major(Integer id, String major, String remark);

	void delete_Major(Integer id);



}
