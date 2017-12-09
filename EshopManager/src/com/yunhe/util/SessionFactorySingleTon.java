package com.yunhe.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionFactorySingleTon {
	
	
	private  static SessionFactorySingleTon instance = new SessionFactorySingleTon();
	public static SqlSessionFactory factory ;
    
	private SessionFactorySingleTon(){
	}
	public static SessionFactorySingleTon getInctance(){
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");
			factory   = new SqlSessionFactoryBuilder().build( inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return instance;
	}

}
