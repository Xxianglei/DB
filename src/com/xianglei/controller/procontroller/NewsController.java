package com.xianglei.controller.procontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xianglei.pojo.DBNews;
import com.xianglei.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	NewsService service;
	
	/**
	 * 新闻模块测试
	 * @param model
	 * @return
	 */
	@RequestMapping("/pro/get_news")
	public String get_News(Model model) {
		
		List<DBNews> list =service.get_News();
		model.addAttribute("newlist", list);
		return "my/news";

	}

}
