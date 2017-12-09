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
function deleteClick(ad_id) {
	if(confirm("确定要删除图片吗?")){
		var url="book";
		   var data={
			    method :"deletePhoto",
			    ad_id:ad_id
		   };
			$.post(url,data,function(response){
					 var jsonObject=$.parseJSON(response);
                   if(jsonObject.status==200){
                	   show_msg("删除成功", "book?method=selectPhoto");
                   }					  
			});
	}
}

</script>
</head>
<body>
 <div class="content">
 <div class="header">
             
          <h1 class="page-title">促销管理</h1>
        </div>
          <ul class="breadcrumb">
            <li><a href="index.jsp">促销管理</a> <span class="divider">/</span></li>
            <li class="active">首页轮播</li>
          </ul>
          
        <div class="container-fluid">
			<div class="row-fluid">
          	<div class="block">
							<a href="#page-filter" class="block-heading"
									data-toggle="collapse">添加轮播图</a>
								<div id="page-filter" class="block-body collapse in">
									<div class="search-well">
										<form class="form-inline" role="search" action="book?method=addPhoto"
											method="post" enctype="multipart/form-data">
											<select class="form-control" name="book_id">
							         	    </select> 
										    <input type="file" class="form-control" name="ad_img" placeholder="请上传轮播图片" /> 
											<button class="btn btn-primary" id="btnSave">
								             	<i class="icon-save"></i> 保存
								           </button>
										</form>
									</div>
								</div>
							</div>
				 <div class="row-fluid">
				<div class="block">
			        <p class="block-heading">轮播列表</p>
			        <div class="block-body gallery">
			                   <c:forEach items="${requestScope.adList }" var="ad"> 
			        			<a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}/eshop/productInfo?book_id=${ad.book_id}" title="查看" target="_blank">
			        				<img src="upload/${ad.ad_img}" width="450px" class="img-polaroid">
			        			</a>
			        			<a href="javascript:deleteClick(${ad.ad_id})"><img src="images/no.gif" /></a>
			        		 </c:forEach>
			        </div>
			    </div>
					
			</div>
				<%@include file="foot.jsp" %>
			</div>
			</div>
			</div>
			
	<script type="text/javascript">
	//1,加载所有图书id
	  $(function() {
		  var url="book";
		   var data={
			    method :"selectAllBook"
		   };
			$.post(url,data,function(response){
					 var jsonObject=$.parseJSON(response);
					 var bookList =jsonObject.bookList;
					 var selectHtml = "<option value=''>--请选择图书--</option>";
					 for (var i = 0; i < bookList.length; i++) {
						var bookInfo = bookList[i];
						selectHtml+="<option value='"+bookInfo.book_id+"'>"+bookInfo.book_name+"</option>";
					}
					$("select[name='book_id']").html(selectHtml);
			});
			
	});
	</script>
</body>

</html>