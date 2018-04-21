<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
		<meta name="description" content="厨房妈妈" />
		<meta name="keywords" content="厨房妈妈"/>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/detailstyle.css" />
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/amazeui.min.js" ></script>

		<style type="text/css">
			#amountInput {
				vertical-align: middle;
				line-height: 20px;
			}
		</style>
		<script type="text/javascript">
            $(function() {
            	$("#buy").click(function() {
            		var food_money = ${food_money };
            		var food_num = $("#amountInput").val();
					var indent_money= parseInt(food_num) * parseFloat(food_money);
					var food_id=${food_id };
					var stu_id=1;
					var indent_remk=$("#words").val();
					var gettime = $("#gettime").val();
					$.post("OrderController?op=addOrder", { "food_num": food_num,"indent_money":indent_money, "food_id":food_id,"stu_id":stu_id,"indent_remk":indent_remk,"gettime":gettime},
						function (data) {
							var res = JSON.stringify(data);
						if(res.indexOf("login") >=0){
							alert("未登录！");
							location.href = "pleaselogin.jsp";
							return;
						}else if(res.indexOf("error") >= 0){
							alert("点餐失败！");
							location.href = "index.jsp";
						}else{
							location.href = "OrderController?op=gotoOrder";
						}
						}
					); 
				}); 
                $("#add").click(function() {
                    var varl = $("#amountInput").val();
                    $("#amountInput").val(parseInt(varl) + 1);
                });
                $("#sub").click(function() {
                    var varl = $("#amountInput").val();
                    if (parseInt(varl) - 1 >= 1)
                        $("#amountInput").val(parseInt(varl) - 1);
                });

            });
		</script>
		<link rel="stylesheet" type="text/css" href="css/DateTimePicker.css" />
		<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="js/DateTimePicker.js"></script>

		<script type="text/javascript">
            $(document).ready(function()
              {
                $("#dtBox").DateTimePicker({
                    init: function()
                    {
                        var oDTP = this;
                        oDTP.setDateTimeStringInInputField();
                    }

          	 	 };)} 
            );
		</script>

	</head>
	<body>
		<div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{}' >
			  <ul class="am-slides">
			      <li><img src="images/detail.png"> </li>
			      <li><img src="images/detail.png"> </li>
			  </ul> 
		</div>
		<div class="detail">
			<h2>${food_name }</h2>
			<div class="price">
				<b>￥${food_money }</b><span></span>
			</div>
			<div class="kucun">
				<p>月售：4</p>
				<p>档口：${rest_name }</p>
			</div>
		</div>

		<div style="height: 104px;width:99%;border:1px solid #3333cc;border-radius: 9px;margin-left: 2px">
			<div style="width: 25%;float: left;height: 50px;text-align: center;line-height: 50px;">
				购买备注：
			</div>

			<div style="width: 75%;float: left;height: 50px;padding: 5px 10px 5px 0px;">
				<input  type="text" name="words" value="请备注及填写取餐时间后购买！" id="words"
						style=" width: 260px;height: 40px;border:1px solid #7c7c7c;color: #999999">
			</div>
			<div style="width: 25%;float: left;height: 50px;text-align: center;line-height: 50px;">
				取餐时间：
			</div>

			<div style="width: 75%;float: left;height: 50px;padding: 5px 10px 5px 0px;">

				<input type="text" name="eatime" id="gettime" style=" width: 260px;height: 40px;border:1px solid #7c7c7c;color: #ff6633;font-size: 2rem" data-field="time" readonly>
				<div id="dtBox"></div>

				<script type="text/javascript">
                    $(document).ready(function()
                    {
                        $("#dtBox").DateTimePicker({

                            init: function()
                            {
                                var oDTP = this;
                                oDTP.setDateTimeStringInInputField();
                            }
                        });
                    });
				</script>
			</div>
		</div>
		<div class="comment">
			<h2>宝贝评价（0）</h2>
			<ul>
				<li><a href="">有图（0）</a></li>
				<li><a href="">好评（0）</a></li>
				<li><a href="">中评（0）</a></li>
				<li><a href="">差评（0）</a></li>
			</ul>

			<div style="height: 150px;">
				<div style="height: 45px;float: left;width: 50%;text-align: left;line-height: 35px;padding-top: 10px">
					<div style="width: 60px;height: 35px;padding-right: 10px;padding-left: 15px;float: left;">
						<img src="images/p3.png" class="am-circle" style="height: 35px;width: 35px;">

					</div>
					<div  style="width: 108px;height: 35px;float: left；">
						bling
					</div>

				</div>
				<div style="height: 35px;float: left;width: 50%;color:#e0690c;padding-right: 10px;text-align: right;line-height: 35px;">
					好评
				</div>
				<div style="height: 45px;float: left;width: 100%;">
					nanahaha
				</div>
				<div style="height: 20px;float: left;width: 100%;color: #7c7c7c;">
				购买时间：2018-01-16
				</div>

			</div>
			<div style="height: 30px;width: 100%;margin: 0 auto;padding-left: 120px;">
				<div style="width: 130px;height: 30px;border-radius: 9px;border: 2px solid #ff6633;text-align: center;">
					<a >查看全部评价</a>
				</div>
			</div>
		</div>
        <div class="detail-con">
        	<p>${food_introduce }</p>
        </div>
		<div 	align="center"
				style="background-color: #fafafa; width: 100%; height: 27px;margin-top:13px;margin-bottom: 5px;line-height: 15px;color: #999999">
			----------已经到底了----------
		</div>
		<div class="h50"></div>
		<ul class="fixed-btn">
			<li><a style="margin-left: 30px;">数量<span id="sub" >
						<img alt="" src="images/down.png" style="width: 15px;height: 80%;margin-top: 18px;">
					</span>
				<input  type="text" name="amount" value="0" id="amountInput"
						style="display: inline; width: 20px;height: 20px;margin-top: -3px;text-align: center;">
				<span id="add" >
						<img alt="" src="images/add.png" style="width: 15px;height: 80%;margin-top: 18px;">
			  </span></a></li>
			<li ><a href="" id="buy" class="current">立即购买</a></li>

		</ul>
		
	</body>
</html>