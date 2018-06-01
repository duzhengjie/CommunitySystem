<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
        .gonggao_left {
            width: 75%;
            float: left;
        }

        .gonggao_right {
            width: 24%;
            float: right;
        }
</style>
<body>
<jsp:include page="common/navigationbar.jsp"></jsp:include>
<div class="container" style="width: 1000px;margin: 0 auto">
    <div class="col-sm-5">
        <div class="row">
            <div>
                <ul>
                    <li>12313213</li>
                </ul>
            </div>
        </div>
    </div>
    <!--公告面板-->
    <div class="col-sm-7">
        <div class="row">
            <div style="width: 500px;height: 500px;">
                <div class="panel panel-default">
                    <div class="panel-footer">
                        <p style="font-size: 20px;text-align: center">公告栏</p>
                    </div>
                    <div class="panel-body">
                        <div class="gonggao_left">
                            <ol>
                                <c:if test="${!empty gonggaoList}">
                                    <c:forEach items="${gonggaoList}" var="g">
                                        <li style="cursor:pointer"><a>${g.title}</a></li>
                                        <span>. . . . . . . . . . . . . . . . . . . . . .</span>
                                    </c:forEach>
                                </c:if>
                            </ol>
                        </div>
                        <div class="gonggao_right">
                            <ul style="list-style: none;color: red">
                                <c:if test="${!empty gonggaoList}">
                                    <c:forEach items="${gonggaoList}" var="g">
                                        <li>${g.dateString}</li>
                                        <span><br></span>
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
