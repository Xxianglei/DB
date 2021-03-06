package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.ProStudentMapper;
import com.xianglei.pojo.Notice;
import com.xianglei.pojo.Student;
import com.xianglei.pojo.User;
import com.xianglei.service.ProStudentService;

@Service
public class ProStudentServiceimpl implements ProStudentService {
	@Autowired
	ProStudentMapper mapper;

	public void add_Sign(int salary, String name, String address, String phone, String qq_num, String sex,
			String birthday, String race, String hobby, String create_date, String resume, String student_union,
			String cadre, String graduate_student, String space, String stu_num, String job_id, String major_id) {
		// TODO Auto-generated method stub
		mapper.add_Sign(salary, name, address, phone, qq_num, sex, birthday, race, hobby, create_date, resume,
				student_union, cadre, graduate_student, space, stu_num, job_id, major_id);
	}

	public void upload_Photo(String originalFilename) {
		mapper.upload_Photo(originalFilename);

	}

	public List<Notice> find_Report() {
		// TODO Auto-generated method stub
		return mapper.find_Report();
	}

	public User get_login(String loginname, String password) {
		// TODO Auto-generated method stub
		return mapper.get_login(loginname, password);
	}

	public void regUser(String loginname, String password, String create_time) {
		mapper.regUser(loginname, password, create_time);

	}

	public User get_User(String loginname) {
		// TODO Auto-generated method stub
		return mapper.get_User(loginname);
	}

	public Student get_Center(String name) {
		// TODO Auto-generated method stub
		return mapper.get_Center(name);
	}

	public void edit_Mynum(String zhanghao, String name, String psw2) {
		mapper.edit_Mynum(zhanghao, name, psw2);

	}

	public void upload_Photo2(String originalFilename,String loginname) {
		mapper.upload_Photo2(originalFilename,loginname);
	}

}
