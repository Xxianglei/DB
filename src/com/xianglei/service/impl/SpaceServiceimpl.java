package com.xianglei.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xianglei.mapper.SpaceMapper;
import com.xianglei.service.SpaceService;

@Service
public class SpaceServiceimpl implements SpaceService {
	@Autowired
	SpaceMapper spaceMapper;
}
