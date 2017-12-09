package com.yunhe.mapper;

import java.util.HashMap;
import java.util.List;

import com.yunhe.pojo.Book;

public interface BookMapper {
	
	/**
	 * 多条件查询书籍信息(带分页)
	 * @param hashMap
	 * @return
	 */
	List<Book> selectBookByConditionPage(HashMap<String, Object> hashMap);
	
	
	/**
	 * 多条件查询记录的条数
	 * @param hashMap
	 * @return
	 */
	int selectCountByConditionPage(HashMap<String, Object> hashMap);
	
	/**
	 * 删除某本书
	 * @param book_id
	 * @return
	 */
	void  delereBookById(int book_id);
	
	/**
	 * 操作书籍（修改书籍的状态）
	 */
	void operateBook(HashMap<String, Object> hashMap);
	
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
	 * 修改某本书的具体信息
	 * @param book
	 */
	void  updateBook(Book book);
	
	
	/**
	 * 通过id查找书籍
	 * @param book_id
	 * @return
	 */
	Book  selectBookById(int book_id);
	
	
	/**
	 * 查询所有的书籍信息
	 * @return
	 */
	List<Book> selectAllBook();
}


