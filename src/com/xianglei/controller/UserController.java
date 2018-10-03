package com.xianglei.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.common.Constants;
import com.xianglei.pojo.User;
import com.xianglei.service.UserService;

@Controller
@RequestMapping("")
public class UserController {
	 
	//注入(这种没问题)
	@Autowired
	private UserService Userservice;
	
	
	/**
	 * ssm搭建测试
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
	 * @param loginname
	 * @param password
	 * @param session
	 * @param mv
	 * @return
	 */
	@RequestMapping("login")
	 public String login(@RequestParam(value="loginname",required=false) String loginname,
			 @RequestParam(value="password",required=false) String password,
			 HttpSession session,
			 Model mv)
	{
		// 调用业务逻辑组件判断用户是否可以登录
		
		System.out.println("进入登录的Controller"+loginname+password);
		System.out.println("打印注入的Service"+Userservice);
		// 报错
		User user =  Userservice.get_login(loginname, password);
	    System.out.println("user对象"+user.toString());
		if(user != null){
			// 将用户保存到Session当中
			session.setAttribute(Constants.USER_SESSION, user);
			// 客户端跳转到main页面
			return "index";
			
		}else{
			// 设置登录失败提示信息
			System.out.println("设置登录失败提示信息");
			mv.addAttribute("message", "登录名或密码错误!请重新输入");
			// 服务器内部跳转到登录页面
			return "loginForm";
		}
		
	}
	


}
