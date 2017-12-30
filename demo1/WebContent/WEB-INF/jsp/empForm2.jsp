<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/themes/default/easyui.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/themes/icon.css"/>">

<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery.easyui.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/easyui-lang-zh_CN.js"/>"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<body>
     <script type="text/javascript">
          $("#log").linkbutton({onClick:function(){
        	  $("#ffff").form("submit");
          }});
          $("#clear").linkbutton({onClick: function(){
              $("#ffff").form("clear");              
         }});
          $("#reset").linkbutton({onClick: function(){
              $("#ffff").form("reset");
         }});
          $("#ffff").form("load", "to-init");
     </script>
     <form id="ffff" action="form" method="post">
     	<div>
     		<input class="easyui-textbox" type="text" name="name" value="admin"
     			data-options="required:true,label:'Name',width:200"/>
     	</div>
     	<div>
     		<input class="easyui-textbox" type="text" name="email" value="admin"
     			data-options="validType:'email',label:'Email',width:200"/>
     	</div>
     	<div>
     		<a class="easyui-linkbutton" id="log">登录</a>
     		<a class="easyui-linkbutton" id="clear">清空</a>
     		<a class="easyui-linkbutton" id="reset">重置</a>
     	</div>
     </form>
</body>
</html>