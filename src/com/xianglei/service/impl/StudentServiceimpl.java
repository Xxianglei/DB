package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.StudentMapper;
import com.xianglei.pojo.Student;
import com.xianglei.pojo.StudentList;
import com.xianglei.service.StudentService;
@Service
public class StudentServiceimpl implements StudentService {

	@Autowired 
	StudentMapper studentMapper;
	public List<Student> get_Stulist(String content) {
		// TODO Auto-generated method stub
		return studentMapper.get_Stulist(content);
	}
	/**
	 * 查询分页数据
	 */
	public List<StudentList> findAllPage(int before, int after) {
		// TODO Auto-generated method stub
		return studentMapper.findAllPage(before,after);
	}
	/**
	 * 查询条数
	 */
	public int count() {
		// TODO Auto-generated method stub
		return studentMapper.count();
	}

}
