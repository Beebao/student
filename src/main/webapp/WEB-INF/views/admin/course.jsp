<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setAttribute("APP", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程信息</title>
<script type="text/javascript" src="${APP }/js/jquery-1.12.4.min.js"></script>
<link href="${APP }/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${APP }/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" id="contentBox" style="position: relative;">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>课程列表</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row col-md-12">
		  <div class="col-md-12 col-md-offset-2 ">
			<div class="col-md-4 ">
			    <div class="input-group">
			      <input type="text" id="couId_input" class="form-control" placeholder="请输入课程编号">
			      <span class="input-group-btn">
			        <button class="btn btn-info" type="button" id="course_search">
			        <span class="glyphicon glyphicon-search"  aria-hidden="true"></span>搜索</button>
			      </span>
			    </div>
			</div>
			<div class="col-md-8">
				<button class="btn btn-success" id="course_add_modal_btn">
				<span class="glyphicon glyphicon-plus"></span>新增课程</button>
			</div>
		  </div>
		</div>
		<!-- 课程修改模态框 -->
		<div class="modal fade" id="courseUpdateModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">课程修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">课程编号</label>
							<div class="col-sm-10">
								<input type="text" name="couId" class="form-control" id="couId_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<input type="text" name="couName" class="form-control" id="couName_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学时</label>
							<div class="col-sm-10">
								<input type="text" name="couHour" class="form-control" id="couHour_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学分</label>
							<div class="col-sm-10">
								<input type="text" name="couCredit" class="form-control" id="couCredit_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">上课时间</label>
							<div class="col-sm-10">
								<input type="text" name="couTime" class="form-control" id="couTime_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">上课地点</label>
							<div class="col-sm-10">
								<input type="text" name="couRoom" class="form-control" id="couRoom_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">开设院系</label>
							<div class="col-sm-4">
								<!-- 部门提交部门ID即可 -->
								<select class="form-control" name="couDept" id="dept_update_select">
								    
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">授课教师</label>
							<div class="col-sm-4">
								<!-- 部门提交部门ID即可 -->
								<select class="form-control" name="couTeacher" id="teacher_update_select">
								    
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="course_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="course_table">
					<thead>
						<tr>
							
							<th width="10%">课程编号</th>
							<th width="20%">课程名字</th>
							<th width="5%">学时</th>
							<th width="5%">学分</th>
							<th width="10%">上课时间</th>
							<th width="10%">上课地点</th>
							<th width="15%">开设院系</th>
							<th width="10%">授课教师</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody id="course_tbody">
					
					</tbody>
				</table>
				<table class="table table-hover" id="single_course" style="display: none;">
					<thead>
						<tr>
							<th width="10%">课程编号</th>
							<th width="20%">课程名字</th>
							<th width="5%">学时</th>
							<th width="5%">学分</th>
							<th width="10%">上课时间</th>
							<th width="10%">上课地点</th>
							<th width="15%">开设院系</th>
							<th width="10%">授课教师</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody id="single_body">

					</tbody>
				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class="row" id="course_page">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area" style="position:absolute;right:-80px;bottom: 0px;width:460px;"></div>
		</div>
		<!-- 课程新增模态框 -->
		<div class="modal fade" id="courseAddModal" tabindex="-1" role="dialog">
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
						<div class="form-group">
							<label class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<input type="text" name="couName" class="form-control"
									id="couName_add_input" placeholder="课程名"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学时</label>
							<div class="col-sm-10">
								<input type="text" name="couHour" class="form-control"
									id="couHour_add_input" placeholder="学时"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学分</label>
							<div class="col-sm-10">
								<input type="text" name="couCredit" class="form-control"
									id="couCredit_add_input" placeholder="学分"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">上课时间</label>
							<div class="col-sm-10">
								<input type="text" name="couTime" class="form-control"
									id="couTime_add_input" placeholder="上课时间"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">上课地点</label>
							<div class="col-sm-10">
								<input type="text" name="couRoom" class="form-control"
									id="couRoom_add_input" placeholder="上课地点"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">开课院系</label>
							<div class="col-sm-4">
								<!-- 提交院系ID即可 -->
								<select class="form-control" name="couDept" id="dept_add_select">
								   <option selected="selected">--请选择--</option>

								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">授课教师</label>
							<div class="col-sm-4">
								<!-- 提交专业ID即可 -->
								<select class="form-control" name="couTeacher" id="tea_add_select">
                                   <option selected="selected">--请选择--</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="course_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>
		
</div>

</body>
<!-- 控制页面宽高自适应 -->
<script type="text/javascript">
	$('#contentBox').height($(window).height());
</script>
<!-- 显示界面 -->
<script type="text/javascript">
	//定义总页面  
	var totalRecord;
	//定义当前页
	var currentPage;	
	$(function () {
		to_page(1);
	})
	
	function to_page(pn) {
		$("#course_tbody").empty();
		$.ajax({
			url:"${APP}/getCourse",
			data:"pn=" + pn,
			type:"GET",
			success:function(result){
				console.log(result);
				//1、解析并显示课程数据
				build_course_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);

			}
		})
	}
	
	function build_course_table(result) {
		
		var course = result.extend.pageInfo.list;
		console.log(course)
		var str = '';
		course.forEach(function(obj,i){
			str +='<tr><td>'+obj.couId
			+'</td><td><span style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:inline-block;width:200px;" title="'+obj.couName+'">'+obj.couName
			+'</span></td><td>'+obj.couHour
			+'</td><td>'+obj.couCredit
			+'</td><td>'+obj.couTime
			+'</td><td>'+obj.couRoom
			+'</td><td>'+obj.department.deptName
			+'</td><td>'+obj.teacher.teaName
			+'</td><td><button edit-id='+obj.couId+' class="btn btn-primary edit_btn btn-xs"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+obj.couId+' class="btn btn-danger delete_btn btn-xs"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';			
		})
		$("#course_tbody").empty().append(str);
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
	//显示教师和部门信息
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
				//$("#tea_add_select").append("<option>--请选择--</option>");
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
				url:"${APP}/getTeaById/"+deptId,
				type:"GET",
				success:function(result){
					$("#tea_add_select").empty();//清空老师下面选项框里的内容
					console.log(result.extend.teacher);
					var teacher = result.extend.teacher
					$("#tea_add_select").append("<option>--请选择--</option>");
					var str='';
					teacher.forEach(function(obj,i){
						str+='<option value="'+obj.teaId+'">'+obj.teaName+'</option>'
					})
					 $("#tea_add_select").append(str);
				}
			})
		})
	}
	//三三   点击新增按钮，显示新增模态框
	$("#course_add_modal_btn").click(function() {
		//清楚表单数据
		reset_form("#courseAddModal form");	
		$("#dept_add_select").empty();
		$("#tea_add_select").empty();
		getDepts("#courseAddModal select");
		//弹出模态框
        $("#courseAddModal").modal({
				backdrop : "static"
			})
				
	})
	//点击保存，保存课程
	$("#course_save_btn").click(function () {		
		//2、发送AJAX请求保存员工
		$.ajax({
			url:"${APP}/saveCourse",
			type:"POST",
			data:$("#courseAddModal form").serialize(),
			success:function(result){
				if (result.code==100) {
					//课程保存成功
					//1、关闭模态框
					$("#courseAddModal").modal("hide");
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
		$("#teacher_update_select").empty();
		getCourse($(this).attr("edit-id"));
		//把学生传递给模态框的更新按钮
		$("#course_update_btn").attr("edit-id", $(this).attr("edit-id"));
		//进入模态框先构建下拉列表初始信息
 		$("#teacher_update_select").append("<option>--请选择--</option>");
		$("#courseUpdateModal").modal({
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
				url:"${APP}/getTeaById/"+deptId,
				type:"GET",
				success:function(result){
					//清空院系下面的专业的选项框里的内容
					$("#teacher_update_select").empty();	                
					console.log(result.extend.teacher);
 					$("#teacher_update_select").append("<option>--请选择--</option>");
					var str='';
					result.extend.teacher.forEach(function(obj,i){
						str+='<option value="'+obj.teaId+'">'+obj.teaName+'</option>'
					})
					 $("#teacher_update_select").append(str);
				}
			})
		})	 
	})
	function getCourse(couId) {
		$.ajax({
			url : "${APP}/getCourseBycouId/" + couId,
			type : "GET",
			success : function(result) {
				//console.log(result);
				var courseData = result.extend.course;
				$("#couId_update_input").val(courseData.couId);
				$("#couName_update_input").val(courseData.couName);
				$("#couHour_update_input").val(courseData.couHour);
				$("#couCredit_update_input").val(courseData.couCredit);
				$("#couTime_update_input").val(courseData.couTime);
				$("#couRoom_update_input").val(courseData.couRoom);
			}
		})
	}
	// 五五五    点击更新员工信息
	$("#course_update_btn").click(function() {
		//发送请求  保存员工数据
		var hello=$("#courseUpdateModal form").serialize();
		console.log(hello);
		$.ajax({
			url : "${APP}/saveCourse/" + $(this).attr("edit-id"),
			type : "PUT",
			data : $("#courseUpdateModal form").serialize(),
			success : function(result) {
				//alert(result.msg);
				//关闭对话框
				$("#courseUpdateModal").modal("hide");
				//回到本页面
				to_page(currentPage);
			}
		})
	})
	//六六六  删除课程
	$(document).on("click", ".delete_btn", function() {
		//确认删除会话框
		var couName = $(this).parents("tr").find("td:eq(1)").text();
		var couId = $(this).attr("del-id");
		if (confirm("确认删除【" + couName + "】课程吗？")) {
			//确认发送请求删除
			$.ajax({
				url : "${APP}/deleteCourse/" + couId,
				type : "DELETE",
				success : function(result) {
					//alert(result.msg);
					to_page(currentPage);
				}
			})
		}
	});
	$("#course_search").click(function () {
		$("#course_table").hide();
	    $("#course_page").hide();
	    $("#single_course").show();
	    $("#single_body").empty();
		var couId = $("#couId_input").val();
		console.log(couId);
		$.ajax({
			type:"GET",
			url:"${APP}/selectCourseByCouId/" + couId,
			success:function(result){
				build_condition_course(result);
			}
		})
	})
	 //构建按条件查询的学生列表
   function build_condition_course(result){
	   var course = result.extend.course;
	   var str='';
		str +='<tr><td>'+course.couId
		+'</td><td>'+course.couName
		+'</td><td>'+course.couHour
		+'</td><td>'+course.couCredit
		+'</td><td>'+course.couTime
		+'</td><td>'+course.couRoom
		+'</td><td>'+course.department.deptName
		+'</td><td>'+course.teacher.teaName
		+'</td><td><button edit-id='+course.couId+' class="btn btn-primary btn-xs edit_btn"><span class="glyphicon glyphicon-pencil"></span>修改</button><button del-id='+course.couId+' class="btn btn-danger btn-xs delete_btn"><span class="glyphicon glyphicon-trash"></span>删除</button></td></tr>';						
		$("#single_body").append(str);
   }
</script>
</html>