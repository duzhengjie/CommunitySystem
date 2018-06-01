<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/function.js"></script>
</head>
<style>
    .head {
        font-weight: bold;
        font-family: '黑体';
        font-size: 28px;
        font-style: oblique;
        color: #9d9d9d;
        padding: 10px;
    }

    .div04{
        border-right: 3px solid #f9f9f9;
    }
</style>
<script type="text/javascript">

</script>
<body style="background-color:#f9f9f9;">
<p>
    <span class="head"><a href="${pageContext.request.contextPath}/index">社区便捷系统</a></span>
<div class="container" style="background-color: white" >
    <div class="col-md-2 div04">
    <h4>个人信息</h4>
<div class="list-group">
    <ul class="nav">
        <li><a href="#home" data-toggle="tab">修改个性签名</a></li>
        <li><a href="#home2" data-toggle="tab"><div onclick="showInfo()">头像设置</div></a></li>
        <li><a href="">修改密码</a></li>
    </ul>
</div>
    <h4>我的话题</h4>
    <div class="list-group">
        <ul class="nav">
            <li><a href="">新发布</a></li>
            <li><a href="">已发布话题</a></li>
            <li><a href="">查看评论</a></li>
        </ul>
    </div>
    <h4>我的二手交易</h4>
    <div class="list-group">
        <ul class="nav">
            <li><a href="">已发布交易信息</a></li>
            <li><a href="">新发布</a></li>
            <li><a href="">查看留言</a></li>
        </ul>
    </div>
    </div>
    <div class="tab-content">
        <div class="tab-pane fade in active" id="home">
             <p>菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
        </div>
        <div class="tab-pane fade" id="home2">
             <p></p>
        </div>
    </div>
</div>
</body>
</html>
