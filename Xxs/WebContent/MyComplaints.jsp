<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的投诉</title>
<style>
		@media only screen and (max-width: 500px) {
		   table{
			 font-size:1.5em;
		   }
		   .btn{
		   	font-size:0.8em; 
		   }
		}
</style>	
</head>
<body>
<div class = "container col-xs-12 col-md-6 col-md-offset-3"">
	<table class="table table-hover">
		<thead >
	        <tr>
	          <th>投诉商铺</th>
	          <th>原因</th>
	          <th>投诉时间</th>
	        </tr>
	      </thead>
		    <tbody class="table table-striped table-bordered">
				<c:forEach var = "allcoms" items = "${allcoms }"><!-- ${menu.food_id} -->
					<tr>
					  <td>${allcoms.rest_id }</td><!-- ${restnames}商铺的名字 -->
					  <td>${allcoms.comp_event}</td>
					  <td><fmt:formatDate value="${allcoms.comp_time }" pattern="yyyy年MM月dd日HH点mm分" /></td>
					</tr>
				</c:forEach>
			</tbody>
	</table>
</div>
</body>
</html>