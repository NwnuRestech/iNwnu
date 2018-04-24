<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>学生餐饮文化管理中心管理员</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet" media="screen"> 
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body{
            margin:0; 
            padding:0;
            font-family: Lato,Helvetica,Arial,sans-serif;
                font-size: 14px;
                line-height: 1.72222;
                color: #34495e;
                background-color: #fff;
        }
        .wrap {
                min-width: 100%;
                position: absolute;
                background: #eff3f6 bottom;
                min-height: 100%;
                overflow: hidden;
            }
        .left{
            margin-left:0px;
                position: absolute;
                box-sizing: border-box;
                width: 200px;
                height: 100%;
                background: #4d5e70 bottom;
            }
            .logoDiv{
                padding-top: 20px;
                padding-bottom: 20px;
                height: 70px;
                background-color: #354457;
                font-size: 17px;
                color: #fff;
                vertical-align: bottom;    
            }
            .logoTitle{
                margin-left:15px;
                line-height: 1.7;
            }
            .menu-title {
                margin-left:15px;
                color: #828e9a;
                padding-top: 10px;
                padding-bottom: 10px;
                font-size: 14px;
                font-weight: bold;
            }
            .menu-item {
                padding-left:15px;
                line-height: 40px;
                height: 40px;
                color: #aab1b7;
                cursor: pointer;
            }
            .menu-item-active {
                background-color: #3d4e60;
                border-right: 4px solid #647f9d;
                color: #fff;
            }
            .right{
                box-sizing: border-box;
                float: left;
                box-sizing: border-box;
                padding-left: 200px;
                overflow-y: overlay;
                overflow-x: hidden;
                clear: both;
                color: #717592;
                min-width: 100%;
                min-height: 500px;
            }
    </style>
  </head>
  <body>
        <div class="wrap">
                <!-- 左边内容 -->
                <div id="left" class="left">
                    <div id="logoDiv" class="logoDiv">
                        <p id="logoTitle" class="logoTitle">
                            <img id="logo" alt="左右布局" src="http://tool.what21.com/page/image/menu/cf.png"
                                    style="height: 28px; padding-right: 5px;vertical-align: middle;">
                            <span style="font-size:18px;">管理员</span>
                        </p>
                    </div>
                    <div class="menu-title">档口管理</div>
                    <div class="menu-item" href="#one" data-toggle="tab">－档口增删</div>
                    <div class="menu-item" href="#two" data-toggle="tab">－食品增删</div>
                    <div class="menu-title">其他</div>
                    <div class="menu-item" href="#three" data-toggle="tab">－点歌</div>
                    <div class="menu-item" href="#four" data-toggle="tab">－投诉</div>
                    <div class="menu-item" href="#five" data-toggle="tab">－3+N借用</div>
                    
                </div>
                <!-- 右边内容 -->
                <div id="right" class="tab-content right">
                        <div id="one" class="tab-pane active">
                                   内容一
                        </div>
                        <div id="two" class="tab-pane">
                                   内容二
                        </div>
                        <div id="three" class="tab-pane">
                                   内容三
                        </div>
                        <div id="four" class="tab-pane">
				   内容四
                        </div>
                        <div id="five" class="tab-pane">
				   内容五
                        </div>
                </div>
      </div>
  </body>
    <script>
            $(function() {
                $(".menu-item").click(function() {
                    $(".menu-item").removeClass("menu-item-active");
                    $(this).addClass("menu-item-active");
                });
            });      
      </script>
</html>

