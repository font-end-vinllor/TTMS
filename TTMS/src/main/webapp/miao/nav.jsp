<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-5
  Time: 下午11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css">
</head>
<body>
<!--导航-->
<div class="header-top clearfix" id="top-fix">

    <div class="header-logo fl">
        <a href="${pageContext.request.contextPath}/play/index.do">
            <img src="${pageContext.request.contextPath}/miao/images/cat.png" width="160px" height="170px">
        </a>
    </div>
    <div class="head-font">
        <img src="${pageContext.request.contextPath}/miao/images/head-font.png" width="260px" height="62px"/>
    </div>
    <div class="header-search fl clearfix">
        <div class="search-drop" id="search_drop">

        </div>

        <div class="txt-input fl">
            <input type="text" id="text_input">
        </div>
        <a href="javascript:void(0);" onclick="selectPlay()"  target="_blank">搜索</a>
    </div>

    <div class="header-nav fr clearfix">
        <div class="yuan">
        <c:if test="${login == null}">
            <a href="${pageContext.request.contextPath}/user/register.do">
                登录
            </a>
            <em></em>
            <a href="${pageContext.request.contextPath}/user/register.do">注册</a>
        </c:if>
        <c:if test="${login != null}">

            <a id="MyName"></a>
            <em></em>
            <a href="${pageContext.request.contextPath}/user/doExit.do">退出</a>
        </c:if>
        </div>
        <div class="head-cart">
            <a href="${pageContext.request.contextPath}/admin/love.do">
                <span class="iconfont" style="font-size:30px;color:firebrick">&#xe648;</span>
            </a>
        </div>
    </div>

</div>
<script src="${pageContext.request.contextPath}/miao/js/jquery.js"></script>
<script>

    var MyName = window.localStorage.getItem("success");
    $("#MyName")[0].innerHTML = MyName;

    var top_fix = document.getElementById("top-fix");
    //设置当页面向下滑动，导航栏固定
    window.onscroll = function() {
        var scrollheight = document.documentElement.scrollTop ||
            window.pageYOffset || document.body.scrollTop || 0;
        if (scrollheight >= 260) {
            top_fix.className = "header-top fixed clearfix";
        } else {
            top_fix.className = "header-top clearfix";
        }
    }


    function selectPlay(){

            var url = "${pageContext.request.contextPath}/search/searchPlay.do?text="+$("#text_input").val();
             window.location.href=url;


    }
</script>
</body>
</html>
