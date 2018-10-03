package com.xianglei.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.common.Constants;
import com.xianglei.pojo.User;
import com.xianglei.service.UserService;

@Controller
@RequestMapping("")
public class UserController {

	// 注入(这种没问题)
	@Autowired
	private UserService Userservice;

	/**
	 * ssm搭建测试
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("test")
	public String test(Model model) {
		model.addAttribute("msg", "Hello SSM");
		return "test";
	}

	/**
	 * 超级用户登录
	 * 
	 * @param loginname
	 * @param password
	 * @param session
	 * @param mv
	 * @return
	 */
	@RequestMapping("login")
	public String login(@RequestParam(value = "loginname", required = false) String loginname,
			@RequestParam(value = "password", required = false) String password, HttpSession session, Model mv) {
		// 调用业务逻辑组件判断用户是否可以登录

		System.out.println("进入登录的Controller" + loginname + password);
		System.out.println("打印注入的Service" + Userservice);
		// 报错
		User user = Userservice.get_login(loginname, password);
		System.out.println("user对象" + user.toString());
		if (user != null) {
			// 将用户保存到Session当中
			session.setAttribute(Constants.USER_SESSION, user);
			// 客户端跳转到main页面
			return "index";

		} else {
			// 设置登录失败提示信息
			System.out.println("设置登录失败提示信息");
			mv.addAttribute("message", "登录名或密码错误!请重新输入");
			// 服务器内部跳转到登录页面
			return "loginForm";
		}

	}

	/**
	 * 显示管理列表
	 * 
	 * @param model
	 * @param content
	 * @return
	 */
	@RequestMapping(value = "/user/list", method = RequestMethod.GET)
	public String get_UserList(Model model, String content) {
		List<User> user_list = Userservice.get_UserList();
		if (content != null) {
			user_list = Userservice.get_UserLikeList(content);
		}
		model.addAttribute("list", user_list);
		System.out.println(user_list.toString());
		return "user/list";
	}

	/**
	 * 添加管理员
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/user/add",method = RequestMethod.GET)
	public String add(Model model,HttpServletRequest request) {
		String loginname=(String) request.getParameter("loginname");
		String username=(String) request.getParameter("username");
		String password=(String) request.getParameter("password");
		
		if (loginname != null && loginname != null && loginname != null) {
			Userservice.addUser(loginname, username, password);
			System.out.println("添加成功");	
			System.out.println("添加人员" + loginname + username + password);
		
			return "/user/add";
		
	
	}
	
}
