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
<script type="text/javascript" src="lib/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/tooltips.js"></script>
<title>Insert title here</title>

<script type="text/javascript">
$(function() {
	  $("#all_ck").change(function(){
		  if ($(this).is(':checked')) {//全选
			  $("[name=ck]:checkbox").each(function(){
				  this.checked=true;
			  });
		  }else{//全不选
			  $("[name=ck]:checkbox").each(function(){
				  this.checked=false;
			  });
		  } 
		});
	});
	
	
function isChose() {//是否选中操作
	var $chose = $("input[name='ck']:checked");
    var values  = '';
	if($chose.length==0){
		  show_err_msg("请选择要操作的书籍");
	}else{
		var operate_id =  $("select[name ='operate_id']").val();
		if(operate_id==''){
			show_err_msg("请选择操作")
		}else{
			$chose.each(function () {
				var value = this.value;
				values+=value;
				values+=",";
			});
			 if(operate_id==0){
				 location.href="book?method=delete&book_id="+operate_id;//彻底删除
			 }else{
				 location.href="book?method=operate&book_ids="+values+"&operate_id="+operate_id;//从回收站还原
			 }
			
		}
	}  
}
</script>
</head>
<body>
 <div class="content">
 <div class="header">
             
          <h1 class="page-title">图书管理</h1>
        </div>
          <ul class="breadcrumb">
            <li><a href="index.jsp">图书管理</a> <span class="divider">/</span></li>
            <li class="active">回收站</li>
          </ul>
          
        <div class="container-fluid">
			<div class="row-fluid">

				<div>
					共有${recyleBookCount }条记录
					<div class="well">
					 <select class="form-control" name="operate_id">
												<option value="" selected="selected">--请选择--</option>
											    <option value="8">还原</option><!-- 自定义 8 代表从回收站还原 -->
												<option value="0">删除</option>
						</select>&nbsp;&nbsp;<button type="button" onclick="isChose()" class="btn btn-default"><i class="icon-legal"></i> 操作</button>
						<table class="table">
							<thead>
								<tr>
									<th><input type="checkbox" id="all_ck"  />编号</th>
									<th>书名</th>
									<th>价格</th>
									<th>所属分类</th>
									<th >操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${recyleBookList }" var="Book">
								<tr>
									<td><input type="checkbox" name="ck"  value="${Book.book_id }" />${Book.book_id }</td>
									<td>${Book.book_name }</td>
									<td>${Book.book_price }</td>
									<td>${Book.type.type_name }</td>
									<td><a href="book?method=operate&book_ids=${Book.book_id }&operate_id=8"><i class="icon-fire"></i></a> <a
										href="book?method=delete&book_id=${Book.book_id  }" role="button" data-toggle="modal"><i
											class="icon-remove"></i></a></td>
								</tr>
								</c:forEach>
							 
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