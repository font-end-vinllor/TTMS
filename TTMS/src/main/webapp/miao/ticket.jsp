<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-13
  Time: 上午1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>ticket</title>
    <style>
        .ticket {
            width: 1000px;
            height: 1400px;
            border: 1px solid #999999;
            position: relative;
            background-image: url("${pageContext.request.contextPath}/miao/images/ticket1.jpg");
            background-size: cover;
        }

        .ticket .info {
            position: absolute;
            width: 50%;
            height: 40%;
            left: 25%;
            top: 40%;
            background: #f1eaea;
            z-index: 10;
            padding-left: 30px;
            padding-top: 30px;
        }

        .info span {
            display: block;
            font-size: 25px;
            color: #333;
            line-height: 30px;
        }
    </style>
</head>

<body>
<div class="ticket">
    <div class="info">
        <span>演出厅：${sche.studio_name}</span>
        <c:forEach var="s" items="${seat}">
            <p style="font-size: 20px">${s}</p>
        </c:forEach>
        <span>${sche.schedule_time}－－－<fmt:formatDate value="${sche.schedule_date}" dateStyle="medium"
                                                      timeZone="timezone"/></span>
        <span>${play.play_name}</span>
        <span>票数：${seat.size()}&nbsp;&nbsp;&nbsp;&nbsp;票价：${sche.price}</span>
        <span>取票码：${show_code}</span>
    </div>
</div>
</body>
</html>
