package com.xianglei.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.UserMapper;
import com.xianglei.pojo.User;
import com.xianglei.service.UserService;


@Service
public class UserServiceimpl  implements UserService{

	@Autowired
	UserMapper userMapper;
	public User get_login(String loginname, String password) 
	{
		System.out.println("Service的 UserMapper"+userMapper);
		User user = userMapper.get_login(loginname, password);
		return user;
	}

}
