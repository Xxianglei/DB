package com.xianglei.service;

import java.util.List;

import com.xianglei.pojo.Student;
import com.xianglei.pojo.StudentList;

public interface StudentService {

	List<Student> get_Stulist(String content);

	List<StudentList> findAllPage(int before, int after);

	int count();

}
