package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.Ad;

public interface LunBoService {
	
	/**
	 * ����ֲ�ͼ
	 * @return
	 */
 boolean insertPhoto(String ad_img,int book_id);
 
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
