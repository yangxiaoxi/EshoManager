package com.yunhe.mapper;

import java.util.List;

import com.yunhe.pojo.Type;

public interface TypeMapper {
	/**
	 * ͨ��parent_id�ֶβ���Type�����б�
	 * @param parent_id
	 * @return
	 */
	List<Type> selectTypeByParent_id(int parent_id);
	
	
	/**
	 * ���type
	 * @param type
	 */
	void insertType(Type type);
	
	/**
	 * ɾ��ĳ������
	 * @param type_id
	 * @return
	 */
	int deleteType(int type_id);
}
