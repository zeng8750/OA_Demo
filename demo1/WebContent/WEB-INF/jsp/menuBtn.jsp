<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>CheckBox Tree - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="plugs/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="plugs/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="plugs/easyui/demo/demo.css">
    <link rel="stylesheet" type="text/css" href="plugs/layui/css/layui.css">
    <script type="text/javascript" src="plugs/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="plugs/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="plugs/layui/layui.all.js"></script>
   
    <style>
        .tree-file{
            background: url("plug_in/easyui/menu.png");
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<h2>设置权限</h2>
<div style="margin:10px 0;">
    <button id="openTree" class="layui-btn">设置权限</button>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>添加菜单</legend>
    <form class="layui-form" action="addMenu">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">菜单名称</label>
                <div class="layui-input-inline">
                    <input type="tel" name="menuName" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即添加</button>
            </div>
        </div>
    </form>
</fieldset>
<script type="text/javascript">

</script>
<script>
    layui.use(['layer','form'],function () {
        var $=layui.jquery;
        var layer=layui.layer;
        var form=layui.form;
        //监听提交
         form.on('submit(demo1)', function(data){
             layer.alert(JSON.stringify(data.field), {
                 title: '最终的提交信息'
             })
             return true;
         });
        //监听点击查看权限
        $("#openTree").click(function () {
            layer.open({
                type:2,
                btn:['确定'],
                title: "设置权限",
                content:"jsp/treeData.html",
                yes:function (index,content) {
                    var BtnOk=layer.getChildFrame('#btn',index);
                    BtnOk.click();
                    layer.close(index);
                }
            });
        });
    });
</script>