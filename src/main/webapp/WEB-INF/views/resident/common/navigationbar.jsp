<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

    .denglu {
        cursor: pointer;
        padding: 5px;
    }

    .nav{
        width: 1100px;
        margin: 0 auto;
        padding:5px;
    }

    #myCarousel {
        height: 450px;
        width: 1100px;
        margin: 0 auto;
    }
</style>
<script>
    function logout() {
        $.post(getContextPath() + "/user/userLogout", null, function (result) {
            if (result.logout == "success") {
                location.href = getContextPath() + "/index";
            }
            else {
                alert("未知错误！");
            }
        })
    }
</script>
<body>
<p>
    <span class="head"><a href="${pageContext.request.contextPath}/index">社区便捷系统</a></span>
    <c:if test="${sessionScope['currentLoginUser'] == null}">
        <span class="glyphicon glyphicon-log-in pull-right denglu">&nbsp<a
                href="${pageContext.request.contextPath}/user/showLoginPage">登录</a></span>
    </c:if>
    <c:if test="${sessionScope['currentLoginUser'] != null}">
        <span class="pull-right denglu">欢迎您！住户：<a href="${pageContext.request.contextPath}/user/showUserInfo">${sessionScope['currentLoginUser'].name}</a>&nbsp<span
                class="glyphicon glyphicon-log-out">&nbsp<a onclick="logout()">登出</a></span></span>
    </c:if>
</p>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/img/nav.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/nav.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/nav.jpg" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<nav class="navbar nav" role="navigation">
    <div class="container-fluid">
        <div>
            <ul id="ul1" class="nav nav-tabs nav-justified">
                <li class="active"><a href="${pageContext.request.contextPath}/index">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/topic/queryTopicType" >话题</a></li>
                <li><a href="#">二手交易</a></li>
            </ul>
        </div>
    </div>
</nav>




</body>
</html>