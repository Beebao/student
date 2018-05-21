<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		    <label  class="col-sm-2 control-label">学号</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="stuId">xxxxx</p>
			  </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="stuName">xxxxx</p>
			  </div>
		    </div>
		  </div>	
		  <div class="form-group">
		    <label class="col-sm-2 control-label">年龄</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="stuAge">xxxxx</p>
			  </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">性别</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="stuGender">xxxxx</p>
			  </div>
		    </div>
		  </div>	
		  <div class="form-group">
		    <label class="col-sm-2 control-label">院系</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="stuDept">xxxxx</p>
			  </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">班级</label>
		    <div class="col-sm-5">
		      <div class="col-sm-10">
				<p class="form-control-static" id="stuClasses">xxxxx</p>
			  </div>
		    </div>
		  </div>  
		</form>			
	</div>
</body>
<script type="text/javascript">   
    $(function () {
    	var stuId = $("#user").html();
    	console.log(stuId);
    	$.ajax({
    		url:"${APP}/getStudent/"+stuId,
    		type:"GET",
    		success:function(result){
    			var student = result.extend.student;
    			console.log(student);
    			$("#stuId").text(student.stuId);
    			$("#stuName").text(student.stuName);
    			$("#stuAge").text(student.stuAge);
    			$("#stuGender").text(student.stuGender);
    			$("#stuDept").text(student.department.deptName);
    			$("#stuClasses").text(student.classes.className);
    		}
    	})
	})
</script>
</html>