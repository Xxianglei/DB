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
	int tag = 0;
	String type = "likeNum";
	String type2 = "";
	List<DBNews> GList ;
	/**
	 * 新闻模块测试
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/pro/get_news")
	public String get_News(Model model, HttpServletRequest request) {
		
		if (request.getParameter("tag") != null)
			tag = Integer.parseInt(request.getParameter("tag"));
		System.out.println(tag);
		if (tag == 0) {
			type = "likeNum"; // 推荐
		}
		if (tag == 1) {
			type = "1"; // 故事
		
		}
		if (tag == 2) {
			type = "3"; // 手绘
		
		}
		if (tag == 3) {
			type = "4";// 旅行
		
		}
		if (tag == 4) {
			type = "5"; // 电影
		
		}
		if (tag == 5) {
			type = "6"; // IT
			
		}
		if (tag == 6) {
			type = "7"; // 读书
		
		}
		if (tag == 7) {
			type = "13"; // 程序员
		
		}
		if (tag == 8) {
			type = "14"; // 职场
		
		}
		if (tag == 9) {
			type = "15"; // 创业
			
		}
		if (tag == 10) {
			type = "8"; // 科普
		
		}
		if (tag == 0) {
			List<DBNews> list = service.get_News(type);
			model.addAttribute("newlist", list);
		} else {

			List<DBNews> list = service.get_News3(type);
			model.addAttribute("newlist", list);
		}
		List<DBNews> list = service.get_Hot();
		List<DBNews> subList = list.subList(0, 10);
		model.addAttribute("hotlist", subList);
		// 存入request
		GList=subList;
		return "news/news";

	}

	@RequestMapping("/pro/get_News2")
	@ResponseBody
	public String get_News2(HttpServletRequest request) {

		int page = Integer.parseInt(request.getParameter("page"));
		List<DBNews> list;
		int limit = 10;
		int before = limit * (page - 1);
		int after = (limit - 1) * page;
		String bb;
		if(type =="likeNum") {
			list = service.get_News4(before, after);}
		else {
			list = service.get_News2(before, after,type);}
		for (DBNews dbNews : list) {
			bb = dbNews.getBrief();
			String substring;
			if(bb.length()>=100) {
			 substring= bb.substring(0, 100);
			 dbNews.setBrief(substring);
			}
		
		}
		String str = JSON.toJSONString(list);
		return str;

	}
	
	@RequestMapping("/pro/get_newscontent")
	public String Get_content(Model model,HttpServletRequest request) {
		String id = null;
		if(request.getParameter("id")!=null) {
		// 文章内容
	    id =(request.getParameter("id"));
		DBNews news=service.get_Conetent(id);
		model.addAttribute("news", news);
		// 热门推荐

		model.addAttribute("hotlist", GList);
		// 相关推荐
		if(type =="likeNum") {
		type="1";	
		}
		List<DBNews> about=service.about_Conetent(type);
		model.addAttribute("about", about.subList(0, 10));
		}
		System.out.println(id);
		
		return "news/newscontent";
	}
}
