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
<title>个人信息</title>
</head>
<body>
<div id="user" style="display: none;">${sessionScope.user}</div>
<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>个人信息</h1>
			</div>
		</div>
		
		<form class="form-horizontal">
		  <div class="form-group">
		    <label  class="col-sm-2 control-label">工号</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="teaId">xxxxx</p>
			  </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="teaName">xxxxx</p>
			  </div>
		    </div>
		  </div>	
		  <div class="form-group">
		    <label class="col-sm-2 control-label">年龄</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="teaAge">xxxxx</p>
			  </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">性别</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="teaGender">xxxxx</p>
			  </div>
		    </div>
		  </div>	
		  <div class="form-group">
		    <label class="col-sm-2 control-label">院系</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="teaDept">xxxxx</p>
			  </div>
		    </div>
		  </div>
		</form>			
	</div>
</body>
<script type="text/javascript">
    
    $(function () {
    	var teaId = $("#user").html();
    	console.log(teaId);
    	$.ajax({
    		url:"${APP}/getTeacher/"+teaId,
    		type:"GET",
    		success:function(result){
    			var teacher = result.extend.teacher;
    			console.log(teacher);
    			$("#teaId").text(teacher.teaId);
    			$("#teaName").text(teacher.teaName);
    			$("#teaAge").text(teacher.teaAge);
    			$("#teaGender").text(teacher.teaGender);
    			$("#teaDept").text(teacher.department.deptName);
    		}
    	})
	})
</script>
</html>