package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.IP;

public interface IPService {
	/**
	 *查找前五条ip访问的记录
	 * @return
	 */
	List<IP> selectTopList();
	
	/**
	 * 查询今天访问的ip数量份
	 * @return
	 */
	int selectCountTodayIpNum();



}
