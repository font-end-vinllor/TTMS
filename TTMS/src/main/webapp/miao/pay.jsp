<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-12
  Time: 上午7:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pay</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/pay.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css">
</head>
<body>
<div class="header-top clearfix" id="top-fix">

    <div class="header-logo fl">
        <a href="${pageContext.request.contextPath}/play/index.do">
            <img src="${pageContext.request.contextPath}/miao/images/cat.png" width="160px" height="170px">
        </a>
    </div>
    <div class="head-font">
        <img src="${pageContext.request.contextPath}/miao/images/head-font.png" width="260px" height="62px"/>
    </div>


    <div class="header-nav fr clearfix">
        <div class="head-cart">
            <a href="javascript:void(0)">
                <span class="iconfont" style="font-size:30px;">&#xe61c;</span>
            </a>
        </div>
        <div class="yuan">

            <a href="javascript:void(0)">
                支付平台
            </a>
            <em></em>
            <a href="javascript:void(0)">喵支付</a>


        </div>

    </div>

</div>

<div class="order-wrapper">
    <div class="order-title">
        MiaoMiao网 -- ${play.play_name}
    </div>
    <div class="order-seller">
        卖家昵称：淘票票-电影
    </div>
    <div class="order-amount">
        <div class="order-real-amount">
            总价：
            <em class="">${schedule.price*tickets.size()}</em>
            元
        </div>
    </div>
</div>
<div class="main-container">
    <div class="container">
        <ul class="saved-card-list">
            <li class="row-container-focus">
                <span class="logo">
                    <img src="${pageContext.request.contextPath}/miao/images/cat.png" width="30px" height="30px;"/>
                </span>
                <span class="channel-name">
                        喵支付
                </span>
                <span class="right">支付<em>${schedule.price*tickets.size()}</em>元</span>
            </li>
        </ul>
        <div style="margin-left: 30px;width:700px;min-height:400px ">
            <br /><br /><br />
            <form action="" method="post" name="payPassword" id="form_paypsw">
                <div
                        id="payPassword_container"
                        class="alieditContainer clearfix"
                        data-busy="0"
                >
                    <label for="payPassword_rsainput" class="i-block">支付密码：</label>
                    <div class="i-block" data-error="i_error">
                        <div class="i-block six-password">
                            <input
                                    class="i-text sixDigitPassword"
                                    id="payPassword_rsainput"
                                    type="password"
                                    autocomplete="off"
                                    required="required"
                                    value=""
                                    name="payPassword_rsainput"
                                    data-role="sixDigitPassword"
                                    tabindex=""
                                    maxlength="6"
                                    minlength="6"
                                    aria-required="true"
                            />
                            <div
                                    tabindex="0"
                                    class="sixDigitPassword-box"
                                    style="width: 180px;"
                            >
                                <i style="width: 29px; border-color: transparent;" class=""
                                ><b style="visibility: hidden;"></b
                                ></i>
                                <i style="width: 29px;"
                                ><b style="visibility: hidden;"></b
                                ></i>
                                <i style="width: 29px;"
                                ><b style="visibility: hidden;"></b
                                ></i>
                                <i style="width: 29px;"
                                ><b style="visibility: hidden;"></b
                                ></i>
                                <i style="width: 29px;"
                                ><b style="visibility: hidden;"></b
                                ></i>
                                <i style="width: 29px;"
                                ><b style="visibility: hidden;"></b
                                ></i>
                                <span
                                        style="width: 29px; left: 0px; visibility: hidden;"
                                        id="cardwrap"
                                        data-role="cardwrap"
                                ></span>
                            </div>
                        </div>
                    </div>
                </div>
                <span class="formatN">请输入6位支付密码( 数字！)</span>
                <div class="sub-con">
                    <input
                            type="submit"
                            value="确认付款"
                            class="paySubmit"
                            id="right"
                    />
                </div>
            </form>
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
<script src="${pageContext.request.contextPath}/miao/js/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/miao/js/jquery-validate.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/miao/js/pay.js"></script>
<script>
    var _formPay = $('#form_paypsw');
    var play_id = window.localStorage.getItem("order_play_id");
    var schedule_id = window.localStorage.getItem("order_schedule_id");


    _formPay.validate({
        rules: {
            'payPassword_rsainput': {
                'minlength': 6,
                'maxlength': 6,
                required: true,
                digits: true,
                numPassword: true,
                echoNum: true,

            }
        },

        messages: {
            'payPassword_rsainput': {
                'required': '<i class="icon icon-attention icon-lg"></i>&nbsp;请填写支付密码',
                'maxlength': '<i class="icon icon-attention icon-lg"></i>&nbsp;密码最多为{0}个字符',
                'minlength': '<i class="icon icon-attention icon-lg"></i>&nbsp;密码最少为{0}个字符',
                'digits': '<i class="icon icon-attention icon-lg"></i>&nbsp;密码只能为数字',
                'numPassword': '<i class="icon icon-attention icon-lg"></i>&nbsp;连号不可用，相同数字不可用（如：123456，11111）',
                'echoNum': '<i class="icon icon-attention icon-lg"></i>&nbsp;连号不可用，相同数字不可用（如：123456，11111）',

            }
        },
        errorPlacement: function (error, element) {
            element.closest('div[data-error="i_error"]').append(error);
        },
        submitHandler: function (form) {
            var pass = $("#payPassword_rsainput").val();
            if (pass == '193116') {
                // var _form = $(form);
                alert("支付成功,请去邮箱查看详情");
                window.location.href = "${pageContext.request.contextPath}/ticket/addTicket.do?play_id=${play.play_id}&schedule_id=${schedule.schedule_id}&code=${code}&seats=${seats[0]},${seats[1]},${seats[2]},${seats[3]},${seats[4]}";
                // form.submit();
            } else {
                alert("支付密码错误");
            }

        }
    });

    var payPassword = $("#payPassword_container"),
        _this = payPassword.find('i'),
        k = 0,
        j = 0,
        password = '',
        _cardwrap = $('#cardwrap');
    //点击隐藏的input密码框,在6个显示的密码框的第一个框显示光标
    payPassword.on('focus', "input[name='payPassword_rsainput']", function () {

        var _this = payPassword.find('i');
        if (payPassword.attr('data-busy') === '0') {
            //在第一个密码框中添加光标样式
            _this.eq(k).addClass("active");
            _cardwrap.css('visibility', 'visible');
            payPassword.attr('data-busy', '1');
        }

    });
    //change时去除输入框的高亮，用户再次输入密码时需再次点击
    payPassword.on('change', "input[name='payPassword_rsainput']", function () {
        _cardwrap.css('visibility', 'hidden');
        _this.eq(k).removeClass("active");
        payPassword.attr('data-busy', '0');
    }).on('blur', "input[name='payPassword_rsainput']", function () {

        _cardwrap.css('visibility', 'hidden');
        _this.eq(k).removeClass("active");
        payPassword.attr('data-busy', '0');

    });

    //使用keyup事件，绑定键盘上的数字按键和backspace按键
    payPassword.on('keyup', "input[name='payPassword_rsainput']", function (e) {

        var e = (e) ? e : window.event;

        //键盘上的数字键按下才可以输入
        if (e.keyCode == 8 || (e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
            k = this.value.length; //输入框里面的密码长度
            l = _this.size(); //6

            for (; l--;) {

                //输入到第几个密码框，第几个密码框就显示高亮和光标（在输入框内有2个数字密码，第三个密码框要显示高亮和光标，之前的显示黑点后面的显示空白，输入和删除都一样）
                if (l === k) {
                    _this.eq(l).addClass("active");
                    _this.eq(l).find('b').css('visibility', 'hidden');

                } else {
                    _this.eq(l).removeClass("active");
                    _this.eq(l).find('b').css('visibility', l < k ? 'visible' : 'hidden');

                }

                if (k === 6) {
                    j = 5;
                } else {
                    j = k;
                }
                $('#cardwrap').css('left', j * 30 + 'px');

            }
        } else {
            //输入其他字符，直接清空
            var _val = this.value;
            this.value = _val.replace(/\D/g, '');
        }
    });

</script>
</body>

</html>
