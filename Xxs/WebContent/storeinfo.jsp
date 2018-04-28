<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${rest.rest_name }</title>
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


        .wrap .store-style li.active{
            font-weight: bold;
            color: red;
            border-top: 2px solid red;
            position: relative;
            top:-1px;
            height: 34px;
        }
        .wrap2 .leftfood-display li2.active{
            font-weight: bold;
            border-bottom: 1px solid #ff6600;

            border-radius: 5px;
            position: relative;
            top:0px;
            height: 4.5rem;

        }
        .leftfood-display {
            width: 20%;

            float: left;
            overflow: hidden;
            padding: 0 12px; line-height: 4rem;
        }
        .leftfood-display li2{
            float: left; width: 90%; text-align: center;
            border-bottom: 1px solid #ddd;
            /*鼠标样式改变为一个手*/
            cursor: pointer;
            /*字体免选中*/
            -webkit-user-select: none;
        }
        .leftfood-display li2:first-child{
            border-left: none;
        }
        .leftfood-display li2 a {
            color: #383838;
        }
        .rightfood-info li2:first-child{
            display: block;
        }
        .rightfood-info li2{
            display: none;
        }


        .leftfood-display li2 {

            font-size: 1.5rem;
            height: 4.5rem;
            text-align: center;
        }


        .left{

        }

        .rightfood-info {
            width: 80%;
            background-color: #ffffff;
            float: left;
            overflow: hidden;
            padding: 0 8px;
        }
        .rightfood-info li2{
            float: left;  text-align: center;
            /*鼠标样式改变为一个手*/
            cursor: pointer;
            /*字体免选中*/
            -webkit-user-select: none;
        }
        .allcomment { background: #fff; overflow: hidden; padding:1rem 22px;  margin-top: 10px;}
        .allcomment allcmment-co{}
        .allcomment-co li3{ float: left; font-size: 1.3rem; background: #f5ece7;    color: #7c7877; margin-right: 5px; padding:.1rem .5rem; border-radius: 5px;}

    </style>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
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

        $(function(){
            $(".leftfood-display ").on("click","li2",function(){
                // 设index为当前点击
                var index = $(this).index();
                // 点击添加样式利用siblings清除其他兄弟节点样式
                $(this).addClass("active").siblings().removeClass("active");
                // 同理显示与隐藏
                $(this).parents(".wrap2").find(".rightfood-info li2").eq(index).show().siblings().hide();
            })
        })
    </script>
    <style type="text/css">
        .fixed-btnword{ position: fixed; bottom: 0; height: 50px; background: #fff; width: 100%;}
        .fixed-btnword { float: left; width: 100%; margin: 0 auto; text-align: center; line-height: 50px;}
        .fixed-btnword  a{ width: 100%;    border: 1px solid #e5e5e5;     border-radius: 3px; padding: 7px  30px;     line-height: 18px;}

        .current{ background: #f60; color: #fff;}
        .storeinfos{
            width: 90%;height: 40px;border-bottom: 1px solid #999999;margin: 5px 15px;line-height: 40px;
        }
        .storeinfos-left{
            width: 30%;float: left;text-align: right;padding-right:10px ;
        }
        .storeinfos-right{
            width: 70%;float: left;
        }
    </style>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
                        

</head>
<body>
<header data-am-widget="header" class="am-header am-header-default header" style="position: fixed;">
    <div class="am-header-left am-header-nav">
        <a href="#left-link" class="">
            <i class="am-header-icon am-icon-angle-left"></i>
        </a>
    </div>
    <h1 class="am-header-title"> <a href="#title-link" class="" style="color: #333;">档口详情</a></h1>
    <div class="am-header-right am-header-nav">
        <a href="#right-link" class=""> </a>
    </div>
</header>

<div style="height:170px;width:100%;background-image: url(images/top_store.jpg); background-repeat: no-repeat;background-size: cover; ">
    <div style="height: 165px;width: 85%;overflow: hidden;margin: 0 auto;padding-top: 65px;" >
        <div style="height: 80px;width: 24%;float: left;padding-top: 12px;" align="center">
    <img src="images/in_music.png" width="80px"  height="80px">
        </div>
        <div style="height: 100%;width: 76%;float: left;">
            <div style="height: 63%;width: 100%;text-align: center;font-size: 2rem;line-height: 56px;padding-top: 12px;" align="center">
    ${rest.rest_name }
		<a style="font-size:1.1rem;color:#e0e0e0;margin-left:10px;">添加到收藏</a>
            </div>
            <div style="height: 30%;width: 100%；text-align: left;font-size: 1.5rem;line-height: 30px;padding-left: 20px;">
                公告：棒棒哒！
            </div>
        </div>
    </div>
</div>

<div class="wrap">
    <ul class="store-style">
        <li class="active"><a >菜谱</a></li>
        <li ><a >店铺评价</a></li>
        <li ><a >档口信息</a></li>
    </ul>

    <ul class="order-style-display">

        <li>

            <div class="wrap2">
                <ul class="leftfood-display clearfix">
                    <li2 class="active"> <a>热门 </a></li2>
                    <c:forEach  var="item" items="${allType }" varStatus="status" >
                    	<li2><a>${item.type_name }</a></li2>
                    </c:forEach>
                </ul>
                <ul class="rightfood-info">
                  <li2>
                        <div class="foodlist" style="height: 115px;">
                            <div class="foodlist-box" style="height: 110px; background-color: #fafafa;width:270px;margin-top: 10px;">
                                <div style="width: 40%;float: left;margin: 0 auto;overflow: hidden;padding-top: 10px;">
                                    <img src="images/p2.png" style="width: 90px;height: 90px" >
                                </div>
                                <div style="width: 60%;float: left;margin: 0 auto;overflow: hidden;padding-top: 10px;padding-right: 4px;">
                                    <div style="width: 100%;float: left;text-align: left;height: 40px;line-height: 40px;font-size: 2rem;">糖醋里脊</div>
                                    <div style="width: 50%;float: left;text-align: left;height: 50px;line-height: 60px;"><span style="color: #ff6600;">￥8元</span> <span style="color: #7c7c7c;font-size: 0.8rem;">/份</span></div>
                                    <div style="width: 50%;float: left;text-align: right;height: 50px;line-height: 60px;">
                                        <a style="border: 1px solid #e5e5e5;     border-radius: 8px;padding: 4px;background-color:  #f60;">立即购买</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </li2>
                <c:forEach  var="item1" items="${allTypeFood }" varStatus="status" >
	                <li2>
	                    <c:forEach  var="item2" items="${item1 }" varStatus="status" >
	                    	<div class="foodlist" style="height: 115px;">
                                    <div class="foodlist-box" style="height: 110px; background-color: #fafafa;width:270px;margin-top: 10px;">
                                       <div style="width: 40%;float: left;margin: 0 auto;overflow: hidden;padding-top: 10px;">
                                          <img src="images/p2.png" style="width: 90px;height: 90px" >
                                       </div>
                                        <div style="width: 60%;float: left;margin: 0 auto;overflow: hidden;padding-top: 10px;padding-right: 4px;">
                                             <div style="width: 100%;float: left;text-align: left;height: 40px;line-height: 40px;font-size: 2rem;">${item2.food_name }</div>
                                            <div style="width: 50%;float: left;text-align: left;height: 50px;line-height: 60px;"><span style="color: #ff6600;">￥${item2.food_money }元</span> <span style="color: #7c7c7c;font-size: 0.8rem;">/份</span></div>
                                              <div style="width: 50%;float: left;text-align: right;height: 50px;line-height: 60px;">
                                                  <a href="FoodDetailController?food_id=${item2.food_id }" style="border: 1px solid #e5e5e5;     border-radius: 8px;padding: 4px;background-color:  #f60;">立即购买</a>
                                              </div>
                                         </div>
                                    </div>
                                 </div>
	               		</c:forEach>
	                </li2>
                </c:forEach>
                
                <!-- 断点 -->
                </ul>

            </div>


        </li>

        <li>

            <div class="allcomment">
                <h2>全部评价（${evaluNum }）</h2>
                <!-- <div class="allcomment-co">
                    <li3><a href="">有图（0）</a></li3>
                    <li3><a href="">好评（0）</a></li3>
                    <li3><a href="">中评（0）</a></li3>
                    <li3><a href="">差评（0）</a></li3>
                </div> -->


            </div>
            <div style="padding: 8px 12px;">


			<c:forEach items = "${results }" var = "item">
            	 <div style="height: 125px;border-bottom:2px solid #999999">
                    <div style="height: 45px;float: left;width: 50%;text-align: left;line-height: 35px;padding-top: 10px">
                        <div style="width: 60px;height: 35px;padding-right: 10px;padding-left: 15px;float: left;">
                            <img src="images/p3.png" class="am-circle" style="height: 35px;width: 35px;">
								<!-- ${item.stu_img} -->
                        </div>
                        <div  style="width: 108px;height: 35px;float: left；">
                            ${item.stu_nickname }
                        </div>

                    </div>
                    <div style="height: 35px;float: left;width: 50%;color:#e0690c;padding-right: 10px;text-align: right;line-height: 35px;">
                        好评
                    </div>
                    <div style="height: 45px;float: left;width: 100%;padding-left: 12px;">
                        ${item.eval_content }
                    </div>
                    <div style="height: 25px;float: left;width: 100%;color: #7c7c7c;padding-left: 12px;">
                        评价时间：<fmt:formatDate value="${item.eval_time }" pattern="MM月dd日   HH:mm"/>
                    </div>


                </div>
            </c:forEach>

            </div>


            <div 	align="center"
                    style="background-color: #fff; width: 100%; height: 25px;margin-top:13px;margin-bottom: 5px;line-height: 25px;color: #7c7c7c;font-size: 0.8px;">
                ---没有其他评价了---
            </div>
            <div class="h50"></div>
            <div class="fixed-btnword">
                <form action="RestEvaluationController?op=insertEvaluation&rest_id=${rest.rest_id }" method="post">
                    <input type="text" name="content" placeholder="来点评价吧~~~"
                           style="width: 70%; height: 40px;margin-left: 10px;border: 1px solid #999999;border-radius: 5px;">
                    <input type="submit" value="评价" style="width: 60px; height: 40px;border: 1px solid #999999;margin-left: -5px;border-radius: 5px;">
                </form>
            </div>

        </li>

        <li>
            <div>
            	<div class="storeinfos">
                    <div class="storeinfos-left">店名：</div>
                    <div  class="storeinfos-right">${rest.rest_name }</div>
                </div>
                <div class="storeinfos">
                    <div class="storeinfos-left">位置：</div>
                    <div  class="storeinfos-right">${rest.rest_loc }楼</div>
                </div>
                <div class="storeinfos">
                    <div class="storeinfos-left">老板：</div>
                    <div  class="storeinfos-right">${rest.rest_peoplename }</div>
                </div>
                <div class="storeinfos">
                    <div class="storeinfos-left">联系方式：</div>
                    <div  class="storeinfos-right">${rest.rest_tel }&nbsp&nbsp&nbsp
                    <a href="sms:${rest.rest_tel }" ><i class="fa fa-file-text-o"></i></a>&nbsp&nbsp&nbsp
                    <a href="tel:${rest.rest_tel }" ><i class="fa fa-phone"></i></a>
                    </div>
                </div>
            </div>
        </li>

    </ul>

</div>








</body>
</html>
