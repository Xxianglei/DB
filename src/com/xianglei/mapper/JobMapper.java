package com.xianglei.mapper;

import java.util.List;

import com.xianglei.pojo.Job;

public interface JobMapper {

	List<Job> get_Joblist();

	List<Job> get_majorLikelist(String content);

	void insert_JobInfo(String name, String remark);

	void delete_JobInfo(Integer id);

	void update_JobInfo(Integer id, String name, String remark);

	

}
