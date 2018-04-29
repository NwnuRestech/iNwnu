<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!-- ����jquery Easyui �����js��css�ļ� -->
<script src="easyui1.5.2/jquery.min.js" type="text/javascript"></script>
<script src="easyui1.5.2/jquery.easyui.min.js" type="text/javascript"></script>
<link href="easyui1.5.2/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link href="easyui1.5.2/themes/icon.css" rel="stylesheet" type="text/css" />
<script>
		function addTab(title, url){
			if ($('#tt').tabs('exists', title)){
				$('#tt').tabs('select', title);
			} else {
				var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
				$('#tt').tabs('add',{
					title:title,
					content:content,
					closable:true
				});
			}
		}
	</script>



<<<<<<< HEAD
<title>ϵͳ��ҳ</title>
=======
<title>Index</title>
>>>>>>> djk
</head>

<body class="easyui-layout"  >

       <div region="north" border="true" split="true" style="overflow: hidden; height: 80px;">
          <table cellpadding=0 cellspacing=0 border=0 height=100% width=100%>
              <tr height=35px>
<<<<<<< HEAD
                <td width=50% font-size=2rem>西小食管理系统/td>
=======
                <td width=50% font-size=2rem>西小食管理系统</td>
>>>>>>> djk
                <td width=50% align="right">  欢迎您！&nbsp;|&nbsp; xx &nbsp;| &nbsp;修改密码 &nbsp;|&nbsp;退出系统&nbsp;&nbsp;&nbsp;&nbsp;</td>
              </tr>
          </table>
       </div>
       
        <div region="west" split="true" title="导航菜单" style="width: 200px;">
            <div id="aa" class="easyui-accordion" >
                   <div title="用户管理" data-options="iconCls:'icon-folder',selected:true" style="overflow:auto;padding:10px;">
			<a href="#" class="easyui-linkbutton" style="padding:1px 55px;" onclick="addTab('用户管理','member.html')">用户管理</a>
			<a href="#" class="easyui-linkbutton" style="padding:1px 55px;"  onclick="addTab('权限管理','autho.html')">权限管理</a>
			
		   </div>
                   <div title="档口管理" data-options="iconCls:'icon-folder',selected:true" style="padding:10px;"></div>
                   <div title="其他" data-options="iconCls:'icon-folder',selected:true" style="padding:10px;">
<<<<<<< HEAD
			<a href="#" class="easyui-linkbutton"  style="padding:1px 55px;"  onclick="addTab('投诉管理','complain.html')">投诉管理</a>
		   
			<a href="#" class="easyui-linkbutton"  style="padding:1px 55px;"  onclick="addTab('点歌管理','music.html')">点歌管理</a>
=======
			<a href="#" class="easyui-linkbutton"  style="padding:1px 55px;"  onclick="addTab('投诉管理','MyComplaints.jsp')">投诉管理</a>
			<a href="#" class="easyui-linkbutton"  style="padding:1px 55px;" onclick="addTab('音乐管理','MySongs.jsp')">点歌管理</a>
>>>>>>> djk
		   </div>
                   
           </div>
        </div>
       
       <div id="mainPanle" region="center" style="overflow: hidden;">
             <div class="easyui-tabs" fit="true" id="tt" border=false>
		
		<div title="主页">
			欢迎来到西小食管理系统！
		</div>
	
	     </div>
       </div>
       
        <div  align="center" region="south" border="true" split="true" style="overflow: hidden; height: 30px;">
            <div class="footer">版权所有@西小食</div>
       </div>
</body>

</html>