package com.xianglei.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Student;
import com.xianglei.pojo.StudentList;
import com.xianglei.service.StudentService;

import net.sf.json.JSONArray;

@Controller
public class StudentController {

	@Autowired
	StudentService stuservice;
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

	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/stu/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("job/list");
		return mv;
	}

	/**
	 * 获取学生列表
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/stu/list")
	public String Get_stulist() {

		return "/stu/list";
	}

	@RequestMapping(value = "/stu/add")
	public String Add_stu() {

		return "/stu/add";
	}

	/**
	 * 获取数据传给Layui框架 模糊查找
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/stu/findall", produces = "text/html;charset=utf-8")
	public @ResponseBody String findall(Model model, HttpServletRequest request) {

		Integer page = Integer.valueOf(request.getParameter("page"));
		Integer limit = Integer.valueOf(request.getParameter("limit"));
		System.out.println("page+limit:" + page + limit);

		/* if(request.getParameter("content")==null) { */
		// UI接口
		int before = limit * (page - 1) + 1;
		int after = limit * page;
		// 带参数从数据库里查询出来放到eilist的集合里
		List<StudentList> eilist = stuservice.findAllPage(before, after);
		System.out.println(eilist.toString());
		int count = stuservice.count();
		// 用json来传值
		JSONArray json = JSONArray.fromObject(eilist);
		String js = json.toString();
		// *****转为layui需要的json格式，必须要这一步

		String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
		System.out.println(jso);
		return jso;
		/*
		 * } else{ // 模糊查找 String content = request.getParameter("content");
		 * List<Student> list = stuservice.get_Stulist(content); JSONArray json =
		 * JSONArray.fromObject(list); String js = json.toString(); String jso =
		 * "{\"code\":0,\"msg\":\"\",\"count\":" + 10 + ",\"data\":" + js + "}"; return
		 * jso;
		 * 
		 * }
		 */

	}

	@RequestMapping(value = "/stu/add2")
	public String add_Stu(HttpServletRequest request, HttpServletResponse response) {

		salary = Integer.valueOf(request.getParameter("salary"));
		name = request.getParameter("name");
		address = request.getParameter("address");
		phone = request.getParameter("phone");
		qq_num = request.getParameter("QQ");
		email = request.getParameter("email");
		sex = request.getParameter("sex");
		birthday = request.getParameter("birthday");
		race = request.getParameter("race");
		speciality = request.getParameter("speciality");
		hobby = request.getParameter("hobby");
		remark = request.getParameter("remark");
		create_date = request.getParameter("create_date");
		resume = request.getParameter("resume");
		student_union = request.getParameter("student_union");
		cadre = request.getParameter("cadre");
		graduate_student = request.getParameter("graduate_student");
		space = request.getParameter("space");
		nick_name = request.getParameter("nick_name");
		stu_num = request.getParameter("stu_num");
		level = request.getParameter("level");
		job_id = request.getParameter("job");
		major_id = request.getParameter("major");
		String hobbys[] = request.getParameterValues("hobby");
		for (int i = 0; i < hobbys.length; i++) {
			hobby = hobbys[i] + hobby + " ";
		}
		if (tag==null) {
			stuservice.add_Stu(salary, name, address, phone, qq_num, email, sex, birthday, race, speciality, hobby,
					remark, create_date, resume, student_union, cadre, graduate_student, space, nick_name, stu_num,
					level, job_id, major_id);
			System.out.println(salary + name + address + phone + qq_num + email + sex + birthday + race + speciality
					+ hobby + remark + create_date + resume + student_union + cadre + graduate_student + space
					+ nick_name + stu_num + level + job_id + major_id);
			// 添加成功
			System.out.println("添加成功");
			tag=null;
			return "/stu/list";
		} else {
			stuservice.edit_stu(salary, name, address, phone, qq_num, email, sex, birthday, race, speciality, hobby,
					remark, create_date, resume, student_union, cadre, graduate_student, space, nick_name, stu_num,
					level, job_id, major_id, id);
			System.out.println("修改成功");
			return "/stu/list";
		}

	}

	/**
	 * 编辑
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/stu/edit")
	public String check_Stu(HttpServletRequest request) {
		System.out.println("data" + request.getParameter("data"));
		this.tag = request.getParameter("tag");
		this.id = Integer.valueOf(request.getParameter("data"));

		return "/stu/edit";
	}

	/**
	 * 删除
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/stu/del")
	public String del_Stu(HttpServletRequest request) {
		System.out.println("data" + request.getParameter("data"));

		if (request.getParameter("data") != null) {
			int del_id = Integer.valueOf(request.getParameter("data"));
			stuservice.del_stu(del_id);
			System.out.println("删除成功");
			
		}
		return "/stu/list";

	}

}
