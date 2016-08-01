<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/30
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="../code/jquery-easyui/themes/bootstrap/easyui.css" rel="stylesheet" type="text/css"/>
    <link href="../code/jquery-easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
    <title>管理员登陆</title>
    <style>
        #login {
            padding:6px 0 0 0;
        }
        p {
            height:22px;
            line-height:22px;
            padding:4px 0 0 25px;
        }
        .textbox {
            height:22px;
            padding:0 2px;
        }
        #btn {
            text-align:center;
        }
        .easyui-linkbutton {
            padding:0 10px;
        }
    </style>
</head>
<body>
<div id="login">
    <p>管理员帐号：<input type="text" id="manager" class="textbox"></p>
    <p>管理员密码：<input type="password" id="password" class="textbox"></p>
</div>

<div id="btn">
    <a href="#" class="easyui-linkbutton">登录</a>
</div>

<script type="text/javascript" src = "../code/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src = "../code/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src = "../code/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src = "../code/js/userLogin.js"></script>
</body>
</html>
