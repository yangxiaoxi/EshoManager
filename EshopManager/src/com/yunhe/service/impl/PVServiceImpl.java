package com.yunhe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.yunhe.mapper.PVMapper;
import com.yunhe.service.PVService;
import com.yunhe.util.SessionFactorySingleTon;

public class PVServiceImpl implements PVService{
 
  @Autowired
  private PVMapper pvMapper ;
   
  
	@Override
	public int selectAllCount() {
		
		return pvMapper.selectAllCount();
	}

}
