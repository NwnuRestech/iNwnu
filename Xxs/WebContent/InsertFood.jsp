<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
	<title>添加菜品</title>
	<style>	
		@media only screen and (max-width: 500px) {
		   label{
			font-size:2em;
			}
			.btn {
				font-size:2em;
			}
			.form-control{
			    height: 2em ;
			}
			input.form-control{
				height:3em;
			}
			select{
				font-size:2em !important;
			}
		}
	</style>
</head>
<body>
<br/>
<br/>
	<div class = "container col-xs-10 col-md-6 col-md-offset-3 col-xs-offset-1">
		<form>
		  <div class="form-group" action="RestController?op=insertFood"  method="post">
		    <label>菜名</label>
		    <input type="text" name="foodName" class="form-control">
		  </div>
		  <div class="form-group" action="RestController?op=insertFood"  method="post">
		    <label>价格</label>
		    <input type="text" name="foodMoney" class="form-control">
		  </div>
		  <div class="form-group" action="RestController?op=insertFood"  method="post">
		    <label>介绍</label>
		    <input type="text" name="foodIntroduce" class="form-control">
		  </div>
		  <div class="form-group" action="RestController?op=insertFood"  method="post">
		    <label>种类</label>
		    <select name = "foodType" class="form-control">
				<c:forEach var = "allTypes" items="${allTypes }">
					<option value = "${allTypes.type_id}">${allTypes.type_name }</option>
					</c:forEach>
			</select><br>
		  </div> 
			<br/>
			<button type="submit" class="btn btn-info col-sm-12  col-xs-12">提交</button>
		</form>
	</div>
</body>
</html>