package com.xianglei.service;

import java.util.List;

import com.xianglei.pojo.Notice;
import com.xianglei.pojo.User;

public interface ProStudentService {

	void add_Sign(int salary, String name, String address, String phone, String qq_num, String sex, String birthday,
			String race, String hobby, String create_date, String resume, String student_union,
			String cadre, String graduate_student, String space, String stu_num, String job_id, String major_id);

	void upload_Photo(String originalFilename);

	List<Notice> find_Report();

	User get_login(String loginname, String password);

	void regUser(String loginname, String password, String create_time);

	User get_User(String loginname);

}
