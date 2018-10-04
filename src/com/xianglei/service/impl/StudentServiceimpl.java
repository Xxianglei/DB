package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.StudentMapper;
import com.xianglei.pojo.Student;
import com.xianglei.service.StudentService;
@Service
public class StudentServiceimpl implements StudentService {

	@Autowired 
	StudentMapper studentMapper;
	public List<Student> get_Stulist() {
		// TODO Auto-generated method stub
		return studentMapper.get_Stulist();
	}

}
