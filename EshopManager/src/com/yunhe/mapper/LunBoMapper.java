package com.yunhe.mapper;

import java.util.HashMap;
import java.util.List;

import com.yunhe.pojo.Ad;

public interface LunBoMapper {
	
	/**
	 * Ìí¼ÓÂÖ²¥Í¼
	 * @return
	 */
	int insertPhoto(HashMap<String, Object> hash);
	
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
