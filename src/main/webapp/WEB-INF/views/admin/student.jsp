<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setAttribute("APP", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
<script type="text/javascript" src="${APP }/js/jquery-1.12.4.min.js"></script>
<link href="${APP }/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${APP }/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" id="contentBox" style="position: relative;">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>学生列表</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row col-md-12">
		  <div class="col-md-12 col-md-offset-2 ">
			<div class="col-md-4 ">
			    <div class="input-group">
			      <input type="text" id="stuId_input" class="form-control" placeholder="请输入学号">
			      <span class="input-group-btn">
			        <button class="btn btn-info" type="button" id="student_search">
			        <span class="glyphicon glyphicon-search"  aria-hidden="true"></span>搜索</button>
			      </span>
			    </div>
			</div>
			<div class="col-md-8">
				<button class="btn btn-success" id="stu_add_modal_btn">
				<span class="glyphicon glyphicon-plus"></span>新增学生</button>
			</div>
		  </div>
		</div>
		<!-- 学生修改模态框 -->
		<div class="modal fade" id="stuUpdateModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">学生修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">学生学号</label>
							<div class="col-sm-10">
								<input type="text" name="stuId" class="form-control" id="stuId_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-10">
								<input type="text" name="stuName" class="form-control" id="stuName_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-10">
								<input type="text" name="stuAge" class="form-control" id="stuAge_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<input type="text" name="stuGender" class="form-control" id="stuGender_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">院系</label>
							<div class="col-sm-4">
								<!-- 部门提交部门ID即可 -->
								<select class="form-control" name="stuDept" id="dept_update_select">
								    
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级</label>
							<div class="col-sm-4">
								<!-- 部门提交部门ID即可 -->
								<select class="form-control" name="stuClasses" id="class_update_select">
								    
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="stu_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="stu_table">
					<thead>
						<tr>							
							<th width="10%">学号</th>
							<th width="10%">姓名</th>
							<th width="10%">年龄</th>
							<th width="10%">性别</th>
							<th width="20%">院系</th>
							<th width="20%">班级</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody id="stu_tbody">
					
					</tbody>
				</table>
				<table class="table table-hover" id="single_student" style="display: none;">
					<thead>
						<tr>
							<th width="10%">学号</th>
							<th width="10%">姓名</th>
							<th width="10%">年龄</th>
							<th width="10%">性别</th>
							<th width="20%">院系</th>
							<th width="20%">班级</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody id="single_body">

					</tbody>
				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class="row" id="stu_page">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area" style="position:absolute;right:-80px;bottom: 0px;width:460px;"></div>
		</div>
		<!-- 学生新增模态框 -->
		<div class="modal fade" id="stuAddModal" tabindex="-1" role="dialog">
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
							<label class="col-sm-2 control-label">学号</label>
							<div class="col-sm-10">
								<input type="text" name="stuId" class="form-control" id="stuId_add_input">
								<span class="help-block"></span>
							</div>
						</div> -->
						<div class="form-group">
							<label class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" name="stuName" class="form-control"
									id="couHour_add_input" placeholder="姓名"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-10">
								<input type="text" name="stuAge" class="form-control"
									id="couCredit_add_input" placeholder="年龄"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<input type="text" name="stuGender" class="form-control"
									id="couTime_add_input" placeholder="性别"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">院系</label>
							<div class="col-sm-4">
								<!-- 提交院系ID即可 -->
								<select class="form-control" name="stuDept" id="dept_add_select">
								   <option selected="selected">--请选择--</option>

								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">班级</label>
							<div class="col-sm-4">
								<!-- 提交专业ID即可 -->
								<select class="form-control" name="stuClasses" id="class_add_select">
                                   <option selected="selected">--请选择--</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="stu_save_btn">保存</button>
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
	//校验学生学号是否存在
	$("#stuId_add_input").change(function () {
		var stuId = this.value;
		$.ajax({
			url:"${APP}/checkBystuId",
			data:stuId,
			type:"POST",
			success:function(result){
				console.log(result);
				if(result.code == 100){
					$("#stuId_add_input").parent().addClass("has-error");
					$("#stuId_add_input").next("span").text("该学号已经存在");
				}else if(result.extend.student.stuId == null) {
					$("#stuId_add_input").parent().addClass("has-success");
					$("#stuId_add_input").next("span").text("该学号不存在，可以添加");
				}
			}
		})
	})
	//定义总页面  
	var totalRecord;
	//定义当前页
	var currentPage;	
	$(function () {
		to_page(1);
	})	
	function to_page(pn) {
		$("#stu_tbody").empty();
		$.ajax({
			url:"${APP}/getStudent",
			data:"pn=" + pn,
			type:"GET",
			success:function(result){
				console.log(result);
				//1、解析并显示课程数据
				build_stu_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);	
			}
		})
	}
	function build_stu_table(result) {
		
		var stu = result.extend.pageInfo.list;
		console.log(stu)
		var str = '';
		stu.forEach(function(obj,i){
			str +='<tr><td>'+obj.stuId
			+'</td><td><span style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:inline-block;width:200px;" title="'+obj.stuName+'">'+obj.stuName
			+'</span></td><td>'+obj.stuAge
			+'</td><td>'+obj.stuGender
			+'</td><td>'+obj.department.deptName
			+'</td><td>'+obj.classes.className
			+'</td><td><button edit-id='+obj.stuId+' class="btn btn-primary edit_btn btn-xs"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+obj.stuId+' class="btn btn-danger delete_btn btn-xs"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';			
		})
		$("#stu_tbody").empty().append(str);
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
		$("#dept_add_select").change(function(){
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
		})
	}
	//三三   点击新增按钮，显示新增模态框
	$("#stu_add_modal_btn").click(function() {
		//清楚表单数据
		reset_form("#stuAddModal form");	
		$("#dept_add_select").empty();
		$("#class_add_select").empty();
		getDepts("#stuAddModal select");
		//弹出模态框
        $("#stuAddModal").modal({
				backdrop : "static"
			})
				
	})
	//点击保存，保存学生
	$("#stu_save_btn").click(function () {		
		//2、发送AJAX请求保存学生
		$.ajax({
			url:"${APP}/saveStudent",
			type:"POST",
			data:$("#stuAddModal form").serialize(),
			success:function(result){
				if (result.code==100) {
					//课程保存成功
					//1、关闭模态框
					$("#stuAddModal").modal("hide");
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
		getStu($(this).attr("edit-id"));
		//把学生传递给模态框的更新按钮
		$("#stu_update_btn").attr("edit-id", $(this).attr("edit-id"));
		//进入模态框先构建下拉列表初始信息
 		$("#class_update_select").append("<option>--请选择--</option>");
		$("#stuUpdateModal").modal({
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
		$("#dept_update_select").change(function(){
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
		})	 
	})
	function getStu(stuId) {
		$.ajax({
			url : "${APP}/getStuBystuId/" + stuId,
			type : "GET",
			success : function(result) {
				//console.log(result);
				var student = result.extend.student;
				$("#stuId_update_input").val(student.stuId);
				$("#stuName_update_input").val(student.stuName);
				$("#stuAge_update_input").val(student.stuAge);
				$("#stuGender_update_input").val(student.stuGender);
			}
		})
	}
	// 五五五    点击更新学生信息
	$("#stu_update_btn").click(function() {
		var hello=$("#stuUpdateModal form").serialize();
		console.log(hello);
		$.ajax({
			url : "${APP}/saveStudentBystuId/" + $(this).attr("edit-id"),
			type : "PUT",
			data : $("#stuUpdateModal form").serialize(),
			success : function(result) {
				$("#stuUpdateModal").modal("hide");
				to_page(currentPage);
			}
		})
	})
	//六六六  删除课程
	$(document).on("click", ".delete_btn", function() {
		//确认删除会话框
		var stuName = $(this).parents("tr").find("td:eq(1)").text();
		var stuId = $(this).attr("del-id");
		if (confirm("确认删除【" + stuName + "】吗？")) {
			//确认发送请求删除
			$.ajax({
				url : "${APP}/deleteStudent/" + stuId,
				type : "DELETE",
				success : function(result) {
					//alert(result.msg);
					to_page(currentPage);
				}
			})
		}
	});
	$("#student_search").click(function () {
		$("#stu_table").hide();
	    $("#stu_page").hide();
	    $("#single_student").show();
	    $("#single_body").empty();
		var stuId = $("#stuId_input").val();
		console.log(stuId);
		$.ajax({
			type:"GET",
			url:"${APP}/selectStuBystuId/" + stuId,
			success:function(result){

				build_condition_student(result);
			}
		})
	})
	 //构建按条件查询的学生列表
   function build_condition_student(result){
	   var student = result.extend.student;
	   var str='';
		str +='<tr><td>'+student.stuId
		+'</td><td>'+student.stuName
		+'</td><td>'+student.stuAge
		+'</td><td>'+student.stuGender
		+'</td><td>'+student.department.deptName
		+'</td><td>'+student.classes.className
		+'</td><td><button edit-id='+student.stuId+' class="btn btn-primary btn-xs edit_btn"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+student.stuId+' class="btn btn-danger btn-xs delete_btn"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';						
		$("#single_body").append(str);
   }
</script>
</body>
</html>