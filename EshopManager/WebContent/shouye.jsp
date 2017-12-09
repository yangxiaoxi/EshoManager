<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="shortcut icon" href="favicon.ico" />
    <link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link type="image/x-icon" href="/favicon.ico" rel="icon"/>
    <link href="http://localhost:8080/eshop/favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
<div class="content">
  <div class="header">
            <div class="stats">
			    <p class="stat"><span class="number">${requestScope.day }</span>日</p>
			    <p class="stat"><span class="number">${requestScope.month}</span>月</p>
			    <p class="stat"><span class="number">${requestScope.year }</span>年</p>
          </div>
          <h1 class="page-title">首页</h1>
        </div>
          <ul class="breadcrumb">
            <li class="active">首页</li>
          </ul>
          
            <div class="container-fluid">
            <div class="row-fluid">
<div class="row-fluid">

    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">统计数据</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.totalUserCount }</p>
                        <p class="detail">用户数</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.sales }</p>
                        <p class="detail">营业额</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.onlineUserCount }</p>
                        <p class="detail">在线用户数</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.pvTotalCount }</p>
                        <p class="detail">页面访问量(PV)</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">订单统计数据</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title"><font style='color:#ffb61e'> ${requestScope.sendOrder }</font></p>
                        <p class="detail">待发货订单</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.payOrder }</p>
                        <p class="detail">待付款订单</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.finishOrder }</p>
                        <p class="detail">已完成订单</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">${requestScope.cancleOrder }</p>
                        <p class="detail">已取消订单</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="row-fluid">
    <div class="block span6">
        <a href="#tablewidget" class="block-heading" data-toggle="collapse">用户统计数 <span class="label label-warning">+${requestScope.todayCountRegist>0?requestScope.todayCountRegist:'' }</span></a>
        <div id="tablewidget" class="block-body collapse in">
            <table class="table">
              <thead>
                <tr>
                  <th>用户名</th>
                  <th>邮箱</th>
                  <th>性别</th>
                  <th>状态</th>
                </tr>
              </thead>
              <tbody>
                 <c:forEach items="${requestScope.userInfo }" var="UserInfo">
		               <tr>
		                  <td>${UserInfo.user_name }</td>
		                  <td>${UserInfo.user_email }</td>
		                  <td>${UserInfo.user_sex }</td>
		                  <td>${UserInfo.is_activated==0?'未激活':'已激活' }</td>
		                </tr>
                </c:forEach>
              </tbody>
            </table>
            <p><a href="users.html">More...</a></p>
        </div>
    </div>
    
    <div class="block span6">
        <a href="#tablewidget" class="block-heading" data-toggle="collapse">ip统计<span class="label label-warning">+${requestScope.todatIpCount }</span></a>
        <div id="tablewidget" class="block-body collapse in">
            <table class="table">
              <thead>
                <tr>
                  <th>ip 地址</th>
                  <th>访问次数</th>
                </tr>
              </thead>
              <tbody>
                 
                 <c:forEach items="${requestScope.ipList }" var="iP">
                 <tr>
                  <td>${iP.ip_address }</td>
                  <td>${iP.count }</td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
            <p><a href="users.html">More...</a></p>
        </div>
    </div>
    </div>
    <%@include file="foot.jsp" %>
   </div>
   </div>
</div>
</body>
</html>