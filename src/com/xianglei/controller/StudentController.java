package com.xianglei.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Student;
import com.xianglei.pojo.StudentList;
import com.xianglei.service.StudentService;

import net.sf.json.JSONArray;

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
	public String Get_stulist() {
		
		return "/stu/list";
	}

	/**
	 * 获取数据传给Layui框架
	 * 模糊查找
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/stu/findall", produces = "text/html;charset=utf-8")
	public @ResponseBody String findall(Model model, HttpServletRequest request) {
	
		  Integer page = Integer.valueOf(request.getParameter("page")); Integer limit =
		  Integer.valueOf(request.getParameter("limit"));
		  System.out.println("page+limit:" + page + limit);
		
	   
		/*if(request.getParameter("content")==null) {*/
		// UI接口
		int before = limit * (page - 1) + 1;
		int after = limit * page;
		// 带参数从数据库里查询出来放到eilist的集合里
		List<StudentList> eilist = stuservice.findAllPage(before, after);
		System.out.println(eilist.toString());
		int count = stuservice.count();
		// 用json来传值
		JSONArray json = JSONArray.fromObject(eilist);
		String js = json.toString();
		// *****转为layui需要的json格式，必须要这一步

		String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
		System.out.println(jso);
		return jso;
		/*}
		else{
			// 模糊查找
			String content = request.getParameter("content");
			List<Student> list = stuservice.get_Stulist(content);
			JSONArray json = JSONArray.fromObject(list);
			String js = json.toString();
			String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + 10 + ",\"data\":" + js + "}";
			return jso;
			
		}*/

	}
	@RequestMapping(value="/stu/add")
	public String add_Stu() {
		return "/stu/add";
		
	}

}
