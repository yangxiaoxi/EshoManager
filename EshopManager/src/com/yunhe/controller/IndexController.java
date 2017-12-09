package com.yunhe.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.SimpleAttributeSet;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yunhe.pojo.IP;
import com.yunhe.pojo.User;
import com.yunhe.service.IPService;
import com.yunhe.service.OrderService;
import com.yunhe.service.PVService;
import com.yunhe.service.UserService;
import com.yunhe.service.impl.IPServiceImpl;
import com.yunhe.service.impl.OrderServiceImpl;
import com.yunhe.service.impl.PVServiceImpl;
import com.yunhe.service.impl.UserServiceImpl;


@WebServlet("/index")
public class IndexController  extends HttpServlet{
	private UserService userService  ;
	private PVService pvService  ;
	private OrderService orderService  ;
	private IPService iPService  ;
	
	@Override
	public void init() throws ServletException {
		ApplicationContext context = new ClassPathXmlApplicationContext("application2.xml");
		userService = (UserService)context.getBean("userService");
		pvService = (PVService) context.getBean("pVService");
		orderService = (OrderService) context.getBean("orderService");
		iPService = (IPService) context.getBean("iPService");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		  doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Date date = new Date();
		String year = new SimpleDateFormat("yyyy").format(date);//当前时间的年份
		String month =  new SimpleDateFormat("MM").format(date);//当前时间的月份
		String day =  new SimpleDateFormat("dd").format(date);//当前时间的天
		 req.setAttribute("year", year);
		 req.setAttribute("month", month);
		 req.setAttribute("day", day);
		 int totalCount =  userService.selectAllUserCount();//总的用户数
		 req.setAttribute("totalUserCount", totalCount);
		 int onlineCount = userService.selectOnlieUserCount();//在线用户数
		 req.setAttribute("onlineUserCount", onlineCount);
		 List<User> userInfo =  userService.selecAlltUserInfo();//查询所有的用户信息
		 req.setAttribute("userInfo", userInfo);
		 int pvTotalCount   =  pvService.selectAllCount();//页面访问量
		  req.setAttribute("pvTotalCount", pvTotalCount);
		 double sales =  orderService.selectSales();//总的营业额
		 req.setAttribute("sales", sales);
		 int finishOrder =  orderService.selectCountStatus();//已完成订单数
		 req.setAttribute("finishOrder", finishOrder);
		 int cancleOrder = orderService.selectCountStatus_cancle();//取消订单数
		 req.setAttribute("cancleOrder", cancleOrder);
		 int payOrder = orderService.selectCountStatus_pay();//待付款订单数
		 req.setAttribute("payOrder", payOrder);
		 int  sendOrder   = orderService.selectCountStatus_send();//待发货数
		 req.setAttribute("sendOrder", sendOrder);
		 List<IP> ipList =  iPService.selectTopList();
		 req.setAttribute("ipList", ipList);
		  int todayCountRegist =  userService.selectCountTodayRegist();//当天注册的用户数
		  req.setAttribute("todayCountRegist", todayCountRegist);
		  int todatIpCount =iPService.selectCountTodayIpNum();//当天访问的ip数
		  req.setAttribute("todatIpCount", todatIpCount);
		 req.getRequestDispatcher("shouye.jsp").forward(req, resp);
	}
	

}
