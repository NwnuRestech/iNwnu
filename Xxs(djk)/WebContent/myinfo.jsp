<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
    <meta name="description" content="厨房妈妈" />
    <meta name="keywords" content="厨房妈妈"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/amazeui.min.js" ></script>
    <style type="text/css">
        .list-nav{
            float: left;
            padding-left: 50px;
            width: 30%;
        }

        .list-right{
            float: left;
            width: 70%;
            padding-left: 20px;

        }
    </style>



</head>
<body>
<header data-am-widget="header" class="am-header am-header-default header">
    <div class="am-header-left am-header-nav">
        <a href="#left-link" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#title-link" class="" style="color: #333;">个人信息</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>

<ul class="member-nav">
    <li style="height: 90px;"><a href="">

        <div class="list-nav" style="line-height: 80px;"><span>头像</span></div>
        <div class="list-right"><img src="images/p3.png" class="am-circle" style="height: 80px;width: 80px;"></div>
        </a></li>                         <!-- ${img.img_loc } -->
    <li><a href="">
        <div class="list-nav"> <span>昵称</span></div>
        <div class="list-right"> ${stu.stu_nickname }</div>
      </a></li>
    <li><a href="">
        <div class="list-nav"><span>姓名</span></div>
        <div class="list-right">${stu.stu_name }</div>
        </a></li>
    <li><a href="">
        <div class="list-nav"><span>学号</span></div>
        <div class="list-right">${stu.stu_id }</div>
        </a></li>
    <li><a href="">
        <div class="list-nav"><span>电话</span></div>
        <div class="list-right">${stu.stu_tel }</div>
        </a></li>
    <li><a href="">
        <div class="list-nav"><span>积分</span></div>
        <div class="list-right">${stu.stu_grade }</div>
        </a></li>
    <li><a href="">
        <div class="list-nav"><span>信誉</span></div>
        <div class="list-right">${stu.stu_credit }</div>
        </a></li>
    <li><a href="">
        <div class="list-nav"><span>宿舍号</span></div>
        <div class="list-right">${stu.stu_dorm }</div>
        </a></li>
    <li><a href="">
        <div class="list-nav"><span>学院</span></div>
        <div class="list-right">${stu.stu_dept }</div>
        </a></li>
</ul>


<div class="c-com-btn-myinfo" >
    <a href="editmy.jsp">修改信息</a>
</div>
<div class="c-com-btn-myinfo" >
    <a >退出账户</a>
</div>
</body>
</html>
