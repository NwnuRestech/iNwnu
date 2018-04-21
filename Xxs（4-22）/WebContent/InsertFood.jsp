<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加菜品</title>
</head>
<body>
		<form action="RestController?op=insertFood"  method="post">
			菜名:<input name="foodName" type="text"><br>
			价格:<input name="foodMoney" type="text"><br>
			介绍:<input name="foodIntroduce" type="text"><br>
			种类:<select name = "foodType">
					<c:forEach var = "allTypes" items="${allTypes }">
						<option value = "${allTypes.type_id}">${allTypes.type_name }</option>
					</c:forEach>
				</select><br>			
			<input type="submit" value="提交">
		</form>
</body>
</html>