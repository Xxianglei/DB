package com.xianglei.controller;

import java.awt.Dialog.ModalExclusionType;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Notice;
import com.xianglei.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeservice;
	int id;
	boolean tag = false;

	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/notice/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("notice/list");
		return mv;
	}

	@RequestMapping("/notice/list")
	public String get_Noticelist(Model model, HttpServletRequest request) {

		if (request.getParameter("content") == null) {
			// 默认加载
			List<Notice> list = noticeservice.get_Noticelist();
			model.addAttribute("list", list);

		} else {
			String content = request.getParameter("content");
			// 模糊查找
			List<Notice> likelist = noticeservice.get_NoticeLikelist(content);
			model.addAttribute("list", likelist);
		}

		return "/notice/list";
	}

	@RequestMapping("/notice/add")
	public String add_Notice(Model model, HttpServletRequest request) {
		int user = 1;
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String create_date = request.getParameter("create_date");

		if (tag) {
			noticeservice.update_Notice(title, content, create_date, id);
             tag=false;
		} else {
			noticeservice.add_Notice(title, content, create_date, user);
		}

		return "/notice/add";
	}

	@RequestMapping(value = "/notice/update", method = RequestMethod.GET)
	public ModelAndView update_Notice(ModelAndView mv, Integer id) {

		this.id = id;
		tag = true;
		if (id != null)
			mv.setViewName("/notice/add");
		return mv;
	}
	@RequestMapping("/notice/delete")
	public String del_Notice(Integer id) {
		noticeservice.del_Notice(id);
		return "redirect:/notice/list";
		
	}

}
