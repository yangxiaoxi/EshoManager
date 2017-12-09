package com.yunhe.pojo;

import java.util.List;

public class Type {
	private int type_id;
	private String type_name;
	private int parent_id;
	private List<Type> childType;
	
	
	
	 
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public List<Type> getChildType() {
		return childType;
	}
	public void setChildType(List<Type> childType) {
		this.childType = childType;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	@Override
	public String toString() {
		return "Type [type_id=" + type_id + ", type_name=" + type_name
				+ ", parent_id=" + parent_id + ", childType=" + childType + "]";
	}
	

}
