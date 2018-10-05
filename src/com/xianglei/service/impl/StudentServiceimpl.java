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
	public void add_Stu(int salary, String name, String address, String phone, String qq_num, String email, String sex,
			String birthday, String race, String speciality, String hobby, String remark, String create_date,
			String resume, String student_union, String cadre, String graduate_student, String space, String nick_name,
			String stu_num, String level,String job_id,String major_id) {
		studentMapper.add_Stu(salary,name,address,phone,qq_num,email,sex,birthday,race,speciality,hobby,remark,create_date,resume,student_union
				,cadre,graduate_student,space,nick_name,stu_num,level,job_id,major_id);
		
	}
	public void edit_stu(int salary, String name, String address, String phone, String qq_num, String email, String sex,
			String birthday, String race, String speciality, String hobby, String remark, String create_date,
			String resume, String student_union, String cadre, String graduate_student, String space, String nick_name,
			String stu_num, String level, String job_id, String major_id,int id) {
		
		studentMapper.edit_stu(salary,name,address,phone,qq_num,email,sex,birthday,race,speciality,hobby,remark,create_date,resume,student_union
				,cadre,graduate_student,space,nick_name,stu_num,level,job_id,major_id,id);
	}
	public void del_stu(int del_id) {
		studentMapper.del_stu(del_id);
		
	}

}
