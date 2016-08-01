<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/31
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="cc" uri="/struts-tags" %>
<html>
<head>
    <title>列表管理</title>
    <link href="../code/jquery-easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css"/>
    <link href="../code/jquery-easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
</head>
<body class="easyui-layout">

<div data-options="region:'west',title:'导航栏',split:true" style="width:250px;">
    <ul>
        <li><a href = "Category_add">添加类别</a> </li>
        <li><a href = "Category_list">类别列表</a></li>
    </ul>
</div>

<div data-options="region:'center',title:'列表管理'" style="padding:5px;background:#eee;">
    <form method="post" action="Category_updateInput">
        <input type="hidden" name="category.id" value="<cc:property value="category.id"/>"/>
        <table>
            <tr>
                <td>name: </td>
                <td><input type="text" name="category.name" value="<cc:property value="category.name"/>"/> </td>
            </tr>
            <tr>
                <td>description: </td>
                <td><input type="text" name="category.description" value="<cc:property value="category.description"/>"/> </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="修改"></td>
            </tr>
        </table>
    </form>
</div>

<script type="text/javascript" src = "../code/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src = "../code/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src = "../code/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
</body>
</html>
