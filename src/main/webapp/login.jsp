<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("APP", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
<link href="css/style1.css" rel="stylesheet" />
<script type="text/javascript">
	window.onload = function() {
		if (window.parent != window) {
			window.parent.location.href = "${APP}/login.jsp";
		}
	}
</script>
</head>
<body>
	<div class="main">
		<div class="login">
			<h1>学生信息管理系统</h1>
			<div class="inset">
				<!--start-main-->
				<form action="login" method="post">
					<div>
						<h2>管理员登录</h2>
						<span><label>用户名</label></span> <span><input type="text"
							class="textbox" name="username" placeholder="用户名"></span>
					</div>
					<div>
						<span><label>密码</label></span> <span><input type="password"
							class="password" name="password" placeholder="密码"></span>
					</div>
					<div class="sign">
						<input type="submit" value="登录" class="submit" />
					</div>
				</form>
			</div>

		</div>
		<!--//end-main-->
	</div>



</body>
</html>