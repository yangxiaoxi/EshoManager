package com.yunhe.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yunhe.mapper.BookMapper;
import com.yunhe.pojo.Book;
import com.yunhe.service.BookService;
import com.yunhe.util.SessionFactorySingleTon;

public class BooKServiceImpl  implements BookService{
	@Autowired
	private BookMapper booKMapper;
	@Override
	public List<Book> selectBookByConditionPage(String book_name,
			String book_author, Integer status, int currentPage, int pageSize) {
		 HashMap<String, Object> haspMap = new HashMap<String, Object>();
		 haspMap.put("book_name", book_name);
		 haspMap.put("book_author", book_author);
		 haspMap.put("status", status);
		 haspMap.put("currentIndex", (currentPage-1)*pageSize);
		 haspMap.put("pageSize", pageSize);
	   List<Book> bookList= booKMapper.selectBookByConditionPage(haspMap);
		return bookList;
	}


	@Override
	public int selectCountByConditionPage(String book_name, String book_author,
			Integer status) {
		 HashMap<String, Object> haspMap = new HashMap<String, Object>();
		 haspMap.put("book_name", book_name);
		 haspMap.put("book_author", book_author);
		 haspMap.put("status", status);
	   int bookCount= booKMapper.selectCountByConditionPage(haspMap);
		return bookCount;
	}


	@Override
	public void delereBookById(int book_id) {
		  booKMapper.delereBookById(book_id);
	}


	@Override
	public void operateBook(String book_ids, int operate_id) {
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		List<Integer> book_idList = new ArrayList<Integer>();
		
		String[] ids = book_ids.split(",");
		for (String string : ids) {
			book_idList.add(Integer.parseInt(string));
		}
		hashMap.put("operate_id", operate_id);
		hashMap.put("bookIdlist", book_idList);
		booKMapper.operateBook(hashMap);
	}


	@Override
	public Book selectBookById(int book_id) {
		 Book book =  booKMapper.selectBookById(book_id);
		return book;
	}


	@Override
	public List<Book> selectBookRecyle() {
		return booKMapper.selectBookRecyle();
	}


	@Override
	public int selectCountRecyle() {
		return booKMapper.selectCountRecyle();
	}


	@Override
	public List<Book> selectAllBook() {
		return booKMapper.selectAllBook();
	}

}
