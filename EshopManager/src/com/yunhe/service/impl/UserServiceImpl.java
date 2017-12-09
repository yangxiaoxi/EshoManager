package com.yunhe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.yunhe.mapper.UserMapper;
import com.yunhe.pojo.User;
import com.yunhe.service.UserService;
import com.yunhe.util.SessionFactorySingleTon;

public class UserServiceImpl  implements UserService{
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int selectAllUserCount() {
		return userMapper.selectAllUserCount();
	}
	@Override
	public int selectOnlieUserCount() {
		return userMapper.selectOnlieUserCount();
	}

	@Override
	public List<User> selecAlltUserInfo() {
		return userMapper.selecAlltUserInfo();
	}

	@Override
	public int selectCountTodayRegist() {
		return userMapper.selectCountTodayRegist();
	}

}
