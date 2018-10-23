package com.xianglei.pojo;

import java.io.Serializable;
/**
 * 
		<result property="id " column="id" />
		<result property="title " column="title" />
		<result property="time " column="time" />
		<result property="imgCover " column="imgCover" />
		<result property="brief " column="brief" />
		<result property="content " column="content" />
		<result property="author " column="author" />
		<result property="type " column="type" />
		<result property="readNum " column="readNum" />
		<result property="commentNum " column="commentNum" />
		<result property="likeNum " column="likeNum" />
 *
 */
public class DBNews  implements Serializable{
	private long  id;
	private String title;
	private String time;
	private String imgCover;
	private String brief;
	private String content;
	private String author;
	private int type ;  
	private int readNum ;  
	private int commentNum ;  
	private int likeNum ;  
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getImgCover() {
		return imgCover;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public void setImgCover(String imgCover) {
		this.imgCover = imgCover;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	public int getReadNum() {
		return readNum;
	}
	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}


	
}
