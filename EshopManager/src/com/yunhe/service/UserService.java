package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.User;

public interface UserService {
	/**
	 * 查询所有的用户数
	 * @return
	 */
	int selectAllUserCount();
	
	/**
	 * 查询在线的用户数
	 * @return
	 */
	int selectOnlieUserCount();
	
	/**
	 * 查询所有的用户信息
	 * @return
	 */
	List<User> selecAlltUserInfo();
	
	/**
	 * 查询今天注册的用户数
	 * @return
	 */
	int selectCountTodayRegist();


}
