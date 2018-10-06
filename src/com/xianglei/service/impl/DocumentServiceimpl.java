package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.DocumentMapper;
import com.xianglei.pojo.Document;
import com.xianglei.service.DocumentService;
@Service
public class DocumentServiceimpl implements DocumentService {

	@Autowired 
	DocumentMapper dmMapper;
	public void upload(String originalFilename, int size, String now_time, String string) {
		
		dmMapper.upload(originalFilename,size,now_time,string);
	}
	public List<Document> get_DocumentList() {
		return dmMapper.get_DocumentList();
	}
	public void del_Document(int id) {
		dmMapper.del_Document(id);
		
	}
	public List<Document> get_DocumentLikeList(String content) {
		
		return dmMapper.get_DocumentLikeList(content);
	}

}
