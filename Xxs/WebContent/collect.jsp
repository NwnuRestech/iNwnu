<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>收藏夹</title>
    <meta name="description" content="厨房妈妈" />
    <meta name="keywords" content="厨房妈妈"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/amazeui.min.js" ></script>
    <style type="text/css">
        
        .paixu-store{ overflow: hidden; background: #fff;}
        .paixu-store li{ width: 40%; float: left; text-align: center;margin-left: 15px; line-height: 40px;}
        .paixu-store li a{ color: #666;}
    </style>
    <script type="text/javascript">
        $(function(){
            $(".store-style").on("click","li",function(){
                // 设index为当前点击
                var index = $(this).index();
                // 点击添加样式利用siblings清除其他兄弟节点样式
                $(this).addClass("active").siblings().removeClass("active");
                // 同理显示与隐藏
                $(this).parents(".wrap").find(".order-style-display li").eq(index).show().siblings().hide();
            })
        });

    </script>
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


        .wrap .store-style li.active{
            font-weight: bold;
            color: red;
            border-top: 2px solid red;
            position: relative;
            top:-1px;
            height: 34px;
        }
        
        .allcomment { background: #fff; overflow: hidden; padding:1rem 22px;  margin-top: 10px;}
        .allcomment allcmment-co{}
        .allcomment-co li3{ float: left; font-size: 1.3rem; background: #f5ece7;    color: #7c7877; margin-right: 5px; padding:.1rem .5rem; border-radius: 5px;}

    </style>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
</head>
<body>
<header data-am-widget="header" class="am-header am-header-default header">
    <div class="am-header-left am-header-nav">
        <a href="index.html" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#" class="" style="color: #333;">我的收藏</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>

<div class="wrap">
    <ul class="store-style">
        <li class="active"><a >菜品收藏</a></li>
        <li ><a >店铺收藏</a></li>
		<div style="margin-left:50px;padding-left=0px;float:left;font-size:1.2rem"><span syle="">管理</span></div>



    </ul>

    <ul class="order-style-display">

        <li>

            <div data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default product">
                <div class="am-gallery-item">
                    <a href="storeinfo.html" class="">
					<div style="float:left;width:145px;height:115px;padding-left:20px;">
						<img src="images/p.png"  alt="" style="height:100px; width:100px;"/>
					</div>
					
					 <div style="width: 200px;float: left;margin: 0 auto;overflow: hidden;padding-top: 10px;padding-right: 20px;height:115px;">
                                    <div style="width: 100%;float: left;text-align: left;height: 40px;line-height: 40px;font-size: 2rem;">糖醋里脊</div>
                                    <div style="width: 50%;float: left;text-align: left;height: 50px;line-height: 60px;"><span style="color: #ff6600;">店铺</span> <span style="color: #7c7c7c;font-size: 0.8rem;">店铺</span></div>
                                    <div style="width: 50%;float: left;text-align: right;height: 50px;line-height: 60px;">
                                        <span style="color: #ff6600;">￥8元</span> <span style="color: #7c7c7c;font-size: 0.8rem;">/份</span>
                                    </div>
                     </div>
                        
                       

                    </a>
                </div>

            </div>





        </li>


        <li>
			
				<div data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default product">

					
						<div class="am-gallery-item" style="float:left;width:170px;height:170px;padding-left:8px;">
							  <a href="storeinfo.html" class="">
							   <img src="images/p.png"  style="width:150px;height:150px;" alt=""/>
							<p style="font-size:1.2rem">楼中楼</p>

							  </a>
						 </div>
					 
					<div class="am-gallery-item" style="float:left;width:170px;height:170px;padding-left:8px;">
							  <a href="storeinfo.html" class="">
							   <img src="images/p.png"  style="width:150px;height:150px;" alt=""/>
							<p style="font-size:1.2rem">楼中楼</p>

							  </a>
						 </div>
						 <div class="am-gallery-item" style="float:left;width:170px;height:170px;padding-left:8px;">
							  <a href="storeinfo.html" class="">
							   <img src="images/p.png"  style="width:150px;height:150px;" alt=""/>
							<p style="font-size:1.2rem">楼中楼</p>

							  </a>
						 </div>

				</div>





        </li>

    </ul>



<div 	align="center"
        style="background-color: #f0f0f0; width: 100%; height: 27px;margin-top:13px;margin-bottom: 5px;line-height: 15px;">
    ----------已经到底了------------
</div>
</body>
</html>