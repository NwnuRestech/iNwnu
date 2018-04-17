<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生餐饮文化中心广播台</title>
    <meta name="description" content="厨房妈妈" />
    <meta name="keywords" content="厨房妈妈"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/amazeui.min.js" ></script>



    <link rel="stylesheet" href="css/common.css"/>

    <script type="text/javascript">
        var w,h,className;
        function getSrceenWH(){
            w = $(window).width();
            h = $(window).height();
            $('#dialogBg').width(w).height(h);
        }

        window.onresize = function(){
            getSrceenWH();
        }
        $(window).resize();

        $(function(){
            getSrceenWH();

            //显示弹框
            $('.box a').click(function(){
                className = $(this).attr('class');
                $('#dialogBg').fadeIn(300);
                $('#dialog').removeAttr('class').addClass('animated '+className+'').fadeIn();
            });

            //关闭弹窗
            $('.claseDialogBtn').click(function(){
                $('#dialogBg').fadeOut(300,function(){
                    $('#dialog').addClass('bounceOutUp').fadeOut();
                });
            });
        });
    </script>

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
        <a href="#left-link" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#title-link" class="" style="color: #333;">点歌</a></h1>
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
        <h2 class="am-intro-title">学生餐饮文化中心广播台</h2>
    </div>

    <div style="width: 100%;height: 130px;padding: 5px 25px;" >
        <div style="height: 120px;width: 85%;float: left;border-radius: 18px;border:1px solid #bebebe;padding: 5px 10px;background-color: #ffdcb9">
            <a > <p> 点歌人：${music.songpeople }</p>
                <p>歌曲名：${music.songname }</p>
                <p>播放时间：<fmt:formatDate value="${music.songtime }" pattern="yyyy年MM月dd日HH点mm分" /></p>
                <p> 点歌留言：${music.songmessage }</p>
            </a>
        </div>
        <div style="height: 100px;width: 15%;float: left;padding-top: 35px;"><img src="images/p.png"  class="am-circle" style="height: 50px;width: 50px;"/></div>



    </div>

    <div style="width: 100%;height: 70px;padding: 5px 25px;">

        <div style="height: 60px;width: 15%;float: left;padding-top: 0px;"><img src="images/p.png"  class="am-circle" style="height: 50px;width: 50px;"/></div>
        <div style="height: 60px;width: 85%;float: left;border-radius: 18px;border:1px solid #bebebe;padding: 5px 10px;">
            <h2>点歌成功！请于此时间收听！</h2>

        </div>

    </div>

</div>
<div class="h50"></div>
<div class="fixed-btnword">
    <div id="wrapper">


        <div class="box">
            <div class="demo">
                <a href="javascript:;" class="bounceIn">我要点歌</a>

            </div>

            <div id="dialogBg"></div>
            <div id="dialog" class="animated">
                <img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
                <div class="dialogTop" style="height: 60px;">
                    <a href="javascript:;" class="claseDialogBtn" style="width: 25px;">关闭</a>
                </div>
                <form action="MusicController?op=play" method="post" id="diange">
                    <ul class="editInfos">
                        <li><label style="margin-left: 15px;"><font color="#ff0000">* </font>点歌人：<input type="text" name="songpeople" id = "songpeople" required value="" class="ipt" style="height: 32px;width: 177px;border: 1px solid #bebebe;border-radius: 5px;" /></label></li>
                        <li><label style="margin-left: 15px;"><font color="#ff0000">* </font>歌曲名：<input type="text" name="songname" id = "songname" required value="" class="ipt" style="height: 32px;width: 177px;border: 1px solid #bebebe;border-radius: 5px;" /></label></li>

                        <li><label><font color="#ff0000">* </font>播放时间：
                            <div class="iDate full" style="line-height: 50px;">
                                <input type="text" name="songtime" id = "songtime" required value=""  style="margin-top: -16px;"/>
                                <button type="button" class="addOn" style="border: 1px solid #bebebe;"></button>
                            </div>
                        </label></li>
                        <li><label style="margin-left: 22px;"><font color="#ff0000">* </font>留言：<input type="text" name="songmessage" id = "songmessage" required value="" class="ipt" style="height: 32px;width: 177px;border: 1px solid #bebebe;border-radius: 5px;"/></label></li>
                        <li><input type="submit" value="确认提交" class="submitBtn" onclick="diange()"/></li>
                    </ul>
                </form>
            </div>
        </div>

    </div>

</div>

</body>
</html>
