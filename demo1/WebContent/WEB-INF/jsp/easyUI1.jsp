<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"	href="<c:url value="/css/themes/default/easyui.css"/>">
<link rel="stylesheet" type="text/css"	href="<c:url value="/css/themes/icon.css"/>">

<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.easyui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/easyui-lang-zh_CN.js"/>"></script>
<style type="text/css">
	.h1node{
		cursor:pointer;
	}
</style>

<script type="text/javascript">
	$(function(){
		$(".h1node").click(function(){
			//alert("OK");
			//$.messager.alert("消息提示","这是提示的内容");
			/* $.messager.prompt("消息提示","这是提示的内容", function(r){
				
				$.messager.alert("您刚才输入的是：",r);
			}); */
			
			/* $.messager.confirm("你确认要离开吗?","还能不能友好的玩耍？", function(r){
				if(r){
					
					$.messager.alert("消息提示","人生何处不相逢？","warning");
				}
			}); */
			/* $.messager.show({
				title:'我的消息',
				msg:'消息将在4秒后关闭。',
				showType:'show',
				style:{
					right:'',
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
 */
 
			/* $.messager.show({
				title:'我的消息',
				msg:'消息将在5秒后关闭。',
				timeout:5000,
				showType:'fade'
			}); */
			
			/* $.messager.progress();  */
			var win = $.messager.progress({
				title : 'Please waiting 见证奇迹的时刻就要到了。。。',
				msg : 'Loading data... 精彩正在加载。。。',
				interval : '600'
			});
			setTimeout(function() {
				$.messager.progress('close');
			}, 6000)


		});
		
	/* 	$("#btn").linkbutton({onClick: function(){
		    // $.messager.alert("哇", "被你调戏了……"); 
		    $(this).linkbutton("disable");//调用了disable方法
		}}); */
		
	})
</script>
</head>
<body>
	<h1 class="h1node" onclick="fun1()">easyUI太叼了</h1>
	<h1 class="h1node" >easyUI确实太叼了</h1>
	<hr/>
	<a id="btn" href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add',iconAlign:'right'">这是一个超级女生</a>
<hr/>
	<div>
     <input class="easyui-searchbox" data-options="width: 300,prompt: '请输入关键字',
          menu: '#mm',
          searcher: function(value,name){
               $.messager.alert('搜索', '您搜索的分类是：' + name + ',你搜索的关键字是：' + value);
          }
     ">
</div>
<hr/>
<!-- 搜索的菜单 -->
<div id="mm" style="width:100px">
     <div data-options="name:'item1'">时政新闻</div>
     <div data-options="name:'娱乐八卦',selected:true">娱乐八卦</div>
     <div data-options="name:'item3'">明星探秘</div>
</div>
<hr/>
<select class="easyui-combobox" data-options="width: 200,panelHeight: 'auto'">
          <option>红楼梦</option>
          <option>西游记</option>
          <option>金瓶梅</option>
          <option>三国演义</option>
     </select>
<hr/>
 <select class="easyui-combobox" data-options="width: 200,panelHeight: 'auto',
          url: 'famouses',method: 'get',textField: 'name',valueField: 'fid'">
     </select>
     <hr/>
      <select id="fa" class="easyui-combogrid" data-options="
          width: 200,
          value: 2,
          panelHeight: 'auto',
          panelWidth: '310',
          url: 'famouses2',
          idField: 'fid',
          textField: 'name',
          columns: [[
               {field: 'fid', title: 'ID', width: 50},
               {field: 'name', title: '名著', width: 100},
               {field: 'author', title: '作者', width: 150}
          ]]
     ">
     
     
     </select>
     <hr/>
     <input class="easyui-datebox"><br/>
	<input class="easyui-datetimebox">
</body>









</html>