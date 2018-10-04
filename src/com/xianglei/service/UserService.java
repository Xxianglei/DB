package com.xianglei.service;

import java.util.List;

import com.xianglei.pojo.User;

public interface UserService {
	// 超级管理登录
	User get_login(String loginname, String password);

	List<User> get_UserList();
	List<User> get_UserLikeList(String content);

	void addUser(String loginname,String username,String password);

	void delete_UserInfo(Integer id);

	void update_user(Integer id, String loginname, String username, String password);


}
