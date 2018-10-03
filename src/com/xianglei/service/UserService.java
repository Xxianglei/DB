package com.xianglei.service;

import com.xianglei.pojo.User;

public interface UserService {
	// 超级管理登录
	User get_login(String loginname, String password);
}
