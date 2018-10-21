package com.xianglei.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.SpaceMapper;
import com.xianglei.pojo.Job;
import com.xianglei.pojo.Space;
import com.xianglei.service.SpaceService;

@Service
public class SpaceServiceimpl implements SpaceService {
	@Autowired
	SpaceMapper spaceMapper;

	public Space get_Mystudio() {
		// TODO Auto-generated method stub
		return spaceMapper.get_Mystudio();
	}

	public List<Job> get_Joblist() {
		
		return spaceMapper.get_Joblist() ;
	}
	
	
}
