<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/29
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>BBS首页</title>
  <link rel="stylesheet" href="code/css/bootstrap.min.css">
  <script src="code/js/bootstrap.min.js"></script>
  <script src="code/js/jquery-3.0.0.min.js"></script>
  <style type="text/css">
    body{
      padding-top: 100px;
    }
    .tableClass{
      text-align: center;
    }
    .tableClass thead{
      font-size: 20px;
    }
    .tableClass .topic{
      text-align: left;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">ZZ BBS</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#"><span class = "glyphicon glyphicon-home"> Home</span></a></li>
        <li><a href="#login"><span class = "glyphicon glyphicon-user"> login</span></a></li>
        <li><a href="#register"><span class = "glyphicon glyphicon-registration-mark"> register</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#logout"><span class = "glyphicon glyphicon-off"> logout</span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container middle">
  <table class="table table-striped tableClass">
    <thead>
    <tr>
      <td colspan = "2">论坛</td>
      <td>主题</td>
      <td>文章</td>
      <td>最新文章</td>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td><span class="glyphicon glyphicon-open"> </span></td>
      <td class="topic">是打发的啥</td>
      <td>3142</td>
      <td>23414</td>
      <td>11小时前</td>
    </tr>
    </tbody>
  </table>
</div>
</body>
</html>