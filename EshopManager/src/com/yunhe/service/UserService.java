package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.User;

public interface UserService {
	/**
	 * ��ѯ���е��û���
	 * @return
	 */
	int selectAllUserCount();
	
	/**
	 * ��ѯ���ߵ��û���
	 * @return
	 */
	int selectOnlieUserCount();
	
	/**
	 * ��ѯ���е��û���Ϣ
	 * @return
	 */
	List<User> selecAlltUserInfo();
	
	/**
	 * ��ѯ����ע����û���
	 * @return
	 */
	int selectCountTodayRegist();


}
