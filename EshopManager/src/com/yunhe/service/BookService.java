package com.yunhe.service;

import java.util.HashMap;
import java.util.List;

import com.yunhe.pojo.Book;

public interface BookService {
	
	/**
	 * 多条件查询书籍信息(带分页)
	 * @param hashMap
	 * @return
	 */
	List<Book> selectBookByConditionPage(String book_name,String book_author,Integer status,int currentPage,int pageSize );
	
	/**
	 * 多条件查询记录的条数
	 * @param hashMap
	 * @return
	 */
	int selectCountByConditionPage(String book_name,String book_author,Integer status);
	
	/**
	 * 删除某本书
	 * @param book_id
	 * @return
	 */
	void  delereBookById(int book_id);
	
	/**
	 * 操作书籍
	 */
	void operateBook(String book_ids,int operate_id);
	
	/**
	 * 通过id查找书籍
	 * @param book_id
	 * @return
	 */
	Book  selectBookById(int book_id);
	
	/**
	 * 查询回收站的书籍信息
	 * @return
	 */
	List<Book> selectBookRecyle();

	/**
	 * 查询回收站的书籍数量
	 * @return
	 */
	int  selectCountRecyle();
	
	
	/**
	 * 查询所有的书籍信息
	 * @return
	 */
	List<Book> selectAllBook();

}
