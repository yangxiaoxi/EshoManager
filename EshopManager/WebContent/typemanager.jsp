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

<!-- TreeTable -->
<link href="js/treetable/jquery.treetable.css" rel="stylesheet" type="text/css" />
<link href="js/treetable/jquery.treetable.theme.default.css" rel="stylesheet" />
<script src="js/treetable/jquery.treetable.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$("#example-basic-expandable").treetable({
			expandable : true
		});
	});
</script>
<!--------------->
<title>Insert title here</title>

</head>
<body>
 <div class="content">
 <div class="header">
             
          <h1 class="page-title">分类管理</h1>
        </div>
          <ul class="breadcrumb">
            <li><a href="index.jsp">分类管理</a> <span class="divider">/</span></li>
            <li class="active">分类列表管理</li>
          </ul>
        <div class="container-fluid">
			<div class="row-fluid">
          	<div class="block">
								<a href="#page-filter" class="block-heading"
									data-toggle="collapse">增加分类</a>
								<div id="page-filter" class="block-body collapse in">
									<div class="search-well">
										<form class="form-inline" role="search" action="#"
											method="post">
											 <select class="form-control" name=type_id>
											     <option value="" selected="selected">--请选择--</option>
											     <option value="1"  >一级分类</option>
												 <option value="0" >二级分类</option>
											 </select>
											 
											 <input type="text" class="form-control" placeholder="请输入一级分类名称"
									        	name="parent_type_name"  style="display: none;"/>
							         	<select class="form-control" name="parent_type_id" style="display: none;">
							         	</select>
								       <input type="text" class="form-control" placeholder="请输入二级分类名称"
										      name="child_type_name"  style="display: none;"/>
											<button class="btn btn-primary" id="btnSave">
								             	<i class="icon-save"></i> 保存
								            </button>
										</form>
									</div>
								</div>
							</div>
			 <div class="row-fluid">

				<table id="example-basic-expandable" class="table">
					<thead>
						<tr id="theTableTitle">
							<th>分类名称</th>
							<th>分类类型</th>
							<th>类型编号</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${requestScope.typeList }" var="typeInfo">
							<tr data-tt-id="${ typeInfo.type_id}">
								<td>${typeInfo.type_name }</td>
								<td>一级分类</td>
								<td>${typeInfo.type_id }</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick(${typeInfo.type_id })" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							<c:forEach items="${typeInfo.childType }" var="childType">
							    
								<tr data-tt-id="${childType.type_id }" data-tt-parent-id="${typeInfo.type_id }">
									<td>${childType.type_name }</td>
									<td>二级分类</td>
									<td>${childType.type_id }</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick(${childType.type_id })" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							</c:forEach>
							
					</c:forEach>
							
					</tbody>

				</table>

			</div>
				<%@include file="foot.jsp" %>
			</div>
			</div>
			</div>
			
<script type="text/javascript">



  $(function() {
	  //1,判断选择的是哪一类分级
	$("select[name='type_id']").change(function () {
		var type_id = $(this).val();
		if(type_id=='1'){//一级类型分类
			$("input[name='parent_type_name']").show();
		}else if(type_id=='0'){//二级类型分类
			$("input[name='parent_type_name']").hide();
			$("select[name='parent_type_id']").show();
			$("input[name='child_type_name']").show();
			
		}else{
			$("input[name='parent_type_name']").hide();
			$("select[name='parent_type_id']").hide();
			$("input[name='child_type_name']").hide();
		}
	});
	 //2，点击保存按钮
	   $("#btnSave").click(function () {
		  var  type_idValue= $("select[name='type_id']").val();
		  if(type_idValue=='1'){//如果选择的是一级分类
			  var typeName1 = $("input[name='parent_type_name']").val();//输入的一级分类的名称
		       if(typeName1==''){
		    	   show_err_msg("请输入一级分类的名称");
		       }else{
		    	   //ajax请求插入一级分类
		    	   insertType(0, typeName1);
		       }
		  }else if(type_idValue=='0'){//如果选择的是二级级分类
			  var parent_id = $("select[name='parent_type_id']").val();
		      if(parent_id==''){
		    	  show_err_msg("请选择一级分类")
		      }else{
		    	  var chileTypeName = $("input[name='child_type_name']").val();
		    	  if(chileTypeName==''){
		    		  show_err_msg("请输入二级分类名称")
		    	  }else{
		    		  //ajax请求插入二级分类
		    		  insertType(parent_id, chileTypeName);
		    	  }
		      }
		  }else{
			  show_err_msg("请选择您要的操作");
		  }
		  return false;
	    });
	 
	 //3,ajax请求所有的一级列表
	   var url="type";
	   var data={
		    method :"selectRoot",
		    parent_id:"0"
	   };
		$.post(url,data,function(response){
				 var jsonObject=$.parseJSON(response);
				 console.log(jsonObject);
				 var typeList =jsonObject.typeList;
				 var selectHtml = "<option value=''>--请选择一级分类--</option>";
				 for (var i = 0; i < typeList.length; i++) {
					var typeInfo = typeList[i];
					selectHtml+="<option value='"+typeInfo.type_id+"'>"+typeInfo.type_name+"</option>";
				}
				$("select[name='parent_type_id']").html(selectHtml);
		});
		
});
  
   //4，定义一个ajax请求添加新的type
  
    function insertType(parent_id,type_name) {
    	 var url="type";
  	     var data={
  		    method :"insert",
  		    parent_id:parent_id,
  		    type_name:type_name
  	   };
  		$.post(url,data,function(response){
  				 var jsonObject=$.parseJSON(response);
  				 if(jsonObject.status==200){
  					 show_msg("操作成功", "type?method=select")
  				 }
  		});
		
	}
   //5,删除某个type
   function deleteClick(type_id) {
	if(confirm("确定要删除吗?")){
		 var url="type";
  	     var data={
  		    method :"delete",
  		    type_id:type_id
  	   };
  		$.post(url,data,function(response){
  				 var jsonObject=$.parseJSON(response);
  				 if(jsonObject.status==200){
  					 show_msg("删除成功", "type?method=select")
  				 }
  		});
	}
}
</script>
</body>

</html>