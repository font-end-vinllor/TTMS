<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>search</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/search.css">
</head>

<body>
    <!--导航-->
   <%@include file="nav.jsp"%>
    <div class="newsearch">
        <div class="nsearch_color"></div>
        <div class="nsearch_mid">

            <div class="nsearch_bg">
                <div class="nsearch_info">
                    <div class="topsearch">
                        <div class="searchshadow">
                            <div class="selctsearch">
                                <strong>全部</strong>
                                <span>｜</span>
                            </div>
                            <div class="selectshow"></div>
                            <input type="text" class="text" placeholder="${text}" readonly />
                            <input type="button" class="button" />
                        </div>
                    </div>
                </div>
                <div class="nsearch_con">
                    <div class="nsearch_tab">
                    </div>
                    <div class="nsearch_other">
                        <ul class="other_list">
                            <c:forEach var="p" items="${plays}">
                            <li>
                                <h3>
                                    <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p.play_id}">
                                        <span>${p.play_name}</span>

                                    </a>
                                </h3>
                                <div class="other_mid clearfix  ">
                                    <a class="pic" href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p.play_id}">
                                        <img src="${p.play_image}" alt="${p.play_name}" width="102px" height="142px"/>
                                    </a>
                                    <div class="other_txt">

                                        <p>${p.play_time}分钟</p>
                                        <p>导演：${p.play_author}</p>
                                        <p>编剧：${p.play_editor}</p>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer-->

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