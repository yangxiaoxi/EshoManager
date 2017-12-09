package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.Type;

public interface TypeService {

	
	/**
	 * 通过parent_id字段查找Type对象列表
	 * @param parent_id
	 * @return
	 */
	List<Type> selectTypeByParent_id();
	
	/**
	 * 通过parent_id字段查找Type对象列表
	 * @param parent_id
	 * @return
	 */
	List<Type> selectByParent_id(int parent_id);
	
	
	/**
	 * 添加type
	 * @param type
	 */
	void insertType(String type_name ,int parent_id);
	
	/**
	 * 删除某个类型
	 * @param type_id
	 * @return
	 */
	boolean deleteType(int type_id);
}
