package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.MajorMapper;
import com.xianglei.pojo.Major;
import com.xianglei.service.MajorService;

@Service
public class MajorServiceimpl implements MajorService {

	
	@Autowired
	MajorMapper majorMapper;
	/**
	 * 默认查找
	 */
	public List<Major> get_majorlist() {
		return majorMapper.get_majorlist();
		
	}
	/**
	 * 模糊查找
	 */
	public List<Major> get_majorLikelist(String content) {
		// TODO Auto-generated method stub
		return majorMapper.get_majorLikelist(content);
	}
	/**
	 * 添加专业信息
	 */
	public void addMajor(String major, String remark) {
		
		majorMapper.add_major(major,remark);
	}
	/**
	 *  更新专业信息
	 */
	public void update_Major(Integer id, String major, String remark) {
		
		majorMapper.update_Major(id,major,remark);
	}

}
