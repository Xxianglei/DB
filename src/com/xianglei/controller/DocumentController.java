package com.xianglei.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.xianglei.pojo.Document;
import com.xianglei.service.DocumentService;
import com.xianglei.utils.GetDate;

import net.sf.json.JSONObject;

@Controller
public class DocumentController {
	@Autowired
	DocumentService Dservice;

	// 如果在目录下输入为空，则跳转到指定链接
	@RequestMapping(value = "/document/")
	public ModelAndView index2(ModelAndView mv) {
		mv.setViewName("document/list");
		return mv;
	}

	/* /document/add */
	@RequestMapping("/document/add")
	public String add_Document() {

		return "/document/add";
	}

	@RequestMapping("/document/upload")
	@ResponseBody
	public JSONObject upload_Document(Model model, MultipartFile file) {
		// 图片新名字
		String name = UUID.randomUUID().toString();
		// 图片原名字
		String oldName = file.getOriginalFilename();
		GetDate time = new GetDate();
		String now_time = time.backDate();
		int size = (int) file.getSize();
		System.out.println("文件名字:" + file.getOriginalFilename());
		System.out.println("文件大小:" + file.getSize());
		System.out.println("时间" + now_time);
		JSONObject resObj = new JSONObject();
		try {
			// 存到本地磁盘
			File pic = new File("F:\\WebWork\\" + file.getOriginalFilename());
			// 保存图片到本地磁盘
			file.transferTo(pic);
			Dservice.upload(file.getOriginalFilename(), size, now_time, "管理员");
			resObj.put("msg", "ok");
			resObj.put("code", "0");
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			resObj.put("msg", "error");

			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(resObj.toString());
		return resObj;
	}
	
	@RequestMapping("/document/list")
	public String get_DocumentList(Model model,HttpServletRequest request) {
          // 默认加载
		List<Document> doclist=Dservice.get_DocumentList();
		model.addAttribute("list",doclist);
		// 模糊查找
		if(request.getParameter("content")!=null) {
			String content=request.getParameter("content");
			List<Document> doclikelist=Dservice.get_DocumentLikeList(content);
			model.addAttribute("list",doclikelist);
		}
		return "/document/list";
	}

	@RequestMapping("/document/delete")
	public String del_Document(Model model,HttpServletRequest request) {
        int id=Integer.valueOf(request.getParameter("id"));
        Dservice.del_Document(id);
		return "redirect:/document/list";
	}
	/**
	 * 下载文件
	 * @param model
	 * @param request
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/document/download")
	public void down_Document(Model model,HttpServletRequest request,HttpServletResponse response) throws IOException {
        String name=request.getParameter("filename");
        File f = new File("F:\\WebWork\\"+name);  
        if(f.exists()){  
            FileInputStream  fis = new FileInputStream(f);  
            String filename=URLEncoder.encode(f.getName(),"utf-8");   //解决中文文件名下载后乱码的问题  
            byte[] b = new byte[fis.available()];  
            fis.read(b);  
            response.setCharacterEncoding("utf-8");  
            response.setHeader("Content-Disposition","attachment; filename="+filename+"");  
            //获取响应报文输出流对象  
            ServletOutputStream  out =response.getOutputStream();  
            //输出  
            out.write(b);  
            out.flush();  
            out.close();  
        }     
		
	}
}

