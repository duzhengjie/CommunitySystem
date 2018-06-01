<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
                       <img src="${pageContext.request.contextPath}/img/pig.jpg"><br>
                       <img src="${pageContext.request.contextPath}/img/pig.jpg"><br>
                       <p class="pull-right">2018-5-21 22:43</p>
                   </div>
               </div>
           </li>
       </ul>
   </div>
</div>
</body>
</html>
