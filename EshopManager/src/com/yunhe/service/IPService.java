package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.IP;

public interface IPService {
	/**
	 *����ǰ����ip���ʵļ�¼
	 * @return
	 */
	List<IP> selectTopList();
	
	/**
	 * ��ѯ������ʵ�ip������
	 * @return
	 */
	int selectCountTodayIpNum();



}
