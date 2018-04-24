<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的</title>
		<meta name="description" content="厨房妈妈" />
		<meta name="keywords" content="厨房妈妈"/>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" href=  "css/amazeui.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/amazeui.min.js" ></script>
	</head>
	<body>
		<div class="member" align="center">
			<div class="member-style">
				<div class="member-style-pic">
					<a href="StuController?op=ShowStuInfo"> <img src="images/default_photo.png" /></a><!--${img.img_loc} ${stu.stu_name}  -->
				</div>
				<div class="member-style-infor">
					<a href="StuController?op=ShowStuInfo">${rest_name }</a>
				</div>
			</div>

		</div>

		<ul class="member-nav">
			<li><div style="float: left;margin-top: 15px;"><i class="am-icon-bell-o"></i></div><a href="RestController?op=selectAllTypes"><span>添加菜品</span></a></li>
			<li><div style="float: left;margin-top: 15px;"><i class="am-icon-cart-arrow-down"></i></div><a href="RestController?op=selectMenu"><span>菜单</span></a></li>
			<li><div style="float: left;margin-top: 15px;"><i class="am-icon-newspaper-o"></i></div><a href="GotoStoreinfo?rest_id=${id }"><span>商铺评价</span></a></li>
			<li><div style="float: left;margin-top: 15px;"><i class="am-icon-dollar"></i></div><a href=""><span>我的账单</a></li>
		</ul>
		<ul class="member-nav mt">
			<li><div style="float: left;margin-top: 15px;"><i class="am-icon-phone"></i></div><a href="">联系我们</a></li>
		</ul>
		<div class="h50"></div>
		<div data-am-widget="navbar" class="am-navbar am-cf am-navbar-default footer "  id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li >
		            <a href="IndexController" class="">
		                <span class=""><img src="images/bo_food0.png"/></span>
		                <span class="am-navbar-label">点餐</span>
		            </a>
		          </li>
		          <li>
		            <a href="speak.html" class="">
		                <span class=""><img src="images/bo_word0.png"/></span>
		                <span class="am-navbar-label">客说</span>
		            </a>
		          </li>
		          <li>
		            <a href="OrderController?op=gotoOrder" class="">
		                <span class=""><img src="images/bo_order0.png"/></span>
		                <span class="am-navbar-label">订单</span>
		            </a>
		          </li>
		          <li >
		            <a href="member.jsp" class="">
		                <span class=""><img src="images/bo_mine1.png"/></span>
		                <span class="am-navbar-label">我的</span>
		            </a>
		          </li>
		   
		      </ul>
		</div>

	</body>
</html>
