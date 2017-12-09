package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.Type;

public interface TypeService {

	
	/**
	 * ͨ��parent_id�ֶβ���Type�����б�
	 * @param parent_id
	 * @return
	 */
	List<Type> selectTypeByParent_id();
	
	/**
	 * ͨ��parent_id�ֶβ���Type�����б�
	 * @param parent_id
	 * @return
	 */
	List<Type> selectByParent_id(int parent_id);
	
	
	/**
	 * ���type
	 * @param type
	 */
	void insertType(String type_name ,int parent_id);
	
	/**
	 * ɾ��ĳ������
	 * @param type_id
	 * @return
	 */
	boolean deleteType(int type_id);
}
