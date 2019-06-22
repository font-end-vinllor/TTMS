<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>seat</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/miao/css/seat.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css"/>

</head>


<body>

<!--导航-->
<div class="header-top clearfix" id="top-fix">

    <div class="header-logo fl">
        <a href="${pageContext.request.contextPath}/user/index.do">
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
        <a href="miao/search.jsp">搜索</a>
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
                <span class="iconfont" style="font-size:30px;">&#xe648;</span>
            </a>
        </div>
    </div>

</div>
<div class="demo clearfix">
    <!---左边座位列表----->
    <div id="seat_area">
        <div class="seat_screen"></div>
        <div class="front" style="background: url('${pageContext.request.contextPath}/miao/images/ticket_screen.jpg') no-repeat center 0;">
    </div>
</div>
<!---右边选座信息----->
<div class="booking_area">
    <div class="tickethead">
        <h2 class="tickettitle">电影票</h2>
    </div>
    <div class="ticketimg">
        <img src="${seat_play.play_image}"/>
        <div class="ticket-info">
            <h2>${seat_play.play_name}</h2>
            <p>类型：${seat_play.play_type}</p>
        </div>
    </div>
    <div class="ticket-buy">
        <p>演出厅：<strong>${seat_sche.studio_name}</strong></p>
        <p>场次：<strong><fmt:formatDate value="${seat_sche.schedule_date}" dateStyle="medium" timeZone="timezone"/>&nbsp;&nbsp;&nbsp;&nbsp;${seat_sche.schedule_time}</strong>
        </p>
        <p>座位：</p>
        <ul id="seats_chose"></ul>
        <p>票价：<strong>${seat_sche.price}元/张</strong></p>
        <p>票数：<strong id="tickects_num">0</strong></p>
        <hr size="2"/>
        <p>总价：<b>￥<span id="total_price">0</span></b></p>

        <!-- <p class="phone_info">接收兑换的邮箱：</p>
        <div class="phone">

            <input type="text" id="phonenumber" placeholder="请输入邮箱" 　 class="ticket_txt" maxlength="13">
        </div> -->
        <div id="legend"></div>
        <!-- <input type="button" value="下一步" class="btn_orange6 new_btn_orange" id="next"> -->
        <a onclick="showSeat()" class="btn_orange6 new_btn_orange" id="next">下一步</a>


    </div>
</div>
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

<script src="${pageContext.request.contextPath}/miao/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/miao/js/jquery.seat-charts.min.js"></script>
<script type="text/javascript">

    var MyName = window.localStorage.getItem("success");
    $("#MyName")[0].innerHTML = MyName;
    var price = ${seat_sche.price}; //电影票价
    var map = [];
    var x = ${seat_stu.studio_rows},
        // 座位定义为几行
        y = ${seat_stu.studio_cols};　　 //几列
　　　　

    //初始化座位的行列
    for (var i = 0; i < x; i++) {
        map[i] = "";
        for (var j = 0; j < y; j++) {
            map[i] += 'c';
        }
    }


    var list = new Array();
    $(document).ready(function () {
        var $cart = $('#seats_chose'), //座位区
            $tickects_num = $('#tickects_num'), //票数
            $total_price = $('#total_price'); //票价总额
        var sc = $('#seat_area').seatCharts({

            map: map,


            naming: { //设置行列等信息
                top: false, //不显示顶部横坐标（行）
                getLabel: function (character, row, column) { //返回座位信息
                    return column;
                }

            },
            legend: { //定义图例
                node: $('#legend'),
                items: [
                    ['c', 'available', '可选座'],
                    ['_', 'unavailable', '已售出']
                ]
            },

            click: function () {
                if (this.status() == 'available') { //若为可选座状态，添加座位
                    //往右边演出票上添加选座信息
                    $('<li>' + (this.settings.row + 1) + '排' + this.settings.label + '座</li>')
                        .attr('id', 'cart-item-' + this.settings.id)
                        //data()为元素附加数据，可以根据名称取回数据
                        .data('seatId', this.settings.id)
                        .appendTo($cart);
                    //第一个座位记为０
                    //设置右边座位数和总票价


                    list.push((this.settings.row + 1) + "_" + this.settings.label);

                    $tickects_num.text(sc.find('selected').length + 1); //统计选票数量
                    $total_price.text(getTotalPrice(sc) + price); //计算票价总金额
                    return 'selected';
                } else if (this.status() == 'selected') { //若为选中状态  删除座位

                    $tickects_num.text(sc.find('selected').length - 1); //更新票数量
                    $total_price.text(getTotalPrice(sc) - price); //更新票价总金额
                    $('#cart-item-' + this.settings.id).remove(); //删除已预订座位

                    list.pop();

                    return 'available';
                } else if (this.status() == 'unavailable') { //若为已售出状态
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });

        //根据演出计划去数据库里面查询所有票的状态为１的
        // window.onload =function(){

        $.post(
            "${pageContext.request.contextPath}/ticket/hasBuy.do",
            {"schedule_id":${seat_sche.schedule_id}},
            function (e) {
                var json = JSON.parse(e);
                sc.get(json).status('unavailable');

            }
        );


        // }
        //设置已售出的座位
        // sc.get(['1_3', '1_4', '4_4', '4_5', '4_6', '4_7', '4_8']).status('unavailable');

    });

    function getTotalPrice(sc) { //计算票价总额
        var total = 0;
        sc.find('selected').each(function () {
            total += price;
        });
        return total;
    }

    //    跳转到订单页面
    function showSeat() {
        var json = JSON.stringify(list);
        window.location.href = "${pageContext.request.contextPath}" + "/order/getOrder.do?play_id=${seat_play.play_id}&schedule_id=${seat_sche.schedule_id}&seatList=" + json;
    }



</script>

</body>

</html>