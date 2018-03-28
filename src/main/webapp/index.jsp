<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap-theme.min.css">
<head>
    <title>用户登录</title>
    <style>
        body {
            background:url(img/timg.jpg) #f8f6e9;
        }
        .mycenter{
            margin-top: 150px;
            margin-left: auto;
            margin-right: auto;
            height: 350px;
            width:500px;
            padding: 5%;
            padding-left: 5%;
            padding-right: 5%;
        }
        .mycenter mysign{
            width: 440px;
        }
        .mycenter input,checkbox,button{
            margin-top:2%;
            margin-left: 10%;
            margin-right: 10%;
        }
        .mycheckbox{
            margin-top:10px;
            margin-left: 40px;
            margin-bottom: 10px;
            height: 10px;
        }
    </style>
</head>
<body>
<h1 style="color:white;margin-left:50px;margin-top:5px">欢迎使用社区便捷系统</h1>
<form action="login.php" method="post">
    <div class="mycenter">
        <div class="mysign">
            <div class="col-lg-10">
                <input type="text" class="form-control" name="username" placeholder="请输入用户名" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="password" class="form-control" name="password" placeholder="请输入密码" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10 mycheckbox checkbox">
                <input type="checkbox" class="col-lg-1">记住密码</input>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <button type="button" class="btn btn-lg btn-primary col-lg-12">登录</button>
            </div>
        </div>
    </div>
</form>
</body>