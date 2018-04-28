<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐饮文化中心</title>
		<meta name="description" content="厨房妈妈" />
		<meta name="keywords" content="厨房妈妈"/>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/amazeui.min.js" ></script>
</head>
<body>
		<div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{}' >
			  <ul class="am-slides">
			      <li><img src="images/banner.jpg"> </li>
			      <li><img src="images/banner1.jpg"> </li>
			  </ul> 
		</div>
		<a class="search">
			<form action="" method="post">
				<input type="text" name="bookName" placeholder="开启你的美食之旅…"
					   style="width: 70%; height: 40px;margin-left: 10px;border: 1px solid #999999">
				<input type="image"src="images/search.png" style="width: 60px; height: 40px;border: 1px solid #999999;margin-left: -5px">
			</form>
		</a>
		<ul class="nav">
			<li>
				<a href="GotoAllstore">
					<img src="images/in_allStore.png" />
					<p>全部档口</p>
				</a>
			</li>
			<li>
				<a href="search.html">
					<img src="images/in_recommend.png" />
					<p>美食推荐</p>
				</a>
			</li>
			<li>
				<a href="complain.jsp">
					<img src="images/in_complain.png" />
					<p>投诉</p>
				</a>
			</li>
			<li>
				<a href="music.jsp">
						<img src="images/in_music.png" >
					<p>点歌</p>
				</a>
			</li>
			<li>
				<a href="search.html">
					<img src="images/in_room.png" />
					<p>3+n空间</p>
				</a>
			</li>
			<li>
				<a href="yhq.html">
					<img src="images/in_more.png" />
					<p>更多</p>
				</a>
			</li>
		</ul>
		<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default title" >
		    <h2 class="am-titlebar-title ">   人气菜肴 </h2>
		    <nav class="am-titlebar-nav">
		        <a href="#more" class="">more &raquo;</a>
		    </nav>
		</div>
	    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default product">
		      <c:forEach items = "${show }"  var = "item">
		      	 <li>
		       		 <div class="am-gallery-item">
		          		 <a href="FoodDetailController?food_id=${item.food_id }" class="">
		              		<img src="IndexImg/5.jpg"  alt=""/>     <!-- ${item.img_loc }  -->                   <!-- 食物的图片 根据食物种类id展示图片-->
		            		<h3 class="am-gallery-title">${item.food_name }</h3>    <!-- 展示食物的名称，价格，食物所属店铺，图片 -->
		              		<div class="am-gallery-desc">
		              			<em>￥${item.food_money }</em><i >店铺：${item.rest_name }</i>
		              		</div>
		            	</a>
		       		</div>
		      </li>
		      </c:forEach>
		 </ul>

		<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default title" >
			<h2 class="am-titlebar-title ">   火爆店铺 </h2>
			<nav class="am-titlebar-nav">
				<a href="#more" class="">more &raquo;</a>
			</nav>
		</div>
		<ul data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default product">
			 <c:forEach items = "${show1 }" varStatus="status"  var = "item">     <!-- 展示商铺的名称，图片 -->
		      	<li>
					<div class="am-gallery-item">
						<a href="GotoStoreinfo?rest_id=${item.rest_id }" class="">
							<img src="RestImg/${item.rest_id }.JPG"  alt="${item.rest_name }"/>
							<h3 class="am-gallery-title">${item.rest_name }</h3>
						</a>
					</div>
			   </li>
		      </c:forEach>
		</ul>
	<div 	align="center"
			style="background-color: #fafafa; width: 100%; height: 27px;margin-top:13px;margin-bottom: 5px;line-height: 15px;">
		----------已经到底了------------
	</div>

		 <div class="h50"></div>
		<div data-am-widget="navbar" class="am-navbar am-cf am-navbar-default footer "  id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li >
		            <a href="index.jsp" class="">
		                <span class=""><img src="images/bo_food1.png"/></span>
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
		          <li>
		            <a href="GotoMember" class="">
		                <span class=""><img src="images/bo_mine0.png"/></span>
		                <span class="am-navbar-label">我的</span>
		            </a>
		          </li>
		      </ul>
		</div>

	</body>
</html>