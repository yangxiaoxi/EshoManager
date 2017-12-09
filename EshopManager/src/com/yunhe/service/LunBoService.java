package com.yunhe.service;

import java.util.List;

import com.yunhe.pojo.Ad;

public interface LunBoService {
	
	/**
	 * Ìí¼ÓÂÖ²¥Í¼
	 * @return
	 */
 boolean insertPhoto(String ad_img,int book_id);
 
    /**
	 * É¾³ıÂÖ²¥Í¼
	 * @param ad_img
	 */
	void deletePhoto(int ad_id);
	
	/**
	 * ²éÕÒËùÓĞµÄÂÖ²¥Í¼
	 * @return
	 */
	List<Ad> selectPhoto();
	

}
