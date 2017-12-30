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
          $(function(){
        	//在提交表单之间验证数据的有效性，如果返回false提交会阻止
               $("#fff").form({onSubmit: function(xyy){   
            	   xyy.id='1';
            	   xyy.names='xyy2';
                         return $(this).form("validate");
                    },
                    //表单提交成功后
                    success: function(data){
                         $.messager.alert("提交结果", "数据已提交");
                    }
               });
              
               $("#log").linkbutton({onClick: function(){
                    $("#fff").form("submit");
               }});
              
               $("#clear").linkbutton({onClick: function(){
                    $("#fff").form("clear");              
               }});
                             
               $("#reset").linkbutton({onClick: function(){
                    $("#fff").form("reset");
               }});
              //进入表单页面时去远程加载数据并绑定到表单元素当中：个人中心：修改资料时会用到
               $("#fff").form("load", "to-init");
          });
     </script>
     
     <form id="fff" method="post" action="forms">
          <div style="padding: 3px;">
               <input class="easyui-textbox" type="text" name="name" value="admin"
                    data-options="required:true, label: 'Name：', width: 200" />
          </div>
          <div style="padding: 3px;">
               <input class="easyui-textbox" type="text" name="email"
                    data-options="required:true,validType:'email', label: 'Email：', width: 200" />
          </div>
          <div>
               <a class="easyui-linkbutton" id="log">登陆</a>
               <a class="easyui-linkbutton" id="clear">清除</a>
               <a class="easyui-linkbutton" id="reset">重置</a>
          </div>
     </form>
</body>
</html>