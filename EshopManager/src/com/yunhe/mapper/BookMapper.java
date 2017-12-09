package com.yunhe.mapper;

import java.util.HashMap;
import java.util.List;

import com.yunhe.pojo.Book;

public interface BookMapper {
	
	/**
	 * ��������ѯ�鼮��Ϣ(����ҳ)
	 * @param hashMap
	 * @return
	 */
	List<Book> selectBookByConditionPage(HashMap<String, Object> hashMap);
	
	
	/**
	 * ��������ѯ��¼������
	 * @param hashMap
	 * @return
	 */
	int selectCountByConditionPage(HashMap<String, Object> hashMap);
	
	/**
	 * ɾ��ĳ����
	 * @param book_id
	 * @return
	 */
	void  delereBookById(int book_id);
	
	/**
	 * �����鼮���޸��鼮��״̬��
	 */
	void operateBook(HashMap<String, Object> hashMap);
	
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
	 * �޸�ĳ����ľ�����Ϣ
	 * @param book
	 */
	void  updateBook(Book book);
	
	
	/**
	 * ͨ��id�����鼮
	 * @param book_id
	 * @return
	 */
	Book  selectBookById(int book_id);
	
	
	/**
	 * ��ѯ���е��鼮��Ϣ
	 * @return
	 */
	List<Book> selectAllBook();
}


