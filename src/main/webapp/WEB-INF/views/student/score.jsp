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
<title>成绩查询</title>
</head>
<body>
	<div id="user" style="display: none;">${sessionScope.user}</div>
	<div class="container" id="contentBox" style="position: relative;">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>成绩列表</h1>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="score_table">
					<thead>
						<tr>							
							<th width="10%">学号</th>
							<th width="30%">课程名</th>
							<th width="10%">开课院系</th>
							<th width="10%">授课教师</th>
							<th width="10%">学时</th>
							<th width="10%">学分</th>
							<th width="10%">学年</th>
							<th width="5%">学期</th>
							<th width="5%">分数</th>
						</tr>
					</thead>
					<tbody id="score_tbody">
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$('#contentBox').height($(window).height());
</script>
<script type="text/javascript">
    $(function () {
    	var scoreStu = $("#user").html();
    	console.log(scoreStu);
		$.ajax({
			url:"${APP}/getScore/"+scoreStu,
			type:"GET",
			success:function(result){
				build_score_table(result);
			}
		})
	})
	function build_score_table(result) {
		
		var score = result.extend.score;
		console.log(score)
		var str = '';
		score.forEach(function(obj,i){
			str +='<tr><td>'+obj.student.stuId
			+'</td><td>'+obj.course.couName
			+'</td><td>'+obj.department.deptName
			+'</td><td>'+obj.teacher.teaName
			+'</td><td>'+obj.course.couHour
			+'</td><td>'+obj.course.couCredit
			+'</td><td>'+obj.scoreYear
			+'</td><td>'+obj.scoreTerm
			+'</td><td>'+obj.scoreValue
			+'</td></tr>';			
		})
		$("#score_tbody").empty().append(str);
	}
</script>
</html>