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
				<table class="table table-hover" id="curriculum_table">
					<thead>
						<tr>							
							<th width="30%">课程名字</th>
							<th width="15%">上课时间</th>
							<th width="15%">上课地点</th>
							<th width="15%">操作</th>
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
		var chooseStu = $("#user").text();
		$.ajax({
			url:"${APP}/curriculum/"+chooseStu,			
			type:"GET",
			success:function(result){
				build_curriculum_table(result);	
			}
		})
	})
	function build_curriculum_table(result) {
		var curriculum = result.extend.curriculum;
		var str = '';
		curriculum.forEach(function(obj,i){
			str +='<tr><td>'+obj.course.couName
			+'</td><td>'+obj.course.couTime
			+'</td><td>'+obj.course.couRoom
			+'</td><td><button edit-id='+obj.id+' class="btn btn-info edit_btn btn-xs"><span class="glyphicon glyphicon-remove"></span>取消选课</button></td></tr>';			
		})
		$("#curriculum_tbody").empty().append(str);
	}
	$(document).on("click", ".edit_btn", function() {
		//确认删除会话框
		var courseName = $(this).parents("tr").find("td:eq(0)").text();
		var id = $(this).attr("edit-id");
		if (confirm("确认取消【" + courseName + "】这门课程吗？")) {
			//确认发送请求删除
			$.ajax({
				url : "${APP}/cancleChoose/" + id,
				type : "DELETE",
				success : function(result) {
					alert("取消成功,请刷新页面");										
				}
			})
		}
	});
</script>
</html>