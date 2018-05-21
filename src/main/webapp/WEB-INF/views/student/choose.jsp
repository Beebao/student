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
<title>选课页面</title>
</head>
<body>
<div id="user" style="display: none;">${sessionScope.user}</div>
<div class="container" id="contentBox" style="position: relative;">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>课程列表</h1>
			</div>
		</div>		
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="course_table">
					<thead>
						<tr>
							
							<th width="10%">课程编号</th>
							<th width="30%">课程名字</th>
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
			</div>
		</div>							
</div>
</body>
<script type="text/javascript">	
	$(function () {
		$.ajax({
			url:"${APP}/getAllCourse",			
			type:"GET",
			success:function(result){
				console.log(result);
				build_course_table(result);	
			}
		})
	})
	
	function build_course_table(result) {
		
		var course = result.extend.course;
		console.log(course)
		var str = '';
		course.forEach(function(obj,i){
			str +='<tr><td>'+obj.couId
			+'</td><td>'+obj.couName
			+'</td><td>'+obj.couHour
			+'</td><td>'+obj.couCredit
			+'</td><td>'+obj.couTime
			+'</td><td>'+obj.couRoom
			+'</td><td>'+obj.department.deptName
			+'</td><td>'+obj.teacher.teaName
			+'</td><td><button edit-id='+obj.couId+' class="btn btn-info edit_btn btn-xs"><span class="glyphicon glyphicon-ok"></span>选课</button></td></tr>';			
		})
		$("#course_tbody").empty().append(str);
	}
	$(document).on("click", ".edit_btn", function(){
		var couId = $(this).attr("edit-id");
		var stuId = $("#user").text();
		chooseCourse(couId,stuId);
		
	})
	function chooseCourse(couId,stuId) {
		$.ajax({
			url:"${APP}/choose",
			data:{couId:couId,stuId:stuId},
			type:"GET",
			success:function(result){
				console.log(result);
					alert("选课成功");
				
			}
		})
	}
</script>
</html>