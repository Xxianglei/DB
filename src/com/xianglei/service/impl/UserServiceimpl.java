package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.UserMapper;
import com.xianglei.pojo.User;
import com.xianglei.service.UserService;


@Service
public class UserServiceimpl  implements UserService{

	@Autowired
	UserMapper userMapper;
	/**
	  * 管理员登录
	 */
	public User get_login(String loginname, String password) 
	{
		System.out.println("Service的 UserMapper"+userMapper);
		User user = userMapper.get_login(loginname, password);
		return user;
	}
	/**
	  * 默认 管理员列表
	 */
	public List<User> get_UserList() {
		
		List<User> user_list=userMapper.get_UserList();
		return user_list;
	}
	/**
	  * 查询管理员
	 */
	public List<User> get_UserLikeList(String content) {
		
		List<User> user_list=userMapper.get_UserLikeList(content);
		return user_list;
	}
	/**
	 *  添加管理员
	 */
	public void addUser(String loginname,String username,String password) {
		
		userMapper.addUser(loginname,username,password);
	
	}

}
