package com.webmagic.service.impl;

import com.webmagic.mapper.UserMapper;
import com.webmagic.model.User;
import com.webmagic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User getUser(String id) {
		return userMapper.selectByPrimaryKey(id);
	}
}
