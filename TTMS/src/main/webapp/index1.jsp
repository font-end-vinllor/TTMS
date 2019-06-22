<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>喵喵电影</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/index1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/upcoming.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/slide.css">
</head>

<body>

<%@ include file="miao/nav.jsp" %>
<!--轮播图-->
<div id="show" rel="autoPlay">
    <div class="img">
            <span>
                <c:forEach var="play" items="${playings}" begin="0" end="4">

                <a target="_blank">
                        <div class="pic-info">
                                <em class="hotfilm">正在热映</em>
                                <h2>

                                        ${play.play_name}
                                </h2>
                               <p class="text-info">
                                    ${play.play_time}分钟&nbsp;-${play.play_type}
                                </p>
                                <p class="text-info">
                                        <i class="ico_ydot"></i>
                                        ${play.play_desc}

                                    </p>
                        </div>

                    <img src="${play.play_image}" width=960px height=420px/>
                </a>

                </c:forEach>
            </span>
        <div class="masks mk1"></div>
        <div class="masks mk2"></div>
    </div>

</div>
<!--正在热映-->
<div class="isthebox">
    <div class="container">
        <!--ｎａｖ-->
        <div class="title clearfix">
            <h2 class="f1">
                正在热映<span>42</span>部
            </h2>
            <!-- 八个链接 -->
            <div class="hotplaymenu" id="menu">
                <a class="on">全部<span>|</span></a>
                <c:forEach var="playType" items="${types}" begin="0" end="5">
                    <a>${playType}<span>|</span></a>
                </c:forEach>
                <a>${types.get(6)}</a>

            </div>
        </div>

        <!--List-->
        <!-- 全部页面对应的列表 -->
        <div class="hotplaycontent item">
            <!--全部页面-->
            <div>
                <div class="moviebox clearfix">

                    <div class="firstmore">
                        <div class="more-dt">
                            <a title="${playings.get(0).play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${playings.get(0).play_id}">
                                <img width="270px" height="360px"
                                     src="${playings.get(0).play_image}"
                                     alt="${playings.get(0).play_name}"/>
                            </a>
                        </div>
                        <div class="more-dd">
                            <h2>
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${playings.get(0).play_id}">${playings.get(0).play_name}</a>
                            </h2>
                            <h3>
                                <a> ${playings.get(0).play_type}</a>
                            </h3>
                            <p class="hotmovie">
                                <i class="ico_dot"></i> ${playings.get(0).play_desc}
                            </p>
                            <div class="movie-btn">
                                <strong>29</strong> 元起
                                <a class="ticket"
                                   href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${playings.get(0).play_id}">选座购票</a>
                            </div>
                        </div>

                    </div>

                    <div class="othermore">
                        <ul class="clearfix">
                            <c:forEach var="p" items="${playings}" begin="5" end="10">
                                <li class="clearfix">
                                    <a title="${p.play_name}"
                                       href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p.play_id}"
                                       class="picbox">
                                        <img src="${p.play_image}"
                                             alt="${p.play_name}"/>
                                    </a>
                                    <div class="info">
                                        <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p.play_id}">${p.play_name}</a>
                                        <div class="info-head">${p.play_time}分钟 -
                                            <a>${p.play_type}</a>
                                        </div>
                                        <div class="hot">
                                            <i class="ico_dot"></i> ${p.play_desc}
                                        </div>
                                        <div class="btns">
                                            <a class="ticket"
                                               href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p.play_id}">选座购票</a>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="moviemore none" id="moviemore">
                    <div class="othermore">
                        <ul class="clearfix">
                            <c:forEach var="p" items="${playings}" begin="11">
                                <li class="clearfix">
                                    <a title="${p.play_name}"
                                       href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p.play_id}"
                                       class="picbox">
                                        <img src="${p.play_image}"
                                             alt="${p.play_name}"/>
                                    </a>
                                    <div class="info">
                                        <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p.play_id}">${p.play_name}</a>
                                        <div class="info-head">${p.play_time}分钟 -
                                            <a> ${p.play_type}</a>
                                        </div>
                                        <div class="hot">
                                            <i class="ico_dot"></i> ${p.play_desc}
                                        </div>
                                        <div class="btns">
                                            <a class="ticket"
                                               href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p.play_id}">选座购票</a>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="imore">
                    <a class="curr" id="imore">
                        <i></i>更多
                    </a>
                </div>
            </div>

        </div>
        <!--导航七个链接对应的页面　每一个moviemore对应一个链接额列表-->
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p1" items="${list1}" begin="0">
                        <li class="clearfix">
                            <a title="${p1.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p1.play_id}"
                               class="picbox">
                                <img src="${p1.play_image}" alt="${p1.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p1.play_id}">${p1.play_name}</a>
                                <div class="info-head">${p1.play_time}分钟 -
                                    <a> ${p1.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p1.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p1.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p2" items="${list2}" begin="0">
                        <li class="clearfix">
                            <a title="${p2.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}"
                               class="picbox">
                                <img src="${p2.play_image}"
                                     alt="${p2.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}">${p2.play_name}</a>
                                <div class="info-head">${p2.play_time}分钟 -
                                    <a> ${p2.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p2.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p2" items="${list3}" begin="0">
                        <li class="clearfix">
                            <a title="${p2.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}"
                               class="picbox">
                                <img src="${p2.play_image}"
                                     alt="${p2.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}">${p2.play_name}</a>
                                <div class="info-head">${p2.play_time}分钟 -
                                    <a> ${p2.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p2.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p2" items="${list4}" begin="0">
                        <li class="clearfix">
                            <a title="${p2.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}"
                               class="picbox">
                                <img src="${p2.play_image}"
                                     alt="${p2.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}">${p2.play_name}</a>
                                <div class="info-head">${p2.play_time}分钟 -
                                    <a> ${p2.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p2.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p2" items="${list5}" begin="0">
                        <li class="clearfix">
                            <a title="${p2.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}"
                               class="picbox">
                                <img src="${p2.play_image}"
                                     alt="${p2.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}">${p2.play_name}</a>
                                <div class="info-head">${p2.play_time}分钟 -
                                    <a> ${p2.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p2.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p2" items="${list6}" begin="0">
                        <li class="clearfix">
                            <a title="${p2.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}"
                               class="picbox">
                                <img src="${p2.play_image}"
                                     alt="${p2.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}">${p2.play_name}</a>
                                <div class="info-head">${p2.play_time}分钟 -
                                    <a> ${p2.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p2.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="moviemore clearfix item none">
            <div class="othermore">
                <ul class="clearfix">
                    <c:forEach var="p2" items="${list7}" begin="0">
                        <li class="clearfix">
                            <a title="${p2.play_name}"
                               href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}"
                               class="picbox">
                                <img src="${p2.play_image}"
                                     alt="${p2.play_name}"/>
                            </a>
                            <div class="info">
                                <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${p2.play_id}">${p2.play_name}</a>
                                <div class="info-head">${p2.play_time}分钟 -
                                    <a> ${p2.play_type}</a>
                                </div>
                                <div class="hot">
                                    <i class="ico_dot"></i> ${p2.play_desc}
                                </div>
                                <div class="btns">
                                    <a class="ticket"
                                       href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}">选座购票</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>

    </div>
</div>
<!-- 即将上映 -->
<div class="upcoming clearfix">
    <div class="title clearfix">
        <h2>
            即将上映&nbsp;
        </h2>
    </div>
</div>
<div id="four_flash" class="clearfix">
    <!-－每一个li元素代表一个电影部分 -->
    <div class="othermore clearfix">
        <ul class="mobile clearfix">
            <c:forEach var="up" items="${upPlays}" begin="0">
                <li class="clearfix">

                    <a title="${up.play_name}"
                       href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${up.play_id}" class="picbox">
                        <img src="${up.play_image}" alt="${up.play_name}"/>
                    </a>
                    <div class="info">
                        <a href="${pageContext.request.contextPath}/play/doInfo.do?play_id=${up.play_id}">${up.play_name}</a>
                        <div class="info-head">
                            <a> ${up.play_type}</a>
                        </div>
                        <p>导演：${up.play_author}</p>
                    </div>
                    <p class="chao">
                        <a href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${p2.play_id}"　style="color:#fff" class="posiA"
                        >超前预售</a>
                    </p>
                </li>
            </c:forEach>
        </ul>
    </div>
    <!-- 左右按钮 -->
    <div class="but_left"><span class="iconfont">&#xe606;</span></div>
    <div class="but_right"><span class="iconfont">&#xe603;</span></div>
</div>

<!-- ｂｏｔｔｏｍ -->
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
<!-- link to top -->
<span>
        <p id="back-to-top"><a href="#top"><span class="iconfont">&#xe607;</span></a>
    </p>
    </span>


<script src="${pageContext.request.contextPath}/miao/js/jquery.1.js"></script>
<script src="${pageContext.request.contextPath}/miao/js/upcpming.js"></script>
<script src="${pageContext.request.contextPath}/miao/js/index1.js"></script>
<script src="${pageContext.request.contextPath}/miao/js/slide.js"></script>

</body>

</html>