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
		$("#loadData").linkbutton({onClick:function(){
			/* $("#p").panel({
				href:'fun5'//远程数据加载到panel
			});
			 */
			/*  $("#win").window({
				 closed:false
			 }) */
			 
			var v = $("#vv").validatebox("isValid");
		     if(v){
		          $.messager.alert('tip',"我爱你");
		     }else{
		          $.messager.alert('tip',"Me too!");
		     }
		}});
		
		/* $.extend($.fn.validatebox.defaults.rules, {    
		    equals: {    
		        validator: function(value,param){    
		            return value == $(param[0]).val();    
		        },    
		        message: 'Field do not match.'   
		    }    
		});  */ 

	})
</script>
</head>
<body>
	<div id="p" class="easyui-panel" title="My Panel"     
        style="width:500px;height:150px;padding:10px;background:#fafafa;"   
        data-options="href:'fun1',iconCls:'icon-save',closable:true,    
                collapsible:true,minimizable:true,maximizable:true">   
    <p>panel content.</p>   
    <p>panel content.</p>   
</div> 
<hr/>
<a id="loadData"  class="easyui-linkbutton">立即加载数据....</a>
<HR/>
<div id="win" class="easyui-window" title="My Window"
          style="width: 600px; height: 400px"
          data-options="iconCls:'icon-save',modal:false,
          href: 'fun5',closed:true">Window Content
     </div>
<hr/>
<input id="vv" class="easyui-validatebox" data-options="required:true,validType:'url'"><br /><br/>
<input id="vv2" class="easyui-validatebox" data-options="required:true,validType:'length[6,20]'">
<hr/>
<input id="pwd" name="pwd" type="password" class="easyui-validatebox" data-options="required:true" />   
<input id="rpwd" name="rpwd" type="password" class="easyui-validatebox"     
    required="required" validType="equals['#pwd']" data-options="tipPosition:'bottom'"/>  
    
    <HR/>
<div id="win2" class="easyui-window" title="My Window"
          style="width: 600px; height: 400px"
          data-options="iconCls:'icon-save',modal:false,
          href: 'fun3'"></div>
<hr/>
</body>

</html>





