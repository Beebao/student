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
<title>课表查询</title>
</head>
<body>
<!-- 搭建显示页面 -->
	<div id="user" style="display: none;">${sessionScope.user}</div>
	<div class="container ">
		<!-- 标题 -->
		<div class="row ">
			<div class="col-md-12">
				<h1>个人授课信息</h1>
			</div>
		</div>
		<!-- 表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="curriculum_table">
					<thead>
						<tr>
							<th>课程名称</th>
							<th>上课时间</th>
							<th>上课地点</th>
						</tr>
					</thead>
					<tbody id="curriculum_tbody">

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function () {
		var couTeacher = $("#user").html();
		console.log(couTeacher);
		$.ajax({
			url:"${APP}/selectCurriculum/"+couTeacher,
			type:"GET",
			success:function(result){
				build_curriculum_table(result);
				
			}
		})
	})
	function build_curriculum_table(result) {
		
		var curriculum = result.extend.curriculum;
		console.log(curriculum);
		var str = '';
		curriculum.forEach(function(obj,i){
			str +='<tr><td>'+obj.couName
			+'</td><td>'+obj.couTime
			+'</td><td>'+obj.couRoom
			+'</td></tr>';			
		})
		$("#curriculum_tbody").empty().append(str);
	}
</script>
</html>