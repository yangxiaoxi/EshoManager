package com.yunhe.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.yunhe.mapper.TypeMapper;
import com.yunhe.pojo.Type;
import com.yunhe.service.TypeService;
import com.yunhe.util.SessionFactorySingleTon;

public class TypeServiceImpl  implements TypeService{
	@Autowired
	private TypeMapper typeMapper;
	 

	@Override
	public List<Type> selectTypeByParent_id() {
		
		//1,查出所有的一级类型列表
		List<Type> typeList1 = typeMapper.selectTypeByParent_id(0);
		for (Type type : typeList1) {
			//2,查询所有的二级类型列表
			List<Type> typeList2 = typeMapper.selectTypeByParent_id(type.getType_id());
			type.setChildType(typeList2);
		}
		return typeList1;
	}

	@Override
	public void insertType(String type_name, int parent_id) {
		 Type type = new Type();
		 type.setParent_id(parent_id);
		 type.setType_name(type_name);
		 typeMapper.insertType(type);
	}

	@Override
	public List<Type> selectByParent_id(int parent_id) {
		return typeMapper.selectTypeByParent_id(parent_id);
	}

	@Override
	public boolean deleteType(int type_id) {
		boolean flag = false;
	int i = 	typeMapper.deleteType(type_id);
	if(i!=-1){
		flag=true;
	}
		return flag;
	}

}
