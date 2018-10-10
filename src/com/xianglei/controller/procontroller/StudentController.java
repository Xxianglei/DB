package com.xianglei.controller.procontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianglei.service.ProStudentService;

@Controller
public class StudentController {

	@Autowired
	ProStudentService service;
	 /**
	  *  获取表单存入数据库
	  */
	private String tag=null;
	private int id;
	private int salary;
	private String major_id;
	private String job_id;
	private String name;
	private String address;
	private String phone;
	private String qq_num;
	private String email;
	private String sex;
	private String birthday;
	private String race;
	private String speciality;
	private String hobby;
	private String create_date;
	private String resume;
	private String student_union;
	private String cadre;
	private String graduate_student;
	private String space;
	private String nick_name;
	private String stu_num;
	private String photo;
	private String level;
	private String remark;
	@RequestMapping("/student/join_in")
	public String add_Sign(Model model,HttpServletRequest request) {
		
		salary = Integer.valueOf(request.getParameter("salary"));
		name = request.getParameter("name");
		address = request.getParameter("address");
		phone = request.getParameter("phone");
		qq_num = request.getParameter("QQ");
		sex = request.getParameter("sex");
		birthday = request.getParameter("birthday");
		race = request.getParameter("race");
		speciality = request.getParameter("speciality");
		create_date = request.getParameter("create_date");
		resume = request.getParameter("resume");
		student_union = request.getParameter("student_union");
		cadre = request.getParameter("cadre");
		graduate_student = request.getParameter("graduate_student");
		space = request.getParameter("space");
		stu_num = request.getParameter("stu_num");
		job_id = request.getParameter("job");
		major_id = request.getParameter("major");
		String hobbys[] = request.getParameterValues("hobby");
		for (int i = 0; i < hobbys.length; i++) {
			hobby = hobbys[i] + hobby + " ";
		}
		service.

		return "join_in";
		
	}
	
	
}
