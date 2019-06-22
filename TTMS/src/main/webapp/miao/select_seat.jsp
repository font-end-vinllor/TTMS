<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>select_seat</title>
    <link rel="stylesheet" href="<%=basePath%>/miao/css/select_seat.css">
    <link rel="stylesheet" href="<%=basePath%>/miao/css/head_bottom.css">
    <link rel="stylesheet" href="<%=basePath%>/miao/css/info_nav.css">
</head>

<body>
<!--导航-->
<%@ include file="nav.jsp" %>
<div class="db-bodyout">
    <div class="db-bodybg"></div>
    <div style="min-height:35px; _height:35px;"></div>
    <div class="db_shadow">
        <div class="db_topcont">
            <div class="db_head">
                <div class="db_coverout">
                    <div class="db_coverinner">
                        <div class="db_coverpicbox">
                            <div class="db_cover">
                                <a href="javascript:void(0)" title="${info1.play_name}">
                                    <img alt="${info1.play_name}" src="${info1.play_image}" width="270px"
                                         height="405px">
                                </a>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="db_ihead">
                    <div class="db_head">
                        <div class="clearfix">
                            <h1 style="font-size:35px;" property="v:itemreviewed">${info1.play_name}</h1>
                            <a class="love" id="love"><span class="iconfont" style="font-size: 30px;" id="shoucang"
                                                            myvalue="xe640">&#xe640;</span></a>

                        </div>
                        <div class="otherbox">
                            <span property="v:runtime" content="181分钟">${info1.play_time}分钟</span> -
                            <span>${info1.play_type} - 2019年4月24日中国上映 </span>
                        </div>
                    </div>
                    <div id="four_flash">
                        <div class="othermore">
                            <ul class="mobile clearfix" id="mobile">
                                <c:forEach var="d" items="${dates}" begin="0" end="5">
                                    <li class="clearfix">
                                        <a class="date-val">${d}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <a class="but_left visi">&nbsp;</a>
                        <a class="but_right">&nbsp;</a>

                    </div>

                    <div class="movieline"> &nbsp;</div>
                    <div class="mark_banner"> 以下信息均为喵喵网自营</div>
                </div>
            </div>
            <div class="db_contout clearfix">

                <div class="db_buy">
                    <span>选座购票</span>
                </div>
                <div class="clearfix">
                    <div class="ci_filmbox" id="filmbox">


                        <table class="playtime">
                                <c:forEach var="p" items="${schMap}" begin="0" end="0">
                                    <tr class="first clearfix">
                                        <td class="tl">
                                            <div class="p_r">
                                                <p class="ci_p_time">${p.value.get(0).schedule_time}</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p>${p.value.get(0).studio_name}</p>

                                        </td>
                                        <td>
                                            <div class="p_r">

                                                <p class="px12">${p.value.get(0).seatCount}座</p>
                                            </div>
                                        </td>
                                        <td newprice="74" oldprice="0">
                                            <p class="newprice"><span>¥</span>${p.value.get(0).price}</p>

                                        </td>
                                        <td class="tr">
                                            <a class="ico_c_ticket " href="${pageContext.request.contextPath}/seat/ticket.do?play_id=${info1.play_id}&&schedule_id=${p.value.get(0).schedule_id}">选座购票</a>
                                        </td>
                                    </tr>
                                </c:forEach>


                            </table>

                        <c:forEach var="date" items="${schMap}" begin="1" end="${schMap.size()}">

                            <table class="playtime none">
                                <c:forEach var="p" items="${date.value}" begin="0">
                                    <tr class="first clearfix">
                                        <td class="tl">
                                            <div class="p_r">
                                                <p class="ci_p_time">${p.schedule_time}</p>
                                            </div>
                                        </td>
                                        <td>
                                            <p>${p.studio_name}</p>

                                        </td>
                                        <td>
                                            <div class="p_r">

                                                <p class="px12">${p.seatCount}座</p>
                                            </div>
                                        </td>
                                        <td newprice="74" oldprice="0">
                                            <p class="newprice"><span>¥</span>${p.price}</p>

                                        </td>
                                        <td class="tr">
                                            <a class="ico_c_ticket " href="${pageContext.request.contextPath}/seat/ticket.do?play_id=${info1.play_id}&&schedule_id=${p.schedule_id}">选座购票</a>
                                        </td>
                                    </tr>
                                </c:forEach>


                            </table>
                        </c:forEach>
                    </div>


                </div>

            </div>
        </div>

    </div>
</div>
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
<script src="<%=basePath%>/miao/js/index1.js"></script>
<script src="<%=basePath%>/miao/js/jquery.js"></script>
<script src="<%=basePath%>/miao/js/upcpming.js"></script>
<script>
    var love = $("#love");
    var shoucang = $("#shoucang").attr("myvalue");

    love.click(
        function () {
            if (shoucang == "xe640") {
                love.html("<span class='iconfont' style='font-size: 30px;' id='shoucang' myvalue='xe609'>&#xe609;</span>");
                shoucang = $("#shoucang").attr("myvalue");
            } else if (shoucang == "xe609") {
                love.html("<span class='iconfont' style='font-size: 30px;' id='shoucang' myvalue='xe640'>&#xe640;</span>");
                shoucang = $("#shoucang").attr("myvalue");
            }
        }
    );

    var mobile = document.getElementById("mobile").getElementsByTagName("li");
    var filmbox = document.getElementById("filmbox").getElementsByTagName("table");
    mobile[0].classList.add("curr");
    for (var i = 0; i < mobile.length; i++) {
        mobile[i].onclick = showlist;
    }

    function showlist() {
        for (var i = 0; i < mobile.length; i++) {
            if (mobile[i] === this) {
                mobile[i].classList.add("curr");
                filmbox[i].classList.remove("none");

            } else {
                mobile[i].classList.remove("curr");
                filmbox[i].classList.add("none");
            }
        }
    }



</script>
</body>

</html>