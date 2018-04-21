<%@page import="com.mysql.jdbc.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1,maximum-scale=1">
		<title>登录/注册</title>
		<link rel="stylesheet" type="text/css" href="css/common.css">
		<link rel="stylesheet" type="text/css" href="css/login.css">
		<script src="js/jquery-1.10.2.js"></script>
	</head>
	<body>
	<%--读取cookie --%>
	<%
		String name = "";
		String password = "";
		try{
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(int i = 0; i < cookies.length; i++){
					//cookies的名字为xxs_login
					if(cookies[i].getName().equals("xxs_login")){
						String values = cookies[i].getValue();
						if(!StringUtils.isNullOrEmpty(values)){
							String[] elements = values.split("-");
							//获取账户名或者密码,elements[0]为账户名，password为密码
							if(!StringUtils.isNullOrEmpty(elements[0])){
								name = elements[0];
							}
							if(!StringUtils.isNullOrEmpty(elements[1])){
								password = elements[1];
							}
						}
					}
					
				}
			}
		}catch(Exception e){
		}
	
	%>
		<div align="center" >
			<div style="margin-left: -320px;">
				<a href="#"><img src="images/arrow_back.png" height="4%" width="4%" ></a>
			</div>
			<div style="">
				<img src="images/nwnu.jpg" height="25%" width="25%">
				<p>学生餐饮文化中心</p>
			</div>
		</div>
		<div class="login_cont">
			<div class="login_nav">
				<div class="nav_slider">
					<a href="#" class="signup ">注册</a>
					<a href="#" class="signin focus">登录</a>
				</div>
			</div>
			<div class="input_signup">
				<form action="RegController?op=reg" method="post">
					<input class="input" id="user_id" name="stu_id" type="text" aria-label="学号/工号" placeholder="学号/工号">
					<div class="hint">请填写符合格式的学号/工号</div>
					<input class="input" id="user_name" name="stu_name" type="text" aria-label="姓名" placeholder="姓名">
					<div class="hint">请填写符合格式的姓名</div>
					<input class="input" id="user_nickname" name="stu_nickname" type="text" aria-label="昵称" placeholder="昵称">
					<div class="hint">请填写符合格式的昵称</div>
					<input class="input" id="user_tel" name="stu_tel" type="text" class="account" aria-label="手机号" placeholder="手机号">
					<div class="hint">请填写手机号</div>
					<input class="input" id="password" name="stu_password" type="password" aria-label="密码" placeholder="密码（不少于 6 位）">
					<div class="hint">请填写符合格式的密码</div>
					<input class="input" id="repassword" type="password" aria-label="密码" placeholder="再次输入密码">
					<div class="hint">请再次输入密码</div>
					<input type="submit" id="submit" class="button" name="button" value="注册">
				</form>
			</div>
			
			<div class="input_signin active">
				<form action="LogController?op=login" method="post">
					<input class="input" id="login_user_id" value="<%=name %>"  name="stu_id" type="text" aria-label="学号/工号" placeholder="学号/工号">
					<div class="hint">请输入学号/工号</div>
					<input class="input" id="login_password"  value="<%=password %>" name="stu_password" type="password" aria-label="密码" placeholder="密码">
					<div class="hint">请输入密码</div>
					<input type="submit" id="button" class="button" name="button" value="登录">
					<div class="forget">
						<a href="#">忘记密码？</a>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript" src="js/login.js"></script>
		<script type="text/javascript" src="js/form.js"></script> 
		<script type="text/javascript" src="js/config.js"></script> 
		<script type="text/javascript" src="js/login_ajax.js"></script>
	</body>
</html>