<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>upcoming-info</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/info1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css">
</head>

<body>
    <!--导航-->
  <%@ include file="nav.jsp"%>
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
                                    <a href="javascript:void(0)" title="${info.play_name}">
                                        <img alt="${info.play_name}" src="${info.play_image}" width="270px" height="405px">
                                    </a>
                                    <span class="bg">&nbsp;</span>
                                    <div class="db_wsticket">
                                        <div>
                                            <div class="ticket_price">
                                                <strong>29</strong>元起
                                            </div>
                                        </div>
                                        <p>
                                            <a href="${pageContext.request.contextPath}/play/doScInfo.do?play_id=${info.play_id}" class="btn_ticket">选座购票</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="db_ihead">
                        <div class="db_head">
                            <div class="clearfix">
                                <h1 style="font-size:35px;" property="v:itemreviewed">${info.play_name}</h1>
                                <a class="love" id="love"><span class="iconfont" style="font-size: 30px;" id="shoucang" myvalue="xe640">&#xe640;</span></a>
                            </div>
                            <div class="otherbox">
                                <span property="v:runtime" content="181分钟">${info.play_time}分钟</span> -
                                <span>${info.play_type} - 2019年4月24日中国上映</span>
                            </div>
                        </div>
                        <div class="db_nav clearfix">
                            <span>电影详情</span>
                        </div>
                    </div>
                </div>
                <div class="db_contout clearfix">
                    <div class="clearfix">
                        <div class="base_r">
                            <div class="clearfix pt15">
                                <dl class="info_l">
                                    <dd class="__r_c_"><strong>导演：</strong>
                                        <span>${info.play_author}</span>
                                    </dd>
                                    <dd class="__r_c_"><strong>编剧：</strong>
                                        <span>${info.play_editor}</span>
                                        <span>...</span>
                                    </dd>
                                    <dd class="__r_c_">
                                        <strong>国家地区：</strong>
                                        <span>${info.play_country}</span>
                                    </dd>
                                    <dd class="__r_c_">
                                        <strong>发行公司：</strong>
                                        <span>${info.play_company}</span>
                                        <span>...</span>
                                    </dd>
                                    <dt class="__r_c_">
                                                <h4 class="px14 mt12">
                                                    剧情：</h4>
                                                <p class="mt6 lh18">${info.play_desc}</p>
                                                </p>
                                            </dt>
                                </dl>
                            </div>
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
    <script src="${pageContext.request.contextPath}/miao/js/index1.js"></script>
    <script src="${pageContext.request.contextPath}/miao/js/jquery.js"></script>
    <script type="text/javascript">
        var love = $("#love");
        var shoucang = $("#shoucang").attr("myvalue");

        love.click(
            function() {
                if (shoucang == "xe640") {
                    love.html("<span class='iconfont' style='font-size: 30px;color:red' id='shoucang' myvalue='xe602'>&#xe602;</span>");
                    shoucang = $("#shoucang").attr("myvalue");
                } else if (shoucang == "xe602") {
                    love.html("<span class='iconfont' style='font-size: 30px;color:#0088cc' id='shoucang' myvalue='xe640'>&#xe640;</span>");
                    shoucang = $("#shoucang").attr("myvalue");
                }
            }
        );
    </script>
</body>

</html>