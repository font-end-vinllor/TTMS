<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css">

    <style>
        .trade_head {
            background: #1c7ca9;
            height: 160px;
            width: 100%;
            position: relative;
        }
        
        .trade_head .container {
            width: 80%;
            height: 30px;
            position: absolute;
            bottom: 10px;
            left: 10%;
        }
        
        .container span {
            font-size: 24px;
            color: #fff;
            line-height: 26px;
        }
        
        .cart_none {
            position: relative;
            zoom: 1;
            padding: 80px 0 0 395px;
            min-height: 545px;
            font-size: 18px;
        }
        
        .cart_none .img {
            background: url("${pageContext.request.contextPath}/miao/images/tipimg.jpg") no-repeat -355px 0;
            width: 194px;
            min-height: 341px;
            position: absolute;
            left: 175px;
            top: 80px;
        }
        
        .cart_none p {
            padding-top: 65px;
            line-height: 2em;
        }
        
        .cart_none p a {
            color: #1c7ca9;
        }
    </style>
</head>

<body>
   <%@ include file="nav.jsp"%>
    <!--love-->
    <div class="trade_head">
        <div class="container">
            <span>我的收藏夹</span>
        </div>
    </div>
    <div class="cart_none">
        <span class="img"></span>
        <p>&nbsp;&nbsp;&nbsp;&nbsp嘿！ 您还没有订单哦，登录,后查看之前加入的商品

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
    <script src="js/index1.js"></script>
</body>

</html>