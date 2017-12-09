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
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <!-- 日期选择器 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" />
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css" />

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
  /**日期选择器**/
  $(function() {
    $( "#datepicker" ).datepicker();//设置日期的展示格式
  });
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
<div class="content">
 <div class="header">
          <h1 class="page-title">会员管理</h1>
        </div>
          <ul class="breadcrumb">
            <li><a href="index.jsp">会员管理</a> <span class="divider">/</span></li>
            <li class="active">查看会员信息</li>
          </ul>
          
        <div class="container-fluid">
			<div class="row-fluid">

				<div>
					<div class="container-fluid">
						<div class="row-fluid">
							<div class="block">
								<a href="#page-filter" class="block-heading"
									data-toggle="collapse">筛选</a>
								<div id="page-filter" class="block-body collapse in">
									<div class="search-well">
										<form class="form-inline" role="search" action="#"
											method="post">
											<input type="text" class="form-control" placeholder="请输入关键字"
												name="stu_name" /> <input type="text" id="datepicker"
												name="date" class="form-control" placeholder="请选择注册日期" /> <select
												class="form-control" name="stu_sex">
												<option value="" selected="selected">--请选择状态--</option>
												<option value="1">激活</option>
												<option value="0">未激活</option>
											</select>
											<button type="submit" class="btn btn-default">
												<i class="icon-search"></i> 查询
											</button>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					共有99条记录
					<div class="well">

						<table class="table">

							<thead>
								<tr>
									<th>编号</th>
									<th>用户名</th>
									<th>邮箱</th>
									<th>性别</th>
									<th>电话</th>
									<th>状态</th>
									<th>在线</th>
									<th>注册时间</th>
									<th style="width: 26px;">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>hijson</td>
									<td>1141546764@qq.com</td>
									<td>女</td>
									<td>13627327880</td>
									<td>已激活</td>
									<td><a href="#"><img  src="images/no.gif"></a></td>
									<td>2017-09-09</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								<tr>
									<td>1</td>
									<td>hijson</td>
									<td>1141546764@qq.com</td>
									<td>女</td>
									<td>13627327880</td>
									<td>已激活</td>
									<td><a href="#"><img  src="images/no.gif"></a></td>
									<td>2017-09-09</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								<tr>
									<td>1</td>
									<td>hijson</td>
									<td>1141546764@qq.com</td>
									<td>女</td>
									<td>13627327880</td>
									<td>已激活</td>
									<td><a href="#"><img  src="images/no.gif"></a></td>
									<td>2017-09-09</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								<tr>
									<td>1</td>
									<td>hijson</td>
									<td>1141546764@qq.com</td>
									<td>女</td>
									<td>13627327880</td>
									<td>已激活</td>
									<td><a href="#"><img  src="images/no.gif"></a></td>
									<td>2017-09-09</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								<tr>
									<td>1</td>
									<td>hijson</td>
									<td>1141546764@qq.com</td>
									<td>女</td>
									<td>13627327880</td>
									<td>已激活</td>
									<td><a href="#"><img  src="images/no.gif"></a></td>
									<td>2017-09-09</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								<tr>
									<td>1</td>
									<td>hijson</td>
									<td>1141546764@qq.com</td>
									<td>女</td>
									<td>13627327880</td>
									<td>已激活</td>
									<td><a href="#"><img  src="images/no.gif"></a></td>
									<td>2017-09-09</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="pagination">
						<ul>
							<li class="active"><a href="#">首页</a></li>
							<li class="disabled"><a href="#">上一页</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">下一页</a></li>
							<li><a href="#">尾页</a></li>
						</ul>
					</div>

					<div class="modal small hide fade" id="myModal" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">Delete Confirmation</h3>
						</div>
						<div class="modal-body">
							<p class="error-text">
								<i class="icon-warning-sign modal-icon"></i>Are you sure you
								want to delete the user?
							</p>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
							<button class="btn btn-danger" data-dismiss="modal">Delete</button>
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


