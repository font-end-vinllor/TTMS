<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>order</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/order1.css">

</head>

<body>
<!-- 导航 -->
<%@include file="nav.jsp" %>

<%--    new   Order--%>

<div class="Xcontent">
    <ul class="Xcontent01">
        <div class="Xcontent06"><img src="${order_play.play_image}" width="310px" height="460px"></div>
        <ol class="Xcontent13">
            <div class="Xcontent14"><a href="#">
                <p>${order_play.play_name}</p>
            </a></div>

            <div class="Xcontent16">
                <p></p>
            </div>
            <div class="Xcontent17">
                <p class="Xcontent18">售价</p>
                <p class="Xcontent19">￥<span>${order_sche.price}</span></p>
                <div class="Xcontent20">
                    <p class="Xcontent21">日期</p>

                    <p class="Xcontent22"><fmt:formatDate value="${order_sche.schedule_date}" dateStyle="medium"
                                                          timeZone="timezone"/>
                        </p>
                </div>
                <div class="Xcontent23">
                    <p class="Xcontent24">演出时间&nbsp;&nbsp;:</p>&nbsp;&nbsp;&nbsp;&nbsp;
                    <p class="Xcontent25">${order_sche.schedule_time}
                    </p>
                </div>
                <div class="Xcontent23">
                    <p class="Xcontent24">演出厅&nbsp;&nbsp;:</p>&nbsp;&nbsp;&nbsp;&nbsp;
                    <p class="Xcontent25">${order_sche.studio_name}
                    </p>
                </div>
                <div class="Xcontent23">
                    <p class="Xcontent24">座位&nbsp;&nbsp;:</p>&nbsp;
                    <c:forEach var="s" items="${showSeats}">
                        <p class="Xcontent25">${s[0]}排${s[1]}座
                        </p>
                    </c:forEach>

                </div>
                <div class="Xcontent23">
                    <p class="Xcontent24">总价&nbsp;&nbsp;:</p>
                    <p class="Xcontent25">${showSeats.size()*order_sche.price}
                    </p>
                </div>

            </div>

            <div class="Xcontent34"><a class="posiA" href="${pageContext.request.contextPath}/order/pay.do?play_id=${order_play.play_id}&schedule_id=${order_sche.schedule_id}&seats=${seats[0]},${seats[1]},${seats[2]},${seats[3]},${seats[4]}">确认支付</a>
            </div>

        </ol>
    </ul>
</div>


<%--    bottom--%>
<div class="bottom clearfix">
    <div class="container">
        <div class="filmtipbox first">
            <div class="moviecard">
                <div class="cardbg"></div>
                <div class="cardbg1"></div>
                <div class="tipinfo">
                    <ul>
                        <li>加入我们</li>
                        <li>站务论坛</li>
                        <li>社区准则</li>
                        <li>隐私政策</li>

                    </ul>
                    <ul>
                        <li>联系我们</li>
                        <li>问题反馈</li>
                        <li>网站地图</li>
                        <li>English</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="filmtipbox">
            <h2>如何在线选座购票：</h2>
            <p></p>
        </div>
        <div class="filmtipbox filmtipbottom">
            <b>影院商务合作：</b>
            <span>影院开业</span><span class="mline">|</span>
            <span>影讯合作 </span><span class="mline">|</span>
            <span> 在线购票</span><span class="mline">|</span>
        </div>
    </div>
</div>
<div class="db_foot clearfix">
    <p>
        <span class="mr12 ml12">北京动艺时光网络科技有限公司</span> Copyright 2006-2019 Mtime.com Inc. All rights reserved.
        <br/>
        <span class="mr12">京ICP证050715号</span>
        <span class="mr12">京ICP证050715号</span>
        <span class="mr12">网络视听许可证0108265号</span>
        <span class="mr12">网络文化经营许可证</span>
        <span class="mr12">广播电视节目制作经营许可证(京)字第1435号</span>
        <span>京公网安备：110105000744号</span>
    </p>
</div>
</body>

</html>