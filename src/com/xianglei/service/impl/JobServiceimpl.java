package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.JobMapper;
import com.xianglei.pojo.Job;
import com.xianglei.service.JobService;

@Service
public class JobServiceimpl implements JobService {
	@Autowired
	JobMapper jobMapper;

	public List<Job> get_Joblist() {
		
		return jobMapper.get_Joblist();
	}

	public List<Job> get_majorLikelist(String content) {
		// TODO Auto-generated method stub
		return jobMapper.get_majorLikelist(content);
	}

	public void insert_JobInfo(String name, String remark) {
		jobMapper.insert_JobInfo(name,remark);
	}



	public void delete_JobInfo(Integer id) {
		jobMapper.delete_JobInfo(id);
		
	}

	public void update_JobInfo(Integer id, String name, String remark) {
		// TODO Auto-generated method stub
		jobMapper.update_JobInfo(id,name,remark);
	}

}
