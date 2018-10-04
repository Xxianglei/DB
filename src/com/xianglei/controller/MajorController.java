package com.xianglei.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Major;
import com.xianglei.pojo.User;
import com.xianglei.service.MajorService;

@Controller
public class MajorController {

	@Autowired
	MajorService majorService;
	Integer id;
	boolean tag = false;

	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/dept/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("dept/list");
		return mv;
	}

	// 如果在目录下输入任何不存在的参数，则跳转到list
	@RequestMapping(value = "/dept/{formName}")
	public String index2(@PathVariable String formName) {
//			return formName;
		String blank = "/dept/list";
		return blank;
	}

	/**
	 * 获取专业列表
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/major/list", method = RequestMethod.GET)
	public String get_majorlist(Model model, HttpServletRequest httpServletRequest,
			@Param(value = "content") String content) {
		content = httpServletRequest.getParameter("content");
		// 默认加载
		List<Major> get_majorlist = majorService.get_majorlist();
		// 模糊查找
		if (content != null) {
			System.out.println("查询内容:" + content);
			get_majorlist = majorService.get_majorLikelist(content);
		}
		model.addAttribute("list", get_majorlist);
		return "/major/list";
	}

	/**
	 * 添加专业
	 */
	@RequestMapping(value = "/major/add")
	public String add_major(Model model, HttpServletRequest request) {
		String major = (String) request.getParameter("major");
		String remark = (String) request.getParameter("remark");
        // 添加
		if (major != null && remark != null && tag == false) {
			majorService.addMajor(major, remark);
			
		}
		/**
		 * 更新专业信息
		 */
		 if (tag&&major!=null&&remark!=null) {
			System.out.println("修改专业" + major + remark+id);
			majorService.update_Major(this.id, major, remark);
			// 重定向到list
			tag=false;
			return "return:/major/list";
		} 
        	return "/major/add";
	}

	@RequestMapping(value = "/major/add2")
	public ModelAndView update_Major(ModelAndView mv, HttpServletRequest request) {
        id=Integer.valueOf(request.getParameter("id"));
		this.id = id;
		tag = true;
		if (id != null)
			mv.setViewName("/major/add");
		return mv;
	}

}
