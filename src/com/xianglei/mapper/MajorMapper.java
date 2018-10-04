package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.Major;

public interface MajorMapper {
	/**
	 * 获取专业列表
	 */
	List<Major> get_majorlist();

	/**
	 * 模糊查找专业
	 * 
	 * @param content
	 * @return
	 */
	List<Major> get_majorLikelist(String content);

	/**
	 *  添加专业
	 * 
	 * @param major
	 * @param remark
	 */
	void add_major(String major, String remark);

	void update_Major(Integer id, String major, String remark);

	void delete_Major(Integer id);

	

}
