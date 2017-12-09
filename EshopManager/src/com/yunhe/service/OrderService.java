package com.yunhe.service;

public interface OrderService {
	
	/**
	 * 查询总的营业额
	 * @return
	 */
	double selectSales();
	
	/**
	 * 1，查找待发货订单
	 * @return
	 */
	int selectCountStatus_send();

	
	/**
	 *,2，查找待付款订单
	 * @return
	 */
	int selectCountStatus_pay();
	/**
	 *,3，查找已完成订单
	 * @return
	 */
	int selectCountStatus();
	/**
	 *,4，查找已取消订单
	 * @return
	 */
	int selectCountStatus_cancle();

}
