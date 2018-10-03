package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.User;

public interface UserMapper {

    // 获取超级用户列表
	/*List<User> get_List();
	//插入超级用户
	void insert_Info(User employee);
	//删除超级用户
	void delete_Info(Integer id);*/
	// 超级用户登录
	User get_login(String loginname,String password);

	// 默认查询
	List<User> get_UserList();
	// 模糊查询
	List<User> get_UserLikeList(String content);

	void addUser(String loginname,String username,String password);

}
