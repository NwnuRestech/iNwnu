<%@ page language="java" contentType="text/html; charset=UTF-8"0
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>美食推荐</title><!-- 推荐十个热度最高的食物 ，若无热度，则随机推荐-->
</head>
<body>
	<forEach var = "" items = "">
		<div style="border:2px solid red; width: 200px; height: 200px">
			<div style="border:2px solid #000000; width: 96px; height: 130px">食物图片</div>
			<div style="border:2px solid red; width: 96px; height: 17px">食物名称</div>
			<div style="border:2px solid red; width: 96px; height: 17px">食物价格</div>
			<div style="border:2px solid red; width: 96px; height: 17px">所属商铺</div>
		</div>
	</forEach>
</body>
</html>