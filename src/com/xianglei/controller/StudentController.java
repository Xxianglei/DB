package com.xianglei.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Student;
import com.xianglei.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService stuservice;

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
	public String Get_stulist(Model model) {
		// 默认加载
		List<Student> list = stuservice.get_Stulist();
        model.addAttribute("list", list);
		return "/stu/list";

	}
}
