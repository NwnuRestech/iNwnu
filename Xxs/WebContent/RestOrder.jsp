<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商户订单</title>
    <meta name="description" content="厨房妈妈" />
    <meta name="keywords" content="厨房妈妈"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/amazeui.min.js" ></script>


    <style type="text/css">

        /*清浮动---clearfix*/
        .clearfix {
            *zoom: 1;
        }
        .clearfix:after {
            content: "";
            clear: both;
            display: block;
            height: 0;
            font-size: 0;
            visibility: hidden;
        }
        .order-style-display li:first-child{
            display: block;
        }
        .order-style-display li{
            display: none;
        }


        .wrap .order-style li.active{
            font-weight: bold;
            color: red;
            border-top: 2px solid red;
            position: relative;
            top:-1px;
            height: 34px;
        }

    </style>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".order-style").on("click","li",function(){
                // 设index为当前点击
                var index = $(this).index();
                // 点击添加样式利用siblings清除其他兄弟节点样式
                $(this).addClass("active").siblings().removeClass("active");
                // 同理显示与隐藏
                $(this).parents(".wrap").find(".order-style-display li").eq(index).show().siblings().hide();
            })
        })
    </script>
</head>

<body>
<header data-am-widget="header" class="am-header am-header-default header">
    <div class="am-header-left am-header-nav">
        <a href="#left-link" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#title-link" class="" style="color: #333;">全部订单</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>

<div class="wrap">
    <ul class="order-style clearfix">
        <li class="active"><a >待接收</a></li>
        <li ><a >待做好</a></li>
        <li ><a >待用户确认</a></li>
        <li ><a >全部</a></li>

    </ul>

    <ul class="order-style-display">
        <li>
               <c:forEach  var="item" items="${restIndent1 }" varStatus="status" >
		            <div class="c-comment">
		                <!--<span class="c-comment-num">订单编号：150916517682</span>  -->
		                <span class="c-comment-suc">状态：待接收</span>
		            </div>
		            <div class="c-comment-list" style="border: 0;">
		                <a class="o-con" href="">
		                    <div class="o-con-img"><img src="images/detail.png"></div>
		                    <div class="o-con-txt">
		                        <p> ${item.food_name } </p>
		                        <p class="price">￥${item.indent_money }</p>
		                        <p> 实付金额：<span>￥${item.all_money }</span></p>
		                    </div>
		                    <div class="o-con-much"> 数量<h4>x ${item.food_num } </h4></div>
		                </a>
		                <div class="c-com-btn">
		                    <a href="OrderController?op=indentReceive&indent_id=${item.indent_id }">确认接收</a>
		                </div>
		               </div>
			   </c:forEach>
	        </li>

        <li>
            <c:forEach  var="item" items="${restIndent2 }" varStatus="status" >
		            <div class="c-comment">
		                <!--<span class="c-comment-num">订单编号：150916517682</span>  -->
		                <span class="c-comment-suc">状态：待接收</span>
		            </div>
		            <div class="c-comment-list" style="border: 0;">
		                <a class="o-con" href="">
		                    <div class="o-con-img"><img src="images/detail.png"></div>
		                    <div class="o-con-txt">
		                        <p> ${item.food_name } </p>
		                        <p class="price">￥${item.indent_money }</p>
		                        <p> 实付金额：<span>￥${item.all_money }</span></p>
		                    </div>
		                    <div class="o-con-much"> 数量<h4>x ${item.food_num } </h4></div>
		
		                </a>
		
		                <div class="c-com-btn">
		                    <a href="OrderController?op=indentAchieve&indent_id=${item.indent_id }">确认完成</a>
		                </div>
		               </div>
			   </c:forEach>
        </li>

        <li>
        
        <c:forEach  var="item" items="${restIndent3 }" varStatus="status" >
		            <div class="c-comment">
		                <!--<span class="c-comment-num">订单编号：150916517682</span>  -->
		                <span class="c-comment-suc">状态：待接收</span>
		            </div>
		            <div class="c-comment-list" style="border: 0;">
		                <a class="o-con" href="">
		                    <div class="o-con-img"><img src="images/detail.png"></div>
		                    <div class="o-con-txt">
		                        <p> ${item.food_name } </p>
		                        <p class="price">￥${item.indent_money }</p>
		                        <p> 实付金额：<span>￥${item.all_money }</span></p>
		                    </div>
		                    <div class="o-con-much"> 数量<h4>x ${item.food_num } </h4></div>
		
		                </a>
		
		                 <div class="c-com-btn">
                    		<a href="OrderController?op=indentConfirm&indent_id=${item.indent_id }">确认取餐</a>
                    		<a >${item.foodkey_key }</a>
                		</div>
		               </div>
			   </c:forEach>
        </li>

        <li>
            <c:forEach  var="item" items="${restIndentAll }" varStatus="status" >
		            <div class="c-comment">
		                <!--<span class="c-comment-num">订单编号：150916517682</span>  -->
		                <span class="c-comment-suc">状态：待接收</span>
		            </div>
		            <div class="c-comment-list" style="border: 0;">
		                <a class="o-con" href="">
		                    <div class="o-con-img"><img src="images/detail.png"></div>
		                    <div class="o-con-txt">
		                        <p> ${item.food_name } </p>
		                        <p class="price">￥${item.indent_money }</p>
		                        <p> 实付金额：<span>￥${item.all_money }</span></p>
		                    </div>
		                    <div class="o-con-much"> 数量<h4>x ${item.food_num } </h4></div>
		
		                </a>
		
		               </div>
			   </c:forEach>
        </li>

    </ul>
</div>






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
                <span class=""><img src="images/bo_order1.png"/></span>
                <span class="am-navbar-label">订单</span>
            </a>
        </li>
        <li >
            <a href="member.html" class="">
                <span class=""><img src="images/bo_mine0.png"/></span>
                <span class="am-navbar-label">我的</span>
            </a>
        </li>

    </ul>
</div>

</body>
</html>