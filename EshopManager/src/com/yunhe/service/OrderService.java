package com.yunhe.service;

public interface OrderService {
	
	/**
	 * ��ѯ�ܵ�Ӫҵ��
	 * @return
	 */
	double selectSales();
	
	/**
	 * 1�����Ҵ���������
	 * @return
	 */
	int selectCountStatus_send();

	
	/**
	 *,2�����Ҵ������
	 * @return
	 */
	int selectCountStatus_pay();
	/**
	 *,3����������ɶ���
	 * @return
	 */
	int selectCountStatus();
	/**
	 *,4��������ȡ������
	 * @return
	 */
	int selectCountStatus_cancle();

}
