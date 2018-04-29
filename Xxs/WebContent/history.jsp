<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>历史消费记录</title>
<meta name="description" content="厨房妈妈" />
<meta name="keywords" content="厨房妈妈" />
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/style.css" />

<link rel="stylesheet" type="text/css" href="css/styles.css" media="all">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// date time picker
		
		if ($(".iDate.date").length > 0) {
			$(".iDate.date").datetimepicker({
				locale : "zh-cn",
				format : "YYYY-MM-DD",
				dayViewHeaderFormat : "YYYY年 MMMM"
			});
		}
	})
</script>


<script type="text/javascript" src="js/amazeui.min.js"></script>
<style type="text/css">
.paixu-store {
	overflow: hidden;
	background: #f0f0f0;
	font-color: #e0e0e0
}

.paixu-store li {
	width: 40%;
	float: left;
	text-align: center;
	margin-left: 15px;
	line-height: 40px;
}

.paixu-store li a {
	color: #666;
}
</style>
</head>
<body>
	<header data-am-widget="header"
		class="am-header am-header-default header">
	<div class="am-header-left am-header-nav">
		<a href="index.html" class=""> <i
			class="am-header-icon am-icon-angle-left"></i>
		</a>
	</div>
	<h1 class="am-header-title">
		<a href="#" class="" style="color: #333;">历史消费记录</a>
	</h1>
	<div class="am-header-right am-header-nav">
		<a href="#right-link" class=""> </a>
	</div>
	</header>

	<ul class="paixu-store">
		<li><a href=""><span>支出￥200.00</span></a></li>
		<li>
			<form action="">
				<div class="iDate date" style="margin-top: 3px;">
					<input type="text">
					<button type="button" class="addOn"></button>
				</div>
			</form>

		</li>
	</ul>


	<div data-am-widget="gallery"
		class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default product">

		<div class="am-gallery-item">
			<a href="storeinfo.html" class="">
				<div
					style="float: left; width: 70px; height: 70px; padding-left: 15px; padding-top: 10px;">
					<img src="images/p.png" class="am-circle" alt=""
						style="height: 50px; width: 50px;" />
				</div>

				<div
					style="width: 280px; float: left; margin: 0 auto; overflow: hidden; padding-top: 10px; padding-right: 4px; padding-left: 4px; border-bottom: 1px solid #999">
					<div
						style="width: 100%; float: left; text-align: left; height: 30px; line-height: 40px; font-size: 2rem;">
						<div style="width: 70%; float: left">档口名：菜名</div>
						<div style="width: 30%; float: left; color: #ff6600;">-￥88.00</div>

					</div>

					<div
						style="width: 100%; float: left; text-align: left; height: 30px; line-height: 35px;">
						<span style="color: #7c7c7c; font-size: 0.8rem;">2018年4月28日
							11:00</span>
					</div>
				</div>



			</a>
		</div>

	</div>

	<div align="center"
		style="background-color: #f0f0f0; width: 100%; height: 27px; margin-top: 13px; margin-bottom: 5px; line-height: 15px;">
		----------已经到底了------------</div>
</body>
</html>
