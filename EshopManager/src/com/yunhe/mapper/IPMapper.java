package com.yunhe.mapper;

import java.util.List;

import com.yunhe.pojo.IP;

public interface IPMapper {
	
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
