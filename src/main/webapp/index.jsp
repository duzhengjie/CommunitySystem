<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>test</title>
    <script type="text/javascript" src="jquery/jquery-3.3.1.min.js"></script>
</head>
<script>
    function test(){
        alert("方法执行前！");
        $.post(getContextPath()+"/user/showUser.do",{id:1},function (data) {
            alert("数据:"+data);
        })
    }
    function getContextPath(){
        var  webroot=document.location.href;
        webroot=webroot.substring(webroot.indexOf('//')+2,webroot.length);
        webroot=webroot.substring(webroot.indexOf('/')+1,webroot.length);
        webroot=webroot.substring(0,webroot.indexOf('/'));
        var contextPath="/"+webroot;
        return contextPath;
    }
</script>
<body>
<p id="test">测试</p>
<button type="button" onclick="test()">button</button>
</body>
</html>
