package com.yunhe.mapper;

import java.util.HashMap;
import java.util.List;

import com.yunhe.pojo.Ad;

public interface LunBoMapper {
	
	/**
	 * ����ֲ�ͼ
	 * @return
	 */
	int insertPhoto(HashMap<String, Object> hash);
	
	/**
	 * ɾ���ֲ�ͼ
	 * @param ad_img
	 */
	void deletePhoto(int ad_id);
	
	/**
	 * �������е��ֲ�ͼ
	 * @return
	 */
	List<Ad> selectPhoto();

}
