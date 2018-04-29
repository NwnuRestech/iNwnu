<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui1545/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui1545/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui1545/demo.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui1545/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/easyui1545/jquery.easyui.min.js"></script>
	    <script type="text/javascript">
        $(function () {
            $("#dg").datagrid({
                url: '${pageContext.request.contextPath }/ComplaintController?op=selectAllComsWithPage',
                rownumbers: true,
                fitColumns: true,
                singleSelect: true,
                pagination: true,
                toolbar: '#tb',
                fitColumns: true,
                pageSize: 10,//每页显示的记录条数，默认为10
                pageList: [10, 20, 30],//可以设置每页记录条数的列表
            })
        });
    </script>
</head>
<body onload="">
<table id="dg" title="投诉管理" style="width:1000px;height:365px">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true" rowspan="2"></th>
        <th data-options="field:'comid',width:50" rowspan="2">编码</th>
        <th data-options="field:'rest_id',width:50" rowspan="2">投诉商铺</th>
        <th data-options="field:'comp_time',width:100" rowspan="2">投诉时间</th>
        <th data-options="field:'comp_event',width:50" rowspan="2">留言</th>
        <th data-options="field:'comp_state',width:50,align:'right'" rowspan="2">状态</th>
        <th colspan="2">操作</th>
    </tr>
    <tr>
        <th data-options="field:'edit',width:50,align:'right'">修改</th>
        <th data-options="field:'del',width:50,align:'right'">删除</th>
    </tr>
    </thead>
</table>

	<div id="tb" style="padding:2px 5px;float: right;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
	</div>

</body>
</html>