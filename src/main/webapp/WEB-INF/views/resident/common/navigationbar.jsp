<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<html>
<head>
    <title>HomePage</title>
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/function.js"></script>
</head>
<body>
<script>
    function logout() {
        $.post(getContextPath()+"/user/userLogout.do",null,function (result) {
            if(result.logout=="success"){
                location.href=getContextPath()+"/index";
            }
            else{
                alert("未知错误！");
            }
        })
    }
</script>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">社区便捷系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav" style="padding-left:500px">
                <li class="active"><a href="#">首页</a></li>
                <li><a href="#">话题</a></li>
                <li><a href="#">二手交易</a></li>
            </ul>
            <c:if test="${sessionScope['currentLoginUser'] == null}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
            </c:if>
            <c:if test="${sessionScope['currentLoginUser'] != null}">
                <ul class="nav navbar-nav navbar-right">
                    <li><a>您好！${sessionScope['currentLoginUser'].role}：</a></li>
                    <li><button data-toggle="dropdown" style="margin-top:10px">${sessionScope['currentLoginUser'].name}<span class="caret" ></span></button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">我的信息</a></li>
                            <li><a href="#">我的话题</a></li>
                            <li><a href="#">我的</a></li>
                        </ul>
                    </li>
                    <li><a href="#" onclick="logout()"><span class="glyphicon glyphicon-log-out"></span>登出</a></li>
                </ul>
            </c:if>
        </div>
    </div>
</nav>
</body>
</html>
