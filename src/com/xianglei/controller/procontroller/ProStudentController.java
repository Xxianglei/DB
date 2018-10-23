package com.xianglei.controller.procontroller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.json.HTTP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xianglei.common.Constants;
import com.xianglei.pojo.Job;
import com.xianglei.pojo.Notice;
import com.xianglei.pojo.Space;
import com.xianglei.pojo.Student;
import com.xianglei.pojo.User;
import com.xianglei.service.ProStudentService;
import com.xianglei.service.SpaceService;
import com.xianglei.utils.GetDate;
import com.xianglei.utils.HttpUtils;

import net.sf.json.JSONObject;

@Controller
public class ProStudentController {

	@Autowired
	ProStudentService service;
	@Autowired
	SpaceService service2;
	/**
	 * 获取表单存入数据库
	 */
	private String tag = null;
	private int id;
	private int salary;
	private String major_id;
	private String job_id;
	private String name;
	private String address;
	private String phone;
	private String qq_num;

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

	private String stu_num;
	private String photo;

	@RequestMapping("/pro/join_us")
	public String add_Sign(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

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
		if (name != null) {
			service.add_Sign(salary, name, address, phone, qq_num, sex, birthday, race, hobby, create_date, resume,
					student_union, cadre, graduate_student, space, stu_num, job_id, major_id);
			System.out.println(salary + name + address + phone + qq_num + sex + birthday + race + hobby + create_date
					+ resume + student_union + cadre + graduate_student + space + stu_num + job_id + major_id);
			// 添加成功
			System.out.println("添加成功");
			model.addAttribute("msg", "报名成功,请勿重复提交!");
		}

		hobbys = null;
		return "join_in";

	}

	@RequestMapping("/pro/upload")
	@ResponseBody
	public JSONObject upload_Document(Model model, MultipartFile file, HttpServletRequest request) {
		// 图片新名字
		String name = UUID.randomUUID().toString();
		// 图片原名字
		String oldName = file.getOriginalFilename();

		System.out.println("文件名字:" + file.getOriginalFilename());

		JSONObject resObj = new JSONObject();
		try {
			// 存到本地磁盘
			File pic = new File("F:\\WebWork\\photo\\" + file.getOriginalFilename());
			// 保存图片到本地磁盘
			file.transferTo(pic);
			/* if(request.getParameter("tag")==null) */
			service.upload_Photo(file.getOriginalFilename());
			/*
			 * else { HttpSession session = request.getSession(); User user= (User)
			 * session.getAttribute(Constants.USER_SESSION);
			 * 
			 * service.upload_Photo2(file.getOriginalFilename(),user.getLoginname()); }
			 */
			resObj.put("msg", "ok");
			resObj.put("code", "0");
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			resObj.put("msg", "error");
			e.printStackTrace();
		}
		System.out.println(resObj.toString());
		return resObj;
	}

	@RequestMapping("/pro/report")
	public String report(Model model) {

		List<Notice> list = service.find_Report();

		model.addAttribute("list", list);

		return "report";

	}

	@RequestMapping("/pro/database")
	public String welcomedb(Model model) {

		return "database";
	}

	@RequestMapping("/pro/download")
	public String download(Model model) {

		return "download";

	}

	

	/**
	 * 获取新闻数据
	 * 
	 * @param model
	 * @return
	 */

	@RequestMapping("/pro/mystudio")
	public String myStudio(Model model) {
		Space space = service2.get_Mystudio();
		model.addAttribute("list", space);
		List<Job> job = service2.get_Joblist();
		model.addAttribute("job_list", job);
		return "my/work_space";

	}

	@RequestMapping("/pro/center")
	public String center(Model model, HttpServletRequest request, HttpSession session) {
		/**
		 * 登陆后直接走session中拿值
		 */
		String name = (String) session.getAttribute("name");

		Student get_Center = (Student) session.getAttribute("user");

		model.addAttribute("user", get_Center);

		return "my/my_index";

	}

	@RequestMapping("/pro/join_in")
	public String join_in(Model model) {

		return "join_in";

	}

	@RequestMapping("/pro/log_in")
	public String log_in(Model model) {

		return "log_in";

	}

	/**
	 * 编辑个人简历信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/pro/edit")
	public String My_edit(Model model) {

		return "my/edit_resume";

	}

	@RequestMapping("/pro/edit_num1")
	public String My_Num1(Model model) {

		return "my/edit_person";

	}

	/**
	 * 修改账号信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/pro/edit_num")
	public String My_Num(Model model, HttpServletRequest request) {
		String name = request.getParameter("name");
		String psw = request.getParameter("password");
		String psw2 = request.getParameter("repassword");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		/* System.out.println(psw+psw2); */
		if (psw.equals(psw2)) {
			model.addAttribute("msg", "您输入的密码不一致!");
		} else {
			// 编辑的时候添加昵称
			service.edit_Mynum(user.getLoginname(), name, psw2);
			return "redirect:my/my_index";
		}

		return "my/edit_person";
	}

	@RequestMapping("/pro/Ulog_in")
	public String login(@RequestParam(value = "username", required = false) String loginname,
			@RequestParam(value = "password", required = false) String password, HttpSession session, Model mv) {
		// 调用业务逻辑组件判断用户是否可以登录

		System.out.println("进入登录的Controller" + loginname + password);

		if (service.get_login(loginname, password) != null) {
			// 报错
			User user = service.get_login(loginname, password);
			System.out.println("user对象" + user.toString());
			// 将用户保存到Session当中
			// session 默认时间30分钟

			session.setAttribute(Constants.USER_SESSION, user);
			if (user.getUsername() != null)
				session.setAttribute("name", user.getUsername());
			else
				session.setAttribute("name", loginname);
			Student get_Center = service.get_Center(loginname);
			session.setAttribute("user", get_Center);
			// 客户端跳转到main页面
			return "redirect:database";

		} else {
			// 设置登录失败提示信息
			System.out.println("设置登录失败提示信息");
			mv.addAttribute("msg", "登录名或密码错误!");
			// 服务器内部跳转到登录页面
			return "log_in";
		}

	}

	@RequestMapping("/pro/regUser")
	public String regUser(Model model, HttpServletRequest request, HttpServletResponse response) {

		String loginname = request.getParameter("user");
		String password = request.getParameter("passwd2");
		if (service.get_User(loginname) != null) {
			model.addAttribute("msgr", "您已注册,请登录!");
		} else {
			String create_time = new GetDate().backDate();
			service.regUser(loginname, password, create_time);
			model.addAttribute("msgr", "注册成功,请登录!");
		}
		return "log_in";

	}

	@RequestMapping(value = "/pro/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("name") != null) {
			session.invalidate();
			System.out.println("session已经关闭" + session.getId());
		}
		return "redirect:database";

	}

}
