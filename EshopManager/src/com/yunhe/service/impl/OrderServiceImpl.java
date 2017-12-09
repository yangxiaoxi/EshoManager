package com.yunhe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.yunhe.mapper.OrderMapper;
import com.yunhe.service.OrderService;
import com.yunhe.util.SessionFactorySingleTon;

public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderMapper orderMapper ;

	@Override
	public double selectSales() {
		 
		return orderMapper.selectSales();
	}

	@Override
	public int selectCountStatus_send() {
	 
		return orderMapper.selectCountStatus_send();
	}

	@Override
	public int selectCountStatus_pay() {
		return orderMapper.selectCountStatus_pay();
	}

	@Override
	public int selectCountStatus() {
		return orderMapper.selectCountStatus();
	}

	@Override
	public int selectCountStatus_cancle() {
		return orderMapper.selectCountStatus_cancle();
	}

}
