package com.xianglei.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Job;
import com.xianglei.pojo.Major;
import com.xianglei.service.JobService;

@Controller
public class JobController {
	@Autowired
	JobService jobService;
	Integer id=0;
	boolean tag=false;
	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/job/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("job/list");
		return mv;
	}

	/**
	 * 获取列表
	 * 
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/job/list")
	public String get_Joblist(Model model, HttpServletRequest httpServletRequest,
			@Param(value = "content") String content) {
		content = httpServletRequest.getParameter("content");
		// 默认加载
		List<Job> list = jobService.get_Joblist();
		if (content != null) {
			System.out.println("查询内容:" + content);
			list = jobService.get_majorLikelist(content);
		}
		model.addAttribute("list", list);
		return "/job/list";
	}

	/// job/add
	/**
	 * 添加方向 更新方向
	 */
	@RequestMapping(value = "/job/add")
	public ModelAndView add(ModelAndView mv,  HttpServletRequest request) {
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		this.id=id;
		if (id!=0) {
			System.out.println("id:"+id);
			if(name != null && remark != null)
			jobService.update_JobInfo(id,name,remark);
			id=0;
		} 
		else {
			if (name != null && remark != null) {
				jobService.insert_JobInfo(name, remark);
			} else {
				mv.setViewName("/job/add");
			}
		}
		return mv;
	}	
	
	@RequestMapping(value = "/job/add2")
	public ModelAndView update_job(ModelAndView mv, HttpServletRequest request) {
        id=Integer.valueOf(request.getParameter("id"));
		this.id = id;
		tag = true;
		if (id != null)
		mv.setViewName("/job/add");
		return mv;
	}

	/**
	 *  删除方向
	 * @param id
	 */
	@RequestMapping(value = "/job/delete")
	public void delete(Integer id) {
		System.out.println(id);
		if (id != null) {
			jobService.delete_JobInfo(id);
		}
	}
}
