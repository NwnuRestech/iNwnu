<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <title>学生餐饮文化中心投诉处</title>
    <meta name="description" content="厨房妈妈" />
    <meta name="keywords" content="厨房妈妈"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/amazeui.min.js" ></script>



    <link rel="stylesheet" href="css/commonapp.css"/>

    
    <style type="text/css">
        .fixed-btnword{ position: fixed; bottom: 0; height: 50px; background: #fff; width: 100%;}
        .fixed-btnword { float: left; width: 100%; margin: 0 auto; text-align: center; line-height: 50px;}
        .fixed-btnword  a{ width: 100%;    border: 1px solid #e5e5e5;     border-radius: 3px; padding: 7px  30px;     line-height: 18px;}
    </style>

    <link rel="stylesheet" type="text/css" href="css/styles.css" media="all">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            // date time picker
            if($(".iDate.full").length>0){
                $(".iDate.full").datetimepicker({
                    locale: "zh-cn",
                    format: "YYYY-MM-DD a hh:mm",
                    dayViewHeaderFormat: "YYYY年 MMMM"
                });
            }
            if($(".iDate.date").length>0){
                $(".iDate.date").datetimepicker({
                    locale:"zh-cn",
                    format:"YYYY-MM-DD",
                    dayViewHeaderFormat:"YYYY年 MMMM"
                });
            }
        })
    </script>


</head>
<body>
<header data-am-widget="header" class="am-header am-header-default header">
    <div class="am-header-left am-header-nav">
        <a href="IndexController" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#title-link" class="" style="color: #333;">投诉</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>
<div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{}' >
    <ul class="am-slides">
        <li><img src="images/banner3.png"> </li>
        <li><img src="images/banner4.png"> </li>
    </ul>
</div>

<div data-am-widget="intro" class="am-intro am-cf am-intro-default">
    <div class="am-intro-hd">
        <h2 class="am-intro-title">学生餐饮文化中心投诉处</h2>
    </div>

    <div style="width: 100%;height:290px;padding: 5px 25px;" >
        <div style="height:275px;width: 100%;float: left;border-radius: 18px;border:1px solid #bebebe;padding: 5px 18px;background-color: #ffdcb9;margin-left: 0px;">
            <form action="" method="post" id="editForm">
                <ul class="editInfos">
                    
                    <li><label style="margin-left: 15px;"><font color="#ff0000">* </font>投诉事件：<input type="text" name="" required value="" class="ipt" style="height: 32px;width: 177px;border: 1px solid #bebebe;border-radius: 5px;" /></label></li>

                    <li><label><font color="#ff0000">*</font>投诉时间：
                        <div class="iDate full" style="line-height: 60px;margin-left: 18px;">
                            <input type="text" name="" required value=""  style="margin-top: 0px;border-radius: 8px;"/>
                            <button type="button" class="addOn" style="border: 1px solid #bebebe;"></button>
                        </div>
                    </label></li>
                    <li><label style="margin-left: 22px;"><font color="#ff0000">* </font>投诉留言：<input type="text" name="" required value="" class="ipt" style="height: 32px;width: 177px;border: 1px solid #bebebe;border-radius: 5px;margin-right: -2px;"/></label></li>
                    <li><input type="submit" value="确认投诉" class="submitBtn" style="margin-top: 15px;"/></li>
                </ul>
            </form>
        </div>




    </div>

</div>
<div class="h50"></div>
</body>
</html>