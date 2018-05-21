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
<title>成绩录入</title>
</head>
<body>
	<!-- 搭建显示页面 -->
	<div id="user" style="display: none;">${sessionScope.user}</div>
	<div class="container ">
		<!-- 标题 -->
		<div class="row ">
			<div class="col-md-12">
				<h1>学生成绩录入</h1>
			</div>
		</div>
		<!-- 表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="score_table">
					<thead>
						<tr>
							<th>学生姓名</th>
							<th>学生学号</th>
							<th>课程名</th>
							<th>授课教师</th>
							<th>成绩</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="score_tbody">

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="modal fade" id="scoreUpdateModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">成绩录入</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="score_studentName">xxxxx</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">学生学号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="score_studentId">xxxxx</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="score_couName">xxxxx</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">授课教师</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="score_teaName">xxxxx</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">成绩</label>
							<div class="col-sm-2">
								<input class="form-control" id="score_value" placeholder="分数">
								<span class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="score_update_btn">录入</button>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var scoreTea = $("#user").html();
	$(function () {
		selectStudentScore(scoreTea);
	})
	function selectStudentScore(scoreTea) {
		//var scoreTea = $("#user").html();
		$("#score_tbody").empty();
		$.ajax({
			url:"${APP}/insertScore",
			type:"GET",
			data:"scoreTea="+scoreTea,
			success:function(result){				
				build_score_table(result);
				console.log(result);
			}
		})
	}
	function build_score_table(result) {
		
		var score = result.extend.score;
		console.log(score)
		var str = '';
		score.forEach(function(obj,i){
			str +='<tr><td>'+obj.student.stuName
			+'</td><td>'+obj.scoreStu
			+'</td><td>'+obj.course.couName
			+'</td><td>'+obj.teacher.teaName
			+'</td><td>'+obj.scoreValue
			+'</td><td><button edit-id='+obj.scoreStu+' scoreCou='+obj.scoreCou+' class="btn btn-info edit_btn btn-xs"><span class="glyphicon glyphicon-ok"></span>成绩录入</button></td></tr>';			
		})
		$("#score_tbody").empty().append(str);
	}
	$(document).on("click", ".edit_btn", function() {
		//查出学生信息
		$("#score_update_select").empty();
		var scoreStu= $(this).attr("edit-id");
		var scoreCou = $(this).attr("scoreCou");
		console.log(scoreStu);
		console.log(scoreCou);
		//把学生传递给模态框的更新按钮
		$("#score_update_btn").attr("edit-id", $(this).attr("edit-id"));
		$("#score_update_btn").attr("scoreCou", $(this).attr("scoreCou"));
		$("#scoreUpdateModal").modal({
			backdrop : "static"
		})
		$.ajax({
			url:"${APP}/selectScoreByStuIdTeaId",
			data:{scoreStu:scoreStu,scoreCou:scoreCou},
			success:function(result){
				var score = result.extend.scoreById;
				$("#score_studentName").text(score.student.stuName)
				$("#score_studentId").text(score.scoreStu)
				$("#score_couName").text(score.course.couName)
				$("#score_teaName").text(score.teacher.teaName)
				$("#score_value").val(score.scoreValue);
				
			}
		})
	})
	$("#score_update_btn").click(function () {
		$("#score_value").empty();
		var scoreStu= $(this).attr("edit-id");
		var scoreCou = $(this).attr("scoreCou");
		var scoreValue = $("#score_value").val();
		console.log(scoreStu);
		console.log(scoreCou);
		console.log(scoreValue);
		$.ajax({
			url:"${APP}/insertScoreByStu",
			data:{scoreStu:scoreStu,scoreCou:scoreCou,scoreValue:scoreValue},
			type:"PUT",
			success:function(result){
				$("#scoreUpdateModal").modal("hide");
				selectStudentScore(scoreTea);
			}
		})
	})
	
</script>
</html>