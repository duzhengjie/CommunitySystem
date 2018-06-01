<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .div01{
            padding-top:15px;
        }
        .menu{
            background-color:#f9f9f9;
            margin: 0 auto;
            margin-top: 20px;
            padding: 20px;
            padding-bottom: 25px;
        }

        .div02 {
            padding-left: 15px;
            padding-right: 15px;
        }

        div.menu ul {
            list-style: none; /* 去掉ul前面的符号 */
            margin: 0px; /* 与外界元素的距离为0 */
            padding: 0px; /* 与内部元素的距离为0 */
            width: auto; /* 宽度根据元素内容调整 */
        }

        /* 所有class为menu的div中的ul中的li样式 */
        div.menu ul li {
            float: left; /* 向左漂移，将竖排变为横排 */
            padding: 5px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/navigationbar.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function () {
        $("#ul1 li").removeClass("active");
        $("#ul1>li").eq(1).addClass("active");
    })
</script>

<div class="container" style="position: relative">
    <div class="col-md-8 col-md-offset-2 div01">
        <form role="form">
            <div>
                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
						<button class="btn btn-default" type="button">
							Go!
						</button>
					</span>
                </div>
            </div>
        </form>
    </div>
    <div class="col-md-8 col-md-offset-2">
        <c:if test="${!empty topics}">
            <c:forEach items="${topics}" var="t">
                <div class="menu">
                    <div>
                        <a href="${pageContext.request.contextPath}/topic/queryTopicDetail">${t.topicName}</a>
                    </div>
                    <div>
                        <p>${t.topicContent}</p>
                    </div>
                    <div class="row div02">
                        <ul>
                            <c:forEach items="${t.picList}" var="tp">
                                <li><img width="180" height="105" src="${pageContext.request.contextPath}${tp.picUrl}">
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <p class="pull-right">
                        <span class="glyphicon glyphicon-user">${t.topicAnnouncer}</span>&nbsp&nbsp
                        <span class="time">${t.formatTime}</span>&nbsp&nbsp<span
                            class="glyphicon glyphicon-eye-open">&nbsp${t.viewCount}</span>
                    </p>
                </div>
            </c:forEach>
        </c:if>
    </div>
    <c:if test="${sessionScope['currentLoginUser']!= null}">
    <jsp:include page="../common/leftList.jsp"></jsp:include>
    </c:if>
</div>
</body>
</html>
