<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全部档口</title>
    <meta name="description" content="厨房妈妈" />
    <meta name="keywords" content="厨房妈妈"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/amazeui.min.js" ></script>
    <style type="text/css">
    .part{
    width: 250px;height:130 ;float: left;padding-left: 20px;border-bottom: 1px solid #999999;
    }
       a{color:#337ab7;}
        .paixu-store{ overflow: hidden; background: #fff;}
        .paixu-store li{ width: 40%; float: left; text-align: center;margin-left: 15px; line-height: 40px;}
        .paixu-store li a{ color: #666;}
    </style>
</head>
<body>
<header data-am-widget="header" class="am-header am-header-default header">
    <div class="am-header-left am-header-nav">
        <a href="index.html" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#" class="" style="color: #333;">全部档口</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>
<div class="search-input">
    <form action="" method="post">
        <input type="text" name="bookName" placeholder="请输入您搜索的内容"
               style="width: 75%; height: 40px;margin-left: 10px;border: 1px solid #ff5500;border-radius: 0px">
        <input type="image"src="images/search.png" style="width: 70px; height: 40px;border: 1px solid #ff5500;margin-left: -5px;border-radius: 0px;">
    </form>

</div>
<ul class="paixu-store">
    <li style="border-bottom: 2px solid #ff5500;"><a href="">默认楼层排序</a></li>
    <li><a href="">销量</a></li>
</ul>
<center><h1>-----一  楼-----</h1></center>

<ul style="height: 130px;">
	
	
	<c:forEach  var="item" items="${rest1 }" varStatus="status" >
		
    <li>
        <div class="am-gallery-item" style="border-bottom:1px soild #ff0000;">
            <a href="GotoStoreinfo?rest_id=${item.rest_id }" class="">
                <div style="width: 120px;float: left;">
                    <img src="images/p.png"  style="height:100px;weight:100px;margin-left: 15px;" alt=""/>
                </div>
                <div class="part">
                    <div style="height: 50px;width: 200px;font-size: 3rem">${item.rest_name }</div>
                                        <div style="float: left;height:60px">
                    <p style="color: #999999;font-size: 2rem;">销量:350笔</p>
                        <p><font>地址</font> <font style="padding-left: 4em;">评论（12）</font></p>
                    </div>
                </div>
            </a>
        </div>
    </li>

		   
    </c:forEach>
	
</ul>
<br>
<center><h1>-----二  楼-----</h1></center>
<div>
<ul style="height: 130px;">
	
	
	<c:forEach  var="item" items="${rest2 }" varStatus="status" >
		
    <li>
        <div class="am-gallery-item" style="border-bottom:1px soild #ff0000;">
            <a href="GotoStoreinfo?rest_id=${item.rest_id }" class="">
                <div style="width: 120px;float: left;">
                    <img src="images/p.png"  style="height:100px;weight:100px;margin-left: 15px;" alt=""/>

                </div>
                <div class="part">
                    <div style="height: 50px;width: 200px;font-size: 3rem">${item.rest_name }</div>
                    <div style="float: left;height:60px">
                    <p style="color: #999999;font-size: 2rem;">销量:350笔</p>
                        <p><font>地址</font> <font style="padding-left: 4em;">评论（12）</font></p>
                    </div>
                </div>
            </a>
        </div>
    </li>

		   
    </c:forEach>
	
</ul>
</div>
<center><h1>-----三  楼-----</h1></center>


<ul style="height: 130px;">
	<c:forEach  var="item" items="${rest3 }" varStatus="status" >
		
    <li>
        <div class="am-gallery-item" style="border-bottom:1px soild #ff0000;">
            <a href="GotoStoreinfo?rest_id=${item.rest_id }" class="">
                <div style="width: 120px;float: left;">
                    <img src="images/p.png"  style="height:100px;weight:100px;margin-left: 15px;" alt=""/>

                </div>
                <div class="part">
                    <div style="height: 50px;width: 200px;font-size: 3rem">${item.rest_name }</div>
                    <div style="float: left;height:60px">
                    <p style="color: #999999;font-size: 2rem;">销量:350笔</p>
                        <p><font>地址</font> <font style="padding-left: 4em;">评论（12）</font></p>
                    </div>
                </div>
            </a>
        </div>
    </li>
    </c:forEach>
	
</ul>


<div 	align="center"
        style="background-color: #fafafa; width: 100%; height: 35px;padding-top:13px;padding-bottom: 5px;line-height: 15px;">
    
</div>
</body>
</html>