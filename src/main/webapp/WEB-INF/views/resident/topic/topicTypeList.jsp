<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<jsp:include page="../common/navigationbar.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function () {
        $("#ul1 li").removeClass("active");
        $("#ul1>li").eq(1).addClass("active");
    })
</script>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row">
                <c:forEach items="${types}" var="t">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img style="height: 230px;width: 300px" alt="300x200" src="${pageContext.request.contextPath}${t.typePic}" />
                                <div class="caption">
                                    <h3 style="font-weight: bold">
                                        ${t.typeName}
                                    </h3>
                                    <p id="p1">
                                        ${t.typeInfo}
                                    </p>
                                    <p style="text-align: center">
                                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/topic/queryTopicByType?topicTypeId=${t.typeId}">进入专题</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>