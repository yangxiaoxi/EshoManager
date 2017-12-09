<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>EshopManager</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
     <link rel="shortcut icon" href="favicon.ico" />
    <link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link type="image/x-icon" href="/favicon.ico" rel="icon"/>
    <link href="http://localhost:8080/eshop/favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
	function setRightContents(url) {
		//替换右边内容区的内容
		document.getElementById('rightContents').src = url;
	}
</script>
    <!-- Demo page code -->
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="lib/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body class=""> 
  <!--<![endif]-->
   <%@include file="firstTop.jsp" %>
    <div class="sidebar-nav">
    	<a href="javascript:setRightContents('index')" class="nav-header" ><i class="icon-comment"></i>首页</a>
        <a href="#BookManager" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>图书管理</a>
        <ul id="BookManager" class="nav nav-list collapse ">
            <li><a href="javascript:setRightContents('book?method=selectList')">查看图书信息</a></li>
            <li ><a href="javascript:setRightContents('addbook.jsp')">添加图书信息</a></li>
            <li ><a href="user.html">上下架管理</a></li>
            <li ><a href="javascript:setRightContents('book?method=recycle')">回收站</a></li>
        </ul>
        
        <a href="#cuXiaoManager" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>促销管理</a>
        <ul id="cuXiaoManager" class="nav nav-list collapse ">
            <li><a href="javascript:setRightContents('book?method=selectPhoto')">首页轮播</a></li>
            <li ><a href="javascript:setRightContents('gonggao.jsp')">公告板</a></li>
        </ul>

        <a href="#fenLeiManager" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>分类管理<span class="label label-info">+3</span></a>
        <ul id="fenLeiManager" class="nav nav-list collapse">
            <li ><a href="javascript:setRightContents('type?method=select')">分类列表管理</a></li>
        </ul>
        
		<a href="#OrderManager" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>订单管理</a>
        <ul id="OrderManager" class="nav nav-list collapse">
            <li ><a href="javascript:setRightContents('orderManager.jsp')">订单列表</a></li>
            <li ><a href="privacy-policy.html">发货单列表</a></li>
            <li ><a href="privacy-policy.html">退货单列表</a></li>
             
        </ul>
        
         <a href="#VIPManager" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>会员管理</a>
         <ul id="VIPManager" class="nav nav-list collapse">
            <li ><a href="javascript:setRightContents('VIPinfo.jsp')">查看会员信息</a></li>
            <li ><a href="privacy-policy.html">添加会员</a></li>
          
             
        </ul>
        
        <a href="#FormManager" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>报表统计</a>
         <ul id="FormManager" class="nav nav-list collapse">
            <li ><a href="privacy-policy.html">客户统计</a></li>
            <li ><a href="privacy-policy.html">销售情况</a></li>
            <li ><a href="privacy-policy.html">图书销售排行</a></li>
             
        </ul>
        
        <a href="#SystemManager" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>系统设置</a>
         <ul id="SystemManager" class="nav nav-list collapse">
            <li ><a href="privacy-policy.html">地区列表</a></li>
            <li ><a href="privacy-policy.html">设置发件邮箱</a></li>
            <li ><a href="privacy-policy.html">设置密保问题</a></li>
             
        </ul>
        <a href="#PermissionManager" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>权限管理</a>
         <ul id="PermissionManager" class="nav nav-list collapse">
            <li ><a href="privacy-policy.html">用户列表</a></li>
            <li ><a href="privacy-policy.html">角色列表</a></li>
            <li ><a href="privacy-policy.html">权限列表</a></li>
             
        </ul>
      
    </div>
<!-- 右边内容区的框架 -->
		<div class="rightcon">
			<div class="right_con" style="width: 100%; height: 1200px">
				<iframe src="index" frameBorder="0" scrolling="no"
					width="100%" height="100%" id="rightContents">
			    </iframe>
		</div>
		</div>   
  	    <%@include file="foot.jsp" %> 
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
   
  </body>
</html>


