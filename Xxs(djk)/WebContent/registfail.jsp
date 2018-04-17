<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1,maximum-scale=1">
    <title>registfail</title>
    <link rel="stylesheet" type="text/css" href="css/common.css">


    <script type="text/javascript">
        var num=6;
        function redirect(){
            num--;
            document.getElementById("num").innerHTML=num;
            if(num<0){
                document.getElementById("num").innerHTML=0;
                location.href="loginOrRegist.jsp";
            }
        }
        setInterval("redirect()", 1000);
    </script>
</head>
<body onLoad="redirect();" >
<div style="height: 60px;margin-top: 30px;margin-left: 40px;overflow: hidden" >
    <img src="images/nwnu.jpg" height="50px" width="50px">
    <font size="4.5">学生餐饮文化中心提醒您！</font>
</div>
<hr style="height: 1px; width: 90%;" color="#000066">
<div style="margin-left: 20px;font-size: 15px；">
    <ul>
         <li>注册失败</li>
        <li>可能存在非法输入，请重新注册！</li>
        <li><span id="num"></span>秒后自动跳转到登录/注册页面</li>
    </ul>

</div>

</body>
</html>