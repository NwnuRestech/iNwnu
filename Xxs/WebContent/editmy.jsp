<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人信息</title>
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
    <script type="text/javascript">
        function imgPreview(fileDom){
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }

            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function(e) {
                //获取图片dom
                var img = document.getElementById("preview");
                //图片路径设置为读取的图片
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    </script>


</head>
<body>
<header data-am-widget="header" class="am-header am-header-default header">
    <div class="am-header-left am-header-nav">
        <a href="#left-link" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#title-link" class="" style="color: #333;">修改个人信息</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>
<form action="StuController?op=changeStuInfo" method="post">
<ul class="member-nav">

    <li style="height: 90px;"><a href="">

        <div class="list-nav" style="line-height: 80px;"><span>头像</span></div>
        <div class="list-right">
            <div style="width: 40%;float: left"><img id="preview" class="am-circle" style="height: 80px;width: 80px;"></div>

            <div style="width: 60%;float: left;font-size: 1rem;line-height: 75px;">
                <p>
                    <a style="position: relative;background-color: #dcdcdc;padding: 7px;border-radius: 3px;">
                       选择头像
                       <input type="file" name="file" onchange="imgPreview(this)" style="position: absolute;margin-top: -45px;opacity: 0;"/>
                     </a>
                </p>
            </div>


        </div>
    </a></li>
    <li>
        <div class="list-nav"> <span>昵称</span></div>
        <div class="list-right">  <input type="text" placeholder="请输入昵称" name="newNickname" style="border: 1px solid #7c7c7c;width: 200px;"/></div>
    </li>


    <li>
        <div class="list-nav"><span>电话</span></div>
        <div class="list-right"><input type="text" placeholder="请输入电话" name="newTel" style="border: 1px solid #7c7c7c;width: 200px;"/></div>
    </li>
    <li>
        <div class="list-nav"><span>宿舍号</span></div>
        <div class="list-right"><input type="text" placeholder="请输入宿舍号" name="newDorm" style="border: 1px solid #7c7c7c;width: 200px;"/></div>
    </li>
    <li>
        <div class="list-nav"><span>学院</span></div>
        <div class="list-right"><input type="text" placeholder="请输入学院" name="newDept" style="border: 1px solid #7c7c7c;width: 200px;"/></div>
   </li>
</ul>
<ul class="member-nav mt">
    <li>
        <div class="list-nav"><span>旧密码</span></div>
        <div class="list-right"><input type="password" placeholder="请输入旧密码" name="password" style="border: 1px solid #7c7c7c;width: 200px;"/></div>
    </li>
    <li>
        <div class="list-nav"><span>新密码</span></div>
        <div class="list-right"> <input type="password" placeholder="请输入新密码" name="newPassword" style="border: 1px solid #7c7c7c;width: 200px;"/></div>
    </li>
</ul>

<div class="c-com-btn-myinfo" >
    <input type="submit" value="修改"><br>
</div>
</form>

</body>
</html>
