package com.yunhe.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yunhe.mapper.LunBoMapper;
import com.yunhe.pojo.Ad;
import com.yunhe.service.LunBoService;

public class LunBoServiceImpl implements LunBoService{
	
    @Autowired
	private LunBoMapper lunBoMapper;
	@Override
	public boolean insertPhoto(String ad_img, int book_id) {
		HashMap<String, Object> hash = new HashMap<String, Object>();
		hash.put("ad_img", ad_img);
		hash.put("book_id", book_id);
		int i = lunBoMapper.insertPhoto(hash);
		boolean flag = false;
		if(i!=-1){
			flag=true;
		}
		return flag;
	}
	@Override
	public void deletePhoto(int ad_id) {
		lunBoMapper.deletePhoto(ad_id);
		
	}
	@Override
	public List<Ad> selectPhoto() {
		return lunBoMapper.selectPhoto();
	}

}
