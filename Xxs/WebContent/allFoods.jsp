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
<title>菜单</title>
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
	          <th>食物名称</th>
	          <th>价钱</th>
	          <th>修改</th>
	          <th>删除</th>
	        </tr>
	      </thead>
		    <tbody class="table table-striped table-bordered">
				<c:forEach var = "menu" items = "${menu }"><!-- ${menu.food_id} -->
					<tr>
					  <td >${menu.food_name}</td>
					  <td >${menu.food_money }</td>
					  <td>
						<a href="RestController?op=updateFoodInfo&foodid=${menu.food_id }" target="_blank">
							<button type="button" class="btn btn-info">修改</button>
						</a>
					  </td>
					  <td>
					  	<a href="RestController?op=deleteFood&foodid=${menu.food_id }" target="_blank">
							<button type="button" class="btn btn-danger">删除</button>
						</a>			
					  </td>
					</tr>
				</c:forEach>
			</tbody>
	</table>
</div>
</body>
</html>