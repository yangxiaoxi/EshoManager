<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<title>Insert title here</title>
</head>
<body>
 <div class="content">
 <div class="header">
             
          <h1 class="page-title">订单管理</h1>
        </div>
          <ul class="breadcrumb">
            <li><a href="index.jsp">订单管理</a> <span class="divider">/</span></li>
            <li class="active">订单列表管理</li>
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
											<input type="text" class="form-control" placeholder="订单号"
												name="stu_name" /> <input type="text" class="form-control" placeholder="收货人"
												name="stu_name" />   <select
												class="form-control" name="stu_sex">
												<option value="" selected="selected">--请选择状态--</option>
												<option value="1">待付款</option>
												<option value="0">待发货</option>
											    <option value="1">已发货</option>
												<option value="0">已取消</option>
												<option value="1">已完成</option>
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
					 <select class="form-control" name="stu_sex">
												<option value="" selected="selected">--请选择--</option>
											    <option value="1">删除</option>
												<option value="0">取消</option>
												<option value="1">打印订单</option>
						</select>&nbsp;&nbsp;<button type="submit" class="btn btn-default"><i class="icon-legal"></i> 操作</button>
						<table class="table">
						  
							<thead>
								<tr>
									<th><input type="checkbox" id="all_ck"  />订单号</th>
									<th>总金额</th>
									<th>下单时间</th>
									<th>收货人</th>
									<th>收货地址</th>
									<th>订单状态</th>
									<th >操作</th>
								</tr>
							</thead>
							<tbody>
								 <tr>
									<td><input type="checkbox" id="all_ck"  />1231321321</td>
									<td>$100.0</td>
									<td>2017-09-09</td>
									<td>杨茜</td>
									<td>深圳</td>
									<td>待付款</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								
								<tr>
									<td><input type="checkbox" id="all_ck"  />1231321321</td>
									<td>$100.0</td>
									<td>2017-09-09</td>
									<td>杨茜</td>
									<td>深圳</td>
									<td>待付款</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								
								<tr>
									<td><input type="checkbox" id="all_ck"  />1231321321</td>
									<td>$100.0</td>
									<td>2017-09-09</td>
									<td>杨茜</td>
									<td>深圳</td>
									<td>待付款</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								
								<tr>
									<td><input type="checkbox" id="all_ck"  />1231321321</td>
									<td>$100.0</td>
									<td>2017-09-09</td>
									<td>杨茜</td>
									<td>深圳</td>
									<td>待付款</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								<tr>
									<td><input type="checkbox" id="all_ck"  />1231321321</td>
									<td>$100.0</td>
									<td>2017-09-09</td>
									<td>杨茜</td>
									<td>深圳</td>
									<td>待付款</td>
									<td><a href="#"><i class="icon-pencil"></i></a> <a
										href="#" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								
								<tr>
									<td><input type="checkbox" id="all_ck"  />1231321321</td>
									<td>$100.0</td>
									<td>2017-09-09</td>
									<td>杨茜</td>
									<td>深圳</td>
									<td>待付款</td>
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
</body>
</html>