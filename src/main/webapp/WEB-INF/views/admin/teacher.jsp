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
<title>教师管理</title>
</head>
<body>
<div class="container" id="contentBox" style="position: relative;">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>教师列表</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row col-md-12">
			<div class="col-md-12 col-md-offset-2" >
				<div class="col-md-4 ">
			      <div class="input-group">
			        <input type="text" id="teaId_input" class="form-control" placeholder="请输入工号">
			        <span class="input-group-btn">
			          <button class="btn btn-info" type="button" id="tea_search">
			          <span class="glyphicon glyphicon-search"  aria-hidden="true"></span>搜索</button>
			        </span>
			      </div>
			    </div>
				<div class="col-md-8">
					<button class="btn btn-success" id="tea_add_modal_btn">
					<span class="glyphicon glyphicon-plus"></span>新增教师</button>
				</div>
			</div>
		</div>
		<!-- 教师修改模态框 -->
		<div class="modal fade" id="teaUpdateModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">教师修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">教师编号</label>
							<div class="col-sm-10">
								<input type="text" name="teaId" class="form-control" id="teaId_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师姓名</label>
							<div class="col-sm-10">
								<input type="text" name="teaName" class="form-control" id="teaName_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师年龄</label>
							<div class="col-sm-10">
								<input type="text" name="teaAge" class="form-control" id="teaAge_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师性别</label>
							<div class="col-sm-10">
								<input type="text" name="teaGender" class="form-control" id="teaGender_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师职称</label>
							<div class="col-sm-10">
								<input type="text" name="teaTitle" class="form-control" id="teaTitle_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">任职院系</label>
							<div class="col-sm-4">
								<!-- 部门提交部门ID即可 -->
								<select class="form-control" name="teaDept" id="dept_update_select">
								    
								</select>
							</div>
						</div>						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="tea_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="tea_table">
					<thead>
						<tr>							
							<th width="15%">教师编号</th>
							<th width="15%">教师姓名</th>
							<th width="10%">教师年龄</th>
							<th width="10%">教师性别</th>
							<th width="10%">教师职称</th>
							<th width="20%">任职院系</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody id="tea_tbody">
					
					</tbody>
				</table>
				<table class="table table-hover" id="single_teacher" style="display: none;">
					<thead>
						<tr>
							<th width="15%">教师编号</th>
							<th width="15%">教师姓名</th>
							<th width="10%">教师年龄</th>
							<th width="10%">教师性别</th>
							<th width="10%">教师职称</th>
							<th width="20%">任职院系</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody id="single_body">

					</tbody>
				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class="row" id="tea_page">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area" style="position:absolute;right:-80px;bottom: 0px;width:460px;"></div>
		</div>
		<!-- 教师新增模态框 -->
		<div class="modal fade" id="teaAddModal" tabindex="-1" role="dialog">
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
							<label class="col-sm-2 control-label">教师编号</label>
							<div class="col-sm-10">
								<input type="text" name="teaId" class="form-control"
									id="teaId_add_input" placeholder="编号"> <span
									class="help-block"></span>
							</div>
						</div> -->
						<div class="form-group">
							<label class="col-sm-2 control-label">教师姓名</label>
							<div class="col-sm-10">
								<input type="text" name="teaName" class="form-control"
									id="teaName_add_input" placeholder="姓名"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师年龄</label>
							<div class="col-sm-10">
								<input type="text" name="teaAge" class="form-control"
									id="teaAge_add_input" placeholder="年龄"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师性别</label>
							<div class="col-sm-10">
								<input type="text" name="teaGender" class="form-control"
									id="teaGender_add_input" placeholder="性别"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">教师职称</label>
							<div class="col-sm-10">
								<input type="text" name="teaTitle" class="form-control"
									id="teaTitle_add_input" placeholder="职称"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">任职院系</label>
							<div class="col-sm-4">
								<!-- 提交院系ID即可 -->
								<select class="form-control" name="teaDept" id="dept_add_select">
								   <option selected="selected">--请选择--</option>

								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="tea_save_btn">保存</button>
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
		$("#tea_tbody").empty();
		$.ajax({
			url:"${APP}/getTeacher",
			data:"pn=" + pn,
			type:"GET",
			success:function(result){
				console.log(result);
				//1、解析并显示课程数据
				build_tea_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);
	
			}
		})
	}
	function build_tea_table(result) {
		
		var tea = result.extend.pageInfo.list;
		console.log(tea)
		var str = '';
		tea.forEach(function(obj,i){
			str +='<tr><td>'+obj.teaId
			+'</td><td><span style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:inline-block;width:200px;" title="'+obj.teaName+'">'+obj.teaName
			+'</span></td><td>'+obj.teaAge
			+'</td><td>'+obj.teaGender
			+'</td><td>'+obj.teaTitle
			+'</td><td>'+obj.department.deptName
			+'</td><td><button edit-id='+obj.teaId+' class="btn btn-primary edit_btn btn-xs"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+obj.teaId+' class="btn btn-danger delete_btn btn-xs"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';			
		})
		$("#tea_tbody").empty().append(str);
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
		/* $("#dept_add_select").change(function(){
			var deptId=$("#dept_add_select").val();
			console.log(deptId);
			$.ajax({				               
				url:"${APP}/getClassById/"+deptId,
				type:"GET",
				success:function(result){
					$("#class_add_select").empty();//清空下面选项框里的内容
					console.log(result.extend.classes);
					var classes = result.extend.classes
					$("#class_add_select").append("<option>--请选择--</option>");
					var str='';
					classes.forEach(function(obj,i){
						str+='<option value="'+obj.classId+'">'+obj.className+'</option>'
					})
					 $("#class_add_select").append(str);
				}
			})
		}) */
	}
	//三三   点击新增按钮，显示新增模态框
	$("#tea_add_modal_btn").click(function() {
		//清楚表单数据
		reset_form("#teaAddModal form");	
		$("#dept_add_select").empty();
		getDepts("#teaAddModal select");
		//弹出模态框
	    $("#teaAddModal").modal({
				backdrop : "static"
			})
				
	})
	//点击保存，保存课程
	$("#tea_save_btn").click(function () {		
		//2、发送AJAX请求保存员工
		$.ajax({
			url:"${APP}/saveTeacher",
			type:"POST",
			data:$("#teaAddModal form").serialize(),
			success:function(result){
				if (result.code==100) {
					//课程保存成功
					//1、关闭模态框
					$("#teaAddModal").modal("hide");
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
		//$("#class_update_select").empty();
		getTea($(this).attr("edit-id"));
		//把学生传递给模态框的更新按钮
		$("#tea_update_btn").attr("edit-id", $(this).attr("edit-id"));
		//进入模态框先构建下拉列表初始信息
 		//$("#class_update_select").append("<option>--请选择--</option>");
		$("#teaUpdateModal").modal({
			backdrop : "static"
		})
		$.ajax({				               
			url:"${APP}/depts",
			type:"GET",
			success:function(result){
				console.log(result.extend.dept);
 				$("#dept_update_select").append("<option>--请选择--</option>");
				var str='';
				result.extend.dept.forEach(function(obj,i){
					str+='<option value="'+obj.deptId+'">'+obj.deptName+'</option>'
				})
				 $("#dept_update_select").append(str);
			} 			
		})
		//从下拉列表中，点击院系信息直接查出院系所对应的专业
		/* $("#dept_update_select").change(function(){
			//获取院系选项框里的院系ID值
			var deptId=$("#dept_update_select").val();
			console.log(deptId);
			$.ajax({				               
				url:"${APP}/getClassById/"+deptId,
				type:"GET",
				success:function(result){
					//清空院系下面的专业的选项框里的内容
					$("#class_update_select").empty();	                
					console.log(result.extend.teacher);
 					$("#class_update_select").append("<option>--请选择--</option>");
					var str='';
					result.extend.classes.forEach(function(obj,i){
						str+='<option value="'+obj.classId+'">'+obj.className+'</option>'
					})
					 $("#class_update_select").append(str);
				}
			})
		}) */	 
	})
	function getTea(teaId) {
		$.ajax({
			url : "${APP}/getTeaByteaId/" + teaId,
			type : "GET",
			success : function(result) {
				//console.log(result);
				var teacher = result.extend.teacher;
				$("#teaId_update_input").val(teacher.teaId);
				$("#teaName_update_input").val(teacher.teaName);
				$("#teaAge_update_input").val(teacher.teaAge);
				$("#teaGender_update_input").val(teacher.teaGender);
				$("#teaTitle_update_input").val(teacher.teaTitle);
			}
		})
	}
	// 五五五    点击更新教师信息
	$("#tea_update_btn").click(function() {
		//发送请求  保存员工数据
		var hello=$("#teaUpdateModal form").serialize();
		console.log(hello);
		$.ajax({
			url : "${APP}/saveTeacherByteaId/" + $(this).attr("edit-id"),
			type : "PUT",
			data : $("#teaUpdateModal form").serialize(),
			success : function(result) {
				//alert(result.msg);
				//关闭对话框
				$("#teaUpdateModal").modal("hide");
				//回到本页面
				to_page(currentPage);
			}
		})
	})
	//六六六  删除教师
	$(document).on("click", ".delete_btn", function() {
		//确认删除会话框
		var teaName = $(this).parents("tr").find("td:eq(1)").text();
		var teaId = $(this).attr("del-id");
		if (confirm("确认删除【" + teaName + "】吗？")) {
			//确认发送请求删除
			$.ajax({
				url : "${APP}/deleteTeacher/" + teaId,
				type : "DELETE",
				success : function(result) {
					//alert(result.msg);
					to_page(currentPage);
				}
			})
		}
	});
	$("#tea_search").click(function () {
		$("#tea_table").hide();
	    $("#tea_page").hide();
	    $("#single_teacher").show();
	    $("#single_body").empty();
		var teaId = $("#teaId_input").val();
		$.ajax({
			type:"GET",
			url:"${APP}/selectTeaByteaId/" + teaId,
			success:function(result){
				build_condition_teacher(result);
			}
		})
	})
	 //构建按条件查询的教师列表
   function build_condition_teacher(result){
	   var teacher = result.extend.teacher;
	   var str='';
		str +='<tr><td>'+teacher.teaId
		+'</td><td>'+teacher.teaName
		+'</td><td>'+teacher.teaAge
		+'</td><td>'+teacher.teaGender
		+'</td><td>'+teacher.teaTitle
		+'</td><td>'+teacher.department.deptName
		+'</td><td><button edit-id='+teacher.teaId+' class="btn btn-primary btn-xs edit_btn"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+teacher.teaId+' class="btn btn-danger btn-xs delete_btn"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';						
		$("#single_body").append(str);
   }
</script>
</body>
</html>