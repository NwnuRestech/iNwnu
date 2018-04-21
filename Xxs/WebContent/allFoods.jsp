<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单</title>
</head>
<body>
	<c:forEach var = "menu" items = "${menu }"><!-- ${menu.food_id} -->
		<div style="border:2px solid red;width: 200px"><div>${menu.food_name}</div> <div>${menu.food_money }</div> <div><a href="RestController?op=deleteFood&foodid=${menu.food_id }">删除</a></div> <div><a href="RestController?op=deleteFood&foodid=${menu.food_id }">修改</a></div></div>
	</c:forEach>
</body>
</html>