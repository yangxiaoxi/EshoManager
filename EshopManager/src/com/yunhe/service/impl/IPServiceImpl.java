package com.yunhe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yunhe.mapper.IPMapper;
import com.yunhe.pojo.IP;
import com.yunhe.service.IPService;
import com.yunhe.util.SessionFactorySingleTon;

public class IPServiceImpl  implements IPService{
	@Autowired
private IPMapper ipMapper;

	@Override
	public List<IP> selectTopList() {
		 
		return ipMapper.selectTopList();
	}
	@Override
	public int selectCountTodayIpNum() {
		return ipMapper.selectCountTodayIpNum();
	}

}
