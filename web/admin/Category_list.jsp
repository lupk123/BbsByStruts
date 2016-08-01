<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/31
  Time: 10:02
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
    <table class="easyui-datagrid">
        <thead>
        <tr>
            <th data-options="field:'id'">Id</th>
            <th data-options="field:'name'">Name</th>
            <th data-options="field:'description'">描述</th>
            <th data-options="field:'operation'">操作</th>
        </tr>
        </thead>
        <tbody>
        <cc:iterator value="categories" var="c">
            <tr>
                <td>
                    <cc:property value="#c.id"/>
                </td>
                <td>
                    <cc:property value="#c.name"/>
                </td>
                <td>
                    <cc:property value="#c.description"/>
                </td>
                <td>
                    <a href = "Category_update?id=<cc:property value="#c.id"/>">修改</a>
                    <a href = "Category_delete?id=<cc:property value="#c.id"/>"> 删除</a>
                </td>
            </tr>
        </cc:iterator>
        </tbody>
    </table>
</div>

<script type="text/javascript" src = "../code/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src = "../code/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src = "../code/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<%--<script type="text/javascript" src = "../code/js/userLogin.js"></script>--%>
</body>
</html>
