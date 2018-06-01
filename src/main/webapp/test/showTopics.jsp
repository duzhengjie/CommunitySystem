<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 52641
  Date: 2017/12/20
  Time: 8:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../common/userTopNav.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function () {
        $("#nav li").removeClass("active");
        $("#nav>li").eq(1).addClass("active");
    })
</script>
<div class="row-fluid">

    <div class="container-fluid">
        <div class="panel-group" >
            <div class="panel panel-default">
                <div id="collapseOne" class="panel-collapse collapse in">
                    <div class="panel-body">
                                <div class="col-md-12 col-sm-12">
                                    <div class="row rowStyle">
                                        <div class="imgDivStyle pull-left">
                                            <img src="../../../images/a.jpg">
                                        </div>
                                        <div class="pull-left divContent">
                                            <h2>
                                                    ${g.titleName}
                                            </h2>
                                            <p>
                                                    ${g.titleContent}
                                            </p>
                                            <div class="form-inline">
                                                <span>${g.titleDate}</span>
                                                <a class="btn" href="#">浏览话题 »</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        <c:if test="${empty titles}">
                            <p style="font-size: 50px">该主题还未发布任何话题哦！</p>
                            <img src="../../../images/pig.jpg"/>
                        </c:if>
                    </div>
                </div>
            </div>



            <div class="pager">
                <ul>
                    <li>
                        <a href="#">上一页</a>
                    </li>
                    <li>
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">下一页</a>
                    </li>
                </ul>
            </div>
        </div>
</body>
</html>
