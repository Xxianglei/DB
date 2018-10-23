package com.xianglei.controller.procontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xianglei.pojo.DBNews;
import com.xianglei.service.NewsService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
	public String get_News(Model model,HttpServletRequest request) {
		
		List<DBNews> list =service.get_News();
		model.addAttribute("newlist", list);
		return "news/news";

	}
	@RequestMapping("/pro/get_News2")
	@ResponseBody
	public String get_News2(HttpServletRequest request) {
		
		int page=Integer.parseInt(request.getParameter("page"));
		int limit=10;
		int before = limit * (page - 1) + 1;
		int after = limit * page;
		List<DBNews> list =service.get_News2(before,after);		
		String str = JSON.toJSONString(list);
		System.out.println(str);
		return str;

	}
}
