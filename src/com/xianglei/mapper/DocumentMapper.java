package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.Document;

public interface DocumentMapper {

	void upload(String originalFilename, int size, String now_time, String string);

	List<Document> get_DocumentList();

	void del_Document(int id);

	List<Document> get_DocumentLikeList(String content);

}
