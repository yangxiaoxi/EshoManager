package com.yunhe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import net.sf.json.JSONObject;

import com.sun.org.apache.bcel.internal.generic.IINC;
import com.yunhe.pojo.Type;
import com.yunhe.service.TypeService;
import com.yunhe.service.impl.TypeServiceImpl;


@WebServlet("/type")
public class TypeController  extends HttpServlet{
	private TypeService typeService ;
	
	
	@Override
	public void init() throws ServletException {
		ApplicationContext context  = new ClassPathXmlApplicationContext("application2.xml");
		typeService = (TypeService)context.getBean("typeService");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 String method = req.getParameter("method");
		 req.setCharacterEncoding("utf-8");
		 if("select".equals(method)){
			 selectType(req,resp);
		 }
		 if("selectRoot".equals(method)){
			 selectRootType(req,resp);
		 }
		 
		 if("insert".equals(method)){
			 insertType(req,resp);
		 }
		 
		 if("delete".equals(method)){
			 deleteType(req,resp);
		 }
	}
	
	 //1,查询所有的type
	protected void selectType(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 List<Type> typeList =  typeService.selectTypeByParent_id();
		 req.setAttribute("typeList", typeList);
		 req.getRequestDispatcher("typemanager.jsp").forward(req, resp);
	}
	
	
	 //2,根据类型所对应的parent_id 查找类型列表
		protected void selectRootType(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			String parent_id = req.getParameter("parent_id");
			 List<Type> typeList =  typeService.selectByParent_id(Integer.parseInt(parent_id));
			 JSONObject jo = new JSONObject();
		     jo.put("typeList", typeList);
		     resp.getWriter().print(jo.toString());
		}
	
	//3，添加新的type
	protected void insertType(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String type_name = req.getParameter("type_name");//类型名称
		String parent_id = req.getParameter("parent_id");//类型对应的父类型id
		typeService.insertType(type_name, Integer.parseInt(parent_id));
		JSONObject jo = new JSONObject();
		jo.put("status", 200);
		resp.getWriter().print(jo.toString());
	}
	
	//4，删除某个type
		protected void deleteType(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			String type_id = req.getParameter("type_id");//类型对应的父类型id
		 boolean flag  =	typeService.deleteType(Integer.parseInt(type_id));
		 JSONObject jo = new JSONObject();
			 if(flag){
				 jo.put("status", 200);
			 }else{
				 jo.put("status", 500);
			 }
			resp.getWriter().print(jo.toString());
		}

}
