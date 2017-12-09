package com.yunhe.mapper;

import java.util.List;

import com.yunhe.pojo.Type;

public interface TypeMapper {
	/**
	 * 通过parent_id字段查找Type对象列表
	 * @param parent_id
	 * @return
	 */
	List<Type> selectTypeByParent_id(int parent_id);
	
	
	/**
	 * 添加type
	 * @param type
	 */
	void insertType(Type type);
	
	/**
	 * 删除某个类型
	 * @param type_id
	 * @return
	 */
	int deleteType(int type_id);
}
