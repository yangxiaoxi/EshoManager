package com.yunhe.pojo;

public class Book {
	
	private int book_id;
	private String book_name;
	private String book_logo_small;
	private String book_logo_big;
	private double book_price;
	private double book_price_old;
	private String book_author;
	private String book_decription;
	private String  book_press;
	private  int type_id;
	private String book_date;
	private int store_count;
	private int status;
	private int is_new;
	private int is_hot;
	private int is_garbage;
	private Type type;
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public int getBook_id() {
		return book_id;
	}
	public String getBook_logo_small() {
		return book_logo_small;
	}
	public void setBook_logo_small(String book_logo_small) {
		this.book_logo_small = book_logo_small;
	}
	public String getBook_logo_big() {
		return book_logo_big;
	}
	public void setBook_logo_big(String book_logo_big) {
		this.book_logo_big = book_logo_big;
	}
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	public int getStore_count() {
		return store_count;
	}
	public void setStore_count(int store_count) {
		this.store_count = store_count;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getIs_new() {
		return is_new;
	}
	public void setIs_new(int is_new) {
		this.is_new = is_new;
	}
	public int getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(int is_hot) {
		this.is_hot = is_hot;
	}
	public int getIs_garbage() {
		return is_garbage;
	}
	public void setIs_garbage(int is_garbage) {
		this.is_garbage = is_garbage;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	 
	public double getBook_price() {
		return book_price;
	}
	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}
	public double getBook_price_old() {
		return book_price_old;
	}
	public void setBook_price_old(double book_price_old) {
		this.book_price_old = book_price_old;
	}
	 
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_decription() {
		return book_decription;
	}
	public void setBook_decription(String book_decription) {
		this.book_decription = book_decription;
	}
	public String getBook_press() {
		return book_press;
	}
	public void setBook_press(String book_press) {
		this.book_press = book_press;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	
	

}
