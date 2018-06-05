<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/function.js"></script>
    <title>Title</title>

</head>
<style>
    .div03 {
        border-left: 5px solid white;
    }

    #img01 {
        margin-top: 50px;
        width: 120px;
        height: 120px;
    }

    .div03 img {
        padding: 5px;
        width: 200px;
        height: 140px;
        margin-top: 10px;
    }

   .container ul {
        list-style: none; /* 去掉ul前面的符号 */
    }

    .text-center p {
        margin-top: 10px;
        font-family: '黑体';
        font-size: 20px;
    }

    /*评论样式*/
    .container{
        width: 1000px;
    }
    .commentbox{
        width: 850px;
        margin: 20px auto;
    }
    .mytextarea {
        width: 100%;
        overflow: auto;
        word-break: break-all;
        height: 100px;
        color: #000;
        font-size: 1em;
        resize: none;
    }
    .comment-list{
        width: 850px;
        margin: 20px auto;
        clear: both;
        padding-top: 20px;
    }
    .comment-list .comment-info{
        position: relative;
        margin-bottom: 20px;
        margin-bottom: 20px;
        border-bottom: 1px solid #ccc;
    }
    .comment-list .comment-info header{
        width: 10%;
        position: absolute;
    }
    .comment-list .comment-info header img{
        width: 100%;
        border-radius: 50%;
        padding: 5px;
    }
    .comment-list .comment-info .comment-right{
        padding:5px 0px 5px 11%;
    }
    .comment-list .comment-info .comment-right h3{
        margin: 5px 0px;
    }
    .comment-list .comment-info .comment-right .comment-content-header{
        height: 25px;
    }
    .comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span{
        padding-right: 2em;
        color: #aaa;
    }
    .comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,.send,.reply-list-btn{
        cursor: pointer;
    }
    .comment-list .comment-info .comment-right .reply-list {
        border-left: 3px solid #ccc;
        padding-left: 7px;
    }
    .comment-list .comment-info .comment-right .reply-list .reply{
        border-bottom: 1px dashed #ccc;
    }
    .comment-list .comment-info .comment-right .reply-list .reply div span{
        padding-left: 10px;
    }
    .comment-list .comment-info .comment-right .reply-list .reply p span{
        padding-right: 2em;
        color: #aaa;
    }
</style>

<body>
<jsp:include page="../common/navigationbar.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function () {
        $("#ul1 li").removeClass("active");
        $("#ul1>li").eq(1).addClass("active");
        $('#myCarousel').remove();
    })
</script>
<div class="container">
    <h3 class="text-left" style="margin-left: 50px">hello</h3>
   <div>
       <ul>
           <li>
               <div style="background-color: #f9f9f9;overflow: hidden">
                   <div class="col-md-2 text-center"><img id="img01" src="${pageContext.request.contextPath}/img/pig.jpg">
                       <p>Tonny</p></div>
                   <div class="col-md-10 div03">
                       <p>sdfaasdfasdfasdfasdf</p>
                       <img src="${pageContext.request.contextPath}/img/pig.jpg"><br>

                       <p class="pull-right">2018-5-21 22:43</p>



<c:if test="${!empty sessionScope.User}">
                           <div class="commentbox">
                               <form action="${pageContext.request.contextPath}/topic/addComment" method="post" role="form">

                               <textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content" name="content"></textarea>

                                   <button type="submit" style="margin-top: 10px" class="btn btn-info pull-right">评论</button>
                               </form>
                           </div>
</c:if>
    <div class="comment-list">

        <c:forEach items="${co }" var="co" varStatus="i">
        <div class="comment-info">
            <header><img src="${pageContext.request.contextPath}/img/pig.jpg" style="width:60px;height:60px;"></header>
            <div class="comment-right">
                <p>${co.commentId}</p>
                <div class="comment-content-header"><span><i class="glyphicon glyphicon-time"></i>${co.commentTime}</span></div>
                <p class="content">${co.commentContent}</p>
                <div class="comment-content-footer">
                    <div class="row">
                        <div class="col-md-10">
                            <div onclick="zan(${co.commentId},${co.commentZan})">  <span class="glyphicon glyphicon-heart"> ${co.commentZan}</span></div><span><i class="glyphicon glyphicon-globe"></i> chrome 55.0.2883.87</span>
                        </div>
                        <c:if test="${!empty sessionScope.User}">
                        <div class="col-md-2"><span class="reply-btn" data-toggle="collapse" data-target="#demohf${co.commentId}">回复</span></div>
                        </c:if>

                        <div id="demohf${co.commentId}" class="replybox collapse"  ><form action="${pageContext.request.contextPath}/topic/addReply" method="post" role="form">
                            <input id="comId" name="comId" value="${co.commentId}" type="text" style="display: none" />
                            <textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="reply" name="reply"></textarea>
                            <button type="submit" class="btn btn-info pull-right">回复</button>
                        </form></div>

                    </div>
                </div>
                <div class="reply-list">
            <c:forEach items="${rep }" var="r" varStatus="i">
                    <c:if test="${r.commentId==co.commentId}">
                    <div class="reply">
                        <div><a href="javascript:void(0)">${sessionScope.User.username}</a>:<a href="javascript:void(0)">@匿名</a><span>${r.replyContent}</span></div>
                        <p><span>${r.replyTime}</span>
                    </div>
                    </c:if>
            </c:forEach>

                </div>
            </div>
        </div>
        </c:forEach>

    </div>

                   </div>
               </div>
           </li>
       </ul>
   </div>
</div>


</body>
</html>
