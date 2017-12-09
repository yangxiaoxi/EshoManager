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
<title>Insert title here</title>
<script type="text/javascript" src="/EshopManager/WebContent/lib/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="lib/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="js/tooltips.js"></script>
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
			  show_err_msg("请选择操作");
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
				 
				location.href="book?method=operate&book_ids="+values+"&operate_id="+operate_id;
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
            <li class="active">查看图书信息</li>
          </ul>
          
        <div class="container-fluid">
			<div class="row-fluid">
				<div>
							<div class="block">
								<a href="#page-filter" class="block-heading"
									data-toggle="collapse">筛选</a>
								<div id="page-filter" class="block-body collapse in">
									<div class="search-well">
										<form class="form-inline" role="search" action="book?method=selectList"
											method="post">
											<input type="text" class="form-control" placeholder="请输入书名"
												name="book_name" value="${requestScope.book_name }" /> <input type="text" class="form-control" placeholder="请输入作者"
												name="book_author" value="${requestScope.book_author }"/>   <select
												class="form-control" name="status">
												<c:if test="${requestScope.statusStr=='-1'  ||requestScope.statusStr==null }">
													   <option value="-1" selected="selected">--请选择--</option>
													   <option value="1"  >上架</option>
												       <option value="0" >下架</option>
												</c:if>
												<c:if test="${requestScope.statusStr=='1' }">
											    	<option value="-1" >--请选择--</option>
												    <option value="1" selected="selected">上架</option>
												    <option value="0" >下架</option>
												</c:if>
												<c:if test="${requestScope.statusStr=='0' }">
												   <option value="-1" >--请选择--</option>
												   <option value="0" selected="selected">下架</option>
												   <option value="1" >上架</option>
												</c:if>
											</select>
											<button type="submit" class="btn btn-default">
												<i class="icon-search"></i> 查询
											</button>
										</form>
									</div>
								</div>
							</div>
					共有${requestScope.totalCount}条记录
					<div class="well">
					 <select class="form-control" name="operate_id">
												<option value="" selected="selected">--请选择--</option>
											    <option value="1">回收站</option>
												<option value="2">上架</option>
												<option value="3">下架</option>
												<option value="4">新品</option>
												<option value="5">取消新品</option>
												<option value="6">热卖</option>
												<option value="7">取消热卖</option>
						</select>&nbsp;&nbsp;<button type="button" onclick="isChose()" class="btn btn-default"><i class="icon-legal"></i> 操作</button>
						<table class="table">
							<thead>
								<tr>
									<th><input type="checkbox" id="all_ck"  />编号</th>
									<th>书名</th>
									<th>价格</th>
									<th>上架</th>
									<th>新品</th>
									<th>热销</th>
									<th>作者</th>
									<th>所属类型</th>
									<th>库存</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							 <c:forEach items="${requestScope.bookList }" var="book">
							
								<tr>
									<td><input type="checkbox" name="ck" value="${book.book_id }" />${book.book_id }</td>
									<td>${book.book_name }</td>
									<td>${book.book_price }</td>
									<td>
										<c:if test="${book.status==1 }">
										    <a href="book?method=operate&book_ids=${book.book_id}&operate_id=3"><img  src="images/yes.gif"></a>
										</c:if>
										<c:if test="${book.status!=1 }">
										    <a href="book?method=operate&book_ids=${book.book_id}&operate_id=2"><img  src="images/no.gif"></a>
										</c:if>
									</td>
									
									<td>
										<c:if test="${book.is_new==1 }">
										    <a href="book?method=operate&book_ids=${book.book_id}&operate_id=5"><img  src="images/yes.gif"></a>
										</c:if>
										<c:if test="${book.is_new!=1 }">
										    <a href="book?method=operate&book_ids=${book.book_id}&operate_id=4"><img  src="images/no.gif"></a>
										</c:if>
									</td>
									
									<td>
										<c:if test="${book.is_hot==1 }">
										    <a href="book?method=operate&book_ids=${book.book_id}&operate_id=7"><img  src="images/yes.gif"></a>
										</c:if>
										<c:if test="${book.is_hot!=1 }">
										    <a href="book?method=operate&book_ids=${book.book_id}&operate_id=6"><img  src="images/no.gif"></a>
										</c:if>
									</td>
									
									<td>${book.book_author }</td>
									<td>${book.type.type_name}</td>
									<td>${book.store_count }</td>
									
									<td><a href="book?method=update&book_id=${ book.book_id}"><i class="icon-pencil"></i></a> 
									<a href="javaScript:onDelete(${ book.book_id})" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
									<a href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }/eshop/productInfo?book_id=${book.book_id}" role="button" data-toggle="modal"><i class="icon-search"></i></a>
								  </td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="pagination">
						<ul>
						
						<c:if test="${requestScope.currentPage==1 }">
						     <li class="disabled"><a href="#">首页</a></li>
							<li class="disabled"><a href="#">上一页</a></li>
						</c:if>
							<c:if test="${requestScope.currentPage!=1 }">
						     <li ><a href="book?method=selectList&currentPage=1&book_name=${requestScope.book_name }&book_author=${requestScope.book_author}&status=${requestScope.status}">首页</a></li>
							 <li ><a href="book?method=selectList&currentPage=${currentPage-1 }&book_name=${requestScope.book_name }&book_author=${requestScope.book_author}&status=${requestScope.status}">上一页</a></li>
						</c:if>
							
							
							<c:forEach begin="${requestScope.start }" end="${requestScope.end}" var="activePage">
							      <c:if test="${pageScope.activePage==requestScope.currentPage }">
							        	<li class='active'><a>${activePage}</a></li>
							      </c:if>
								   <c:if test="${pageScope.activePage!=requestScope.currentPage }">
							        	<li><a href="book?method=selectList&currentPage=${activePage }&book_name=${requestScope.book_name }&book_author=${requestScope.book_author}&status=${requestScope.status}">${activePage }</a></li>
							      </c:if>
							</c:forEach>
							
							<c:if test="${requestScope.currentPage==totalPage }">
						     <li class="disabled"><a href="#">下一页</a></li>
							 <li class="disabled"><a href="#">尾页</a></li>
						   </c:if>
							<c:if test="${requestScope.currentPage!=totalPage }">
							    <li ><a href="book?method=selectList&currentPage=${currentPage+1 }&book_name=${requestScope.book_name }&book_author=${requestScope.book_author}&status=${requestScope.status}">下一页</a></li>
							    <li><a href="book?method=selectList&currentPage=${totalPage }&book_name=${requestScope.book_name }&book_author=${requestScope.book_author}&status=${requestScope.status}">尾页</a></li>
						</c:if>
							
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
			
			<script type="text/javascript">
			  function onDelete(book_id) {
				  if(confirm("确定要将该本书加入回收站吗?")){
					  var book_ids = book_id+",";
					  //operate_id=1  进入回收站
					 window.location.href="book?method=operate&book_ids="+book_ids+"&operate_id=1";
				  }
				
			}
			</script>
</body>
</html>