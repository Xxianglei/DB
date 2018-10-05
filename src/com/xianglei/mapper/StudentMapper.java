
package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.Student;
import com.xianglei.pojo.StudentList;

public interface StudentMapper {

	List<Student> get_Stulist(String content);

	List<StudentList> findAllPage(int before, int after);

	int count();

	void add_Stu(int salary, String name, String address, String phone, String qq_num, String email, String sex,
			String birthday, String race, String speciality, String hobby, String remark, String create_date,
			String resume, String student_union, String cadre, String graduate_student, String space, String nick_name,
			String stu_num, String level,String job_id,String major_id);

	void edit_stu(int salary, String name, String address, String phone, String qq_num, String email, String sex,
			String birthday, String race, String speciality, String hobby, String remark, String create_date,
			String resume, String student_union, String cadre, String graduate_student, String space, String nick_name,
			String stu_num, String level, String job_id, String major_id,int id);

	void del_stu(int del_id);

}
