<%@ page import="com.communitySystem.model.Residents" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/function.js"></script>
<html>
<head>
    <title>Title</title>
    <style>
        .mycenter{
            margin-top: 100px;
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
<body background="${pageContext.request.contextPath}/img/timg.jpg">
<jsp:include page="common/fgPswFormModal.jsp"></jsp:include>
<jsp:include page="common/cgPswFormModal.jsp"></jsp:include>
<jsp:include page="common/regNickNameModal.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(
        function () {
            $("#cgPswForm #passwordConfirm").blur(function () {
                var password1 = $("#cgPswForm #password1").val();
                var password2 = $("#cgPswForm #passwordConfirm").val();
                if(password1!=password2){
                    $("#cgPswForm #checkPassword").html("两次输入不一致!");
                    $("#confirmButton").attr("disabled",true);
                }
                else if(password1==password2==null){
                    $("#cgPswForm #checkPassword").html("");
                    $("#confirmButton").attr("disabled",true);
                }
                else if(password1.length<6||password1.length>15){
                    $("#cgPswForm #checkPassword").html("密码长度不正确");
                    $("#confirmButton").attr("disabled",true);
                }
                else {
                    $("#cgPswForm #checkPassword").html("");
                    $("#confirmButton").attr("disabled",false);
                }
            })
        }
    )

    function login() {
        var userName=$("#userName").val();
        var password=$("#loginForm #password").val();
        // alert("userName:"+userName+"  password:"+password);
        $.post(getContextPath()+"/user/userLogin",{userName:userName,password:password},function (result) {
            if(result.login=="success"){
                location.href=getContextPath()+"/index";
            }
            else if(result.login=="firstLogin"){
                $("#regNickNameFormModal").modal();
            }
            else{
                alert("用户名或密码错误！请重试!");
            }
        })
    }
    //忘记密码
    function fgPsw() {
        var name = $("#fgPswForm #name").val();
        var identity = $("#fgPswForm #identity").val();
        var tel = $("#fgPswForm #tel").val();
        var role = $("#fgPswForm #role").val();
        // alert("name:"+name+"identity:"+identity+"tel:"+tel+"role:"+role);
        $.post(getContextPath()+"/user/checkFgPswUser",{name:name, identity:identity, tel:tel, role:role},function (result) {
              if(result.exist == "yes"){
                  $("#fgPswFormModal").modal('hide');
                  // $("#cgPswForm #id").html(result.identity);
                  $("#cgPswForm #userid").html(result.userId);
                  $("#cgPswFormModal").modal();
              }
              else {
                  alert("信息填写有误！")
              }
        })
    }
    //修改密码
    function changePsw() {
        var password1 = $("#cgPswForm #password1").val();
        // alert("id:"+id+" password1:"+password1+" password2:"+password2);
            $.post(getContextPath() + "/user/userChangePsw",{password:password1},function (result) {
                if(result.changePsw == "success"){
                    alert("修改成功！");
                    $("#cgPswFormModal").modal('hide');
                }
                else{
                    alert("修改失败！");
                }
            })
    }
    //新住户取昵称
    function regNickName(){
        var nickName = $("#regNickNameForm #nickName").val();
        $.post(getContextPath() + "/user/userRegNickName",{nickName:nickName},function (result) {
            if(result.reg == "success"){
                location.href=getContextPath()+"/index";
            }
            else{
                alert("昵称已存在！");
            }
        })
    }
</script>
<form id="loginForm" method="post">
    <h1 style="padding-left:100px;color: white">欢迎使用社区便捷系统</h1>
    <div class="mycenter">
        <div class="mysign">
            <div class="col-lg-11 text-center text-info">
                <h2 style="color: white">请登录</h2>
            </div>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10"><a style="margin-left: 30px;color: white;text-decoration: underline" href="#fgPswFormModal" data-toggle="modal">忘记密码</a></div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <button type="button" class="btn btn-success col-lg-12" onclick="login()">登录</button>
            </div>
        </div>
    </div>
</form>
</body>
</html>
