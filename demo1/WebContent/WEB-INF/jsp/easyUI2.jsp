<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/themes/default/easyui.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/themes/icon.css"/>">

<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery.easyui.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/easyui-lang-zh_CN.js"/>"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").linkbutton({
			onClick : function() {

				$("#win").window("open");
			}});
		
		$.extend($.fn.validatebox.defaults.rules, {
			minLength : {
				validator : function(value, param) {
					return value.length >= param[0];
				},
				message : 'Please enter at least {0} characters.'
			}
		});
		
		
		$("#btnvv3").linkbutton({onClick:function(){
			var v = $("#vv3").validatebox("isValid");
		     if(v){
		          $.messager.alert('tip',"我爱中国");
		     }else{
		          $.messager.alert('tip',"I hate China");
		     }
			
		}});
			
			
		    
		
			

	})
</script>
</head>
<body>
	<div id="p" class="easyui-panel"
		data-options="
          title:'中科韬睿',
          width: 500,
          height: 400,
          iconCls: 'icon-add',
          collapsible: true,
          minimizable: true,
          maximizable: true,
          closable: true,
          tools: '#tt',
          href: 'fun1',
          loadingMessage: '正在加载……',
          bodyCls: 'x'
     ">

	</div>
	<hr />

	<a id="btn" href="#" class="easyui-linkbutton"
		data-options="plain:true,iconCls:'icon-add',iconAlign:'right'">打开窗口咯</a>

	<div id="win" class="easyui-window"
		data-options="
               width: 400,
               height: 320,
               title: '新增员工',
               iconCls: 'icon-add',
               href: 'fun1',
               bodyCls: 'x',
               closed: true,
               modal: true,
               draggable: true              
          "></div>
	<hr />
	<input id="vv" class="easyui-validatebox"
		data-options="required:true,validType:'email'">
	<input id="vv2" class="easyui-validatebox"
		data-options="required:true,validType:'length[6,20]'">
	<hr />
	<input id="vv3" class="easyui-validatebox"
		data-options="required:true,validType:'minLength[5]'">
	<a id="btnvv3" href="#" class="easyui-linkbutton"
		data-options="plain:true,iconCls:'icon-add',iconAlign:'right'">判断验证</a>
	<hr/>
	<div style="padding-top: 10px; border: 1px gray solid;width:200px">
		<form action="sumbit" method="post" id="ff">
			<input class="easyui-textbox" name="name"
				data-options="label: '用户名',labelPosition: 'left',	required: true">
			<br/>
			<input class="easyui-textbox" name="pass"
				data-options="label: '密码',	labelPosition: 'left',required: true">
				<br/>
			<div>
				<a id="btn_f" class="easyui-linkbutton" data-options="iconCls: 'icon-add'">提交</a>
			</div>
		</form>
	</div>	
	<hr/>
	<div id="win" class="easyui-window" data-options="
          width: 400,
          height: 330,
          title: '新增员工',
          iconCls: 'icon-add',
          href: 'fun3',
          bodyCls: 'x',
          modal: true,
          draggable: true              
     "
     ></div>
</body>

</html>