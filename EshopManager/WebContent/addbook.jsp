<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

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
    <div class="content">
       <div class="header">
          <h1 class="page-title">图书管理</h1>
        </div>
          <ul class="breadcrumb">
            <li><a href="index.jsp">图书管理</a> <span class="divider">/</span></li>
            <li class="active">添加图书</li>
          </ul>
          

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
    <button class="btn btn-primary"><i class="icon-save"></i> 保存</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">通用信息</a></li>
      <li><a href="#xiangxiInfo" data-toggle="tab">详细信息</a></li>
       <li><a href="#otherInfo" data-toggle="tab">其他信息</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
		    <form id="tab">
		        <label>书籍名称</label>
		        <input type="text"  class="input-xlarge">
		         <label>书籍分类</label>
		         <select class="form-control" name="stu_sex">
						<option value="" selected="selected">--请选择分类--</option>
					    <option value="1">文学馆</option>
					    <option value="0">计算机管</option>
					   <option value="1">生活馆</option>
				</select>
		         <select class="form-control" name="stu_sex">
						<option value="" selected="selected">--请选择子分类--</option>
					    <option value="1">文学馆</option>
					    <option value="0">计算机管</option>
					   <option value="1">生活馆</option>
				</select>
				
		        <label>本店售价</label>
		        <input type="text" value="90.00" class="input-xlarge">
		        <label>市场价格</label>
		        <input type="text" value="100.oo" class="input-xlarge">
		        <label>作者</label>
		        <input type="text" value="Smith" class="input-xlarge">
		        <label>出版社</label>
		        <input type="text" value="人民出版社" class="input-xlarge">
		    </form>
      </div>
      
      </div>
      
  </div>
  </div>
                   <%@include file="foot.jsp" %>
                    
            </div>
        </div>
    </div>

    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  </body>
</html>


