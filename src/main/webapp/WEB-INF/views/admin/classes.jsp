<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setAttribute("APP", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${APP }/js/jquery-1.12.4.min.js"></script>
<link href="${APP }/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${APP }/js/bootstrap.min.js"></script>
<title>班级管理</title>
</head>
<body>
<div class="container" id="contentBox" style="position: relative;">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>班级列表</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-success" id="class_add_modal_btn"><span class="glyphicon glyphicon-plus"></span>新增班级</button>
			</div>
		</div>
		<!-- 学生修改模态框 -->
		<div class="modal fade" id="classUpdateModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">班级修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">班级代码</label>
							<div class="col-sm-10">
								<input type="text" name="classId" class="form-control" id="classId_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级名称</label>
							<div class="col-sm-10">
								<input type="text" name="className" class="form-control" id="className_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">所属院系</label>
							<div class="col-sm-4">
								<!-- 部门提交部门ID即可 -->
								<select class="form-control" name="classDept" id="dept_update_select">
								    
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="class_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="class_table">
					<thead>
						<tr>							
							<th width="25%">班级代码</th>
							<th width="25%">班级名称</th>
							<th width="25%">所属院系</th>
							<th width="25%">操作</th>
						</tr>
					</thead>
					<tbody id="class_tbody">
					
					</tbody>
				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class="row" >
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area" style="position:absolute;right:-80px;bottom: 0px;width:460px;"></div>
		</div>
		<!-- 学生新增模态框 -->
		<div class="modal fade" id="classAddModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<!-- <div class="form-group">
							<label class="col-sm-2 control-label">班级代码</label>
							<div class="col-sm-10">
								<input type="text" name="classId" class="form-control"
									id="classId_add_input"><span
									class="help-block"></span>									
							</div>
						</div> -->
						<div class="form-group">
							<label class="col-sm-2 control-label">班级名称</label>
							<div class="col-sm-10">
								<input type="text" name="className" class="form-control"
									id="couHour_add_input"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">所属院系</label>
							<div class="col-sm-4">
								<!-- 提交院系ID即可 -->
								<select class="form-control" name="classDept" id="dept_add_select">
								   <option selected="selected">--请选择--</option>

								</select>
							</div>
						</div>						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="class_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>
		
</div>
<!-- 控制页面宽高自适应 -->
<script type="text/javascript">
	$('#contentBox').height($(window).height());
</script>
<script type="text/javascript">
	//定义总页面  
	var totalRecord;
	//定义当前页
	var currentPage;	
	$(function () {
		to_page(1);
	})
	
	function to_page(pn) {
		$("#class_tbody").empty();
		$.ajax({
			url:"${APP}/getClass",
			data:"pn=" + pn,
			type:"GET",
			success:function(result){
				console.log(result);
				//1、解析并显示课程数据
				build_class_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);
	
			}
		})
	}
	function build_class_table(result) {
		
		var classes = result.extend.pageInfo.list;
		console.log(classes)
		var str = '';
		classes.forEach(function(obj,i){
			str +='<tr><td>'+obj.classId
			+'</td><td><span style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:inline-block;width:200px;" title="'+obj.className+'">'+obj.className
			+'</td><td>'+obj.department.deptName
			+'</td><td><button edit-id='+obj.classId+' class="btn btn-primary edit_btn btn-xs"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+obj.classId+' class="btn btn-danger delete_btn btn-xs"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';			
		})
		$("#class_tbody").empty().append(str);
	}
	function build_page_info(result) {
		//先清空数据
		$("#page_info_area").empty();
		$("#page_info_area").append("当前第" + result.extend.pageInfo.pageNum 
								+ "页    总共"+ result.extend.pageInfo.pages 
								+ "页    总共"+ result.extend.pageInfo.total + "条记录");
		totalRecord = result.extend.pageInfo.total;
		currentPage = result.extend.pageInfo.pageNum;
	}
	function build_page_nav(result) {
		//清空
		$("#page_nav_area").empty();
		var ul = $("<ul></ul>").addClass("pagination");
	
		//构建元素
		var firstPageLi = $("<li></li>").append(
				$("<a></a>").append("首页").attr("href", "#"));
		var prePageLi = $("<li></li>").append(
				$("<a></a>").append("&laquo;"));
		if (result.extend.pageInfo.hasPreviousPage == false) {
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		} else {
			//为元素添加点击翻页的事件
			firstPageLi.click(function() {
				to_page(1);
			})
			prePageLi.click(function() {
				to_page(result.extend.pageInfo.pageNum - 1);
			})
		}
	
		var nextPageLi = $("<li></li>").append(
				$("<a></a>").append("&raquo;"));
		var lastPageLi = $("<li></li>").append(
				$("<a></a>").append("末页").attr("href", "#"));
	
		if (result.extend.pageInfo.hasNextPage == false) {
			nextPageLi.addClass("disabled");
			lastPageLi.addClass("disabled");
		} else {
			nextPageLi.click(function() {
				(result.extend.pageInfo.pageNum + 1);
			});
			lastPageLi.click(function() {
				to_page(result.extend.pageInfo.pages);
			})
		}
		//构造首页和前一页的提示
		ul.append(firstPageLi).append(prePageLi);
		//1,2,3遍历给ul中添加页码提示
		$.each(result.extend.pageInfo.navigatepageNums, function(index,
				item) {
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if (result.extend.pageInfo.pageNum == item) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				to_page(item);
			})
			ul.append(numLi);
		});
		//添加下一页和末页的提示
		ul.append(nextPageLi).append(lastPageLi);
		//把ul加入到nav元素中
		var navEle = $("<nav></nav>").append(ul);
		navEle.appendTo("#page_nav_area");
	}
	
	//重置表单
	function reset_form(ele) {
		$(ele)[0].reset();
		//清空表单样式
		$(ele).find("*").removeClass("has-error has-success");
		$(ele).find(".help-block").text("");
	}
	//显示班级和部门信息
	function getDepts(ele) {
		$("#dept_add_select").empty();
		$.ajax({				               
			url:"${APP}/depts",
			type:"GET",
			success:function(result){
				console.log(result.extend.dept);
				var dept = result.extend.dept
				//遍历动态插入院系信息
				$("#dept_add_select").append("<option>--请选择--</option>");
				//$("#class_add_select").append("<option>--请选择--</option>");
				var str='';
				console.log(dept);
				dept.forEach(function(obj,i){
					str+='<option value="'+obj.deptId+'">'+obj.deptName+'</option>'
				})
				 $("#dept_add_select").append(str);
			}
		})
	}
	//三三   点击新增按钮，显示新增模态框
	$("#class_add_modal_btn").click(function() {
		//清楚表单数据
		reset_form("#classAddModal form");	
		$("#dept_add_select").empty();
		getDepts("#classAddModal select");
		//弹出模态框
	    $("#classAddModal").modal({
				backdrop : "static"
			})
				
	})
	//点击保存，保存课程
	$("#class_save_btn").click(function () {		
		//2、发送AJAX请求保存员工
		$.ajax({
			url:"${APP}/saveClass",
			type:"POST",
			data:$("#classAddModal form").serialize(),
			success:function(result){
				if (result.code==100) {
					//课程保存成功
					//1、关闭模态框
					$("#classAddModal").modal("hide");
					//2、来到最后一页，显示保存的内容
					//发送AJAX请求，显示最后一页数据
					to_page(totalRecord);
				}else {
					alert("baocunshibai");
				}					
			}
		});
	});
	//1、我们是按钮创建之前就绑定了click，所以绑定不上
	//可以用live
	//jQuery新本没有这个方法，用on方法
	$(document).on("click", ".edit_btn", function() {
			//查出学生信息
		$("#dept_update_select").empty();
		$("#class_update_select").empty();
		getClass($(this).attr("edit-id"));
		//把学生传递给模态框的更新按钮
		$("#class_update_btn").attr("edit-id", $(this).attr("edit-id"));
		$("#classUpdateModal").modal({
			backdrop : "static"
		})
		$.ajax({				               
			url:"${APP}/depts",
			type:"GET",
			success:function(result){
				//console.log(result.extend.dept);
					$("#dept_update_select").append("<option>--请选择--</option>");
				var str='';
				result.extend.dept.forEach(function(obj,i){
					str+='<option value="'+obj.deptId+'">'+obj.deptName+'</option>'
				})
				 $("#dept_update_select").append(str);
			} 			
		})
			 
	})
	function getClass(classId) {
		$.ajax({
			url : "${APP}/getClassByclassId/" + classId,
			type : "GET",
			success : function(result) {
				console.log(result);
				var classes2 = result.extend.classes2;
				$("#classId_update_input").val(classes2.classId);
				$("#className_update_input").val(classes2.className);
			}
		})
	}
	// 五五五    点击更新学生信息
	$("#class_update_btn").click(function() {
		//发送请求  保存员工数据
		var hello=$("#classUpdateModal form").serialize();
		console.log(hello);
		$.ajax({
			url : "${APP}/saveClassByclassId/" + $(this).attr("edit-id"),
			type : "PUT",
			data : $("#classUpdateModal form").serialize(),
			success : function(result) {
				//alert(result.msg);
				//关闭对话框
				$("#classUpdateModal").modal("hide");
				//回到本页面
				to_page(currentPage);
			}
		})
	})
	//六六六  删除课程
	$(document).on("click", ".delete_btn", function() {
		//确认删除会话框
		var className = $(this).parents("tr").find("td:eq(1)").text();
		var classId = $(this).attr("del-id");
		if (confirm("确认删除【" + className + "】吗？")) {
			//确认发送请求删除
			$.ajax({
				url : "${APP}/deleteClass/" + classId,
				type : "DELETE",
				success : function(result) {
					//alert(result.msg);
					to_page(currentPage);
				}
			})
		}
	});
</script>

</body>
</html>