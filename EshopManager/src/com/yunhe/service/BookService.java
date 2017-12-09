package com.yunhe.service;

import java.util.HashMap;
import java.util.List;

import com.yunhe.pojo.Book;

public interface BookService {
	
	/**
	 * ��������ѯ�鼮��Ϣ(����ҳ)
	 * @param hashMap
	 * @return
	 */
	List<Book> selectBookByConditionPage(String book_name,String book_author,Integer status,int currentPage,int pageSize );
	
	/**
	 * ��������ѯ��¼������
	 * @param hashMap
	 * @return
	 */
	int selectCountByConditionPage(String book_name,String book_author,Integer status);
	
	/**
	 * ɾ��ĳ����
	 * @param book_id
	 * @return
	 */
	void  delereBookById(int book_id);
	
	/**
	 * �����鼮
	 */
	void operateBook(String book_ids,int operate_id);
	
	/**
	 * ͨ��id�����鼮
	 * @param book_id
	 * @return
	 */
	Book  selectBookById(int book_id);
	
	/**
	 * ��ѯ����վ���鼮��Ϣ
	 * @return
	 */
	List<Book> selectBookRecyle();

	/**
	 * ��ѯ����վ���鼮����
	 * @return
	 */
	int  selectCountRecyle();
	
	
	/**
	 * ��ѯ���е��鼮��Ϣ
	 * @return
	 */
	List<Book> selectAllBook();

}
