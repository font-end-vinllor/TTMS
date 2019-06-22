<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录注册界面</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/miao/css/login_register.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/test_ma.css">
    <style>
        #msg {
            width: 100%;
            line-height: 40px;
            font-size: 14px;
            text-align: center;
        }

        #jPassword, .jUsername, #jUserQQ, #jPassword1, .jUsername1, .jPassword2 {
            margin-top: 3px;
            margin-left: 5px;
            color: #007bc4;
        }

        /*　　　背景图片*/

        html {
            background: url("${pageContext.request.contextPath}/miao/images/001.jpg") no-repeat 50% 70%;
            background-size: cover;
            height: 100%;
        }

        body {
            max-width: 40em;
            margin: 0 auto;
            color: #6a6f8c;
            font: 600 16px/18px 'Open Sans', sans-serif;
        }

        img {
            max-width: 110%;
        }

        .polaroid {
            position: absolute;
            top: 5em;
            left: 50%;
            width: 50%;
            padding-bottom: 30%;
            max-width: 20em;
            -webkit-transform: translateX(-50%);
            transform: translateX(-50%);
            border-style: solid;
            border-color: #fff;
            border-width: 1em 1em 4.5em;
            box-shadow: 0 0 1em rgba(153, 153, 153, 0.4), 0 0 25em rgba(0, 0, 0, 0.7), 0 0 30em rgba(0, 0, 0, 0.5), 0 0 40em #000;
            -webkit-animation: swing 3.5s ease-in-out forwards infinite;
            animation: swing 3.5s ease-in-out forwards infinite;
            -webkit-transform-origin: 50% -10em;
            transform-origin: 50% -10em;
        }

        .polaroid::before,
        .polaroid::after {
            content: '';
            position: absolute;
            bottom: 100%;
            height: 10em;
            width: 0.2em;
            background-color: #000;
        }

        .polaroid::before {
            -webkit-transform: skew(3deg);
            transform: skew(3deg);
            left: 0.5em;
        }

        .polaroid::after {
            -webkit-transform: skew(-3deg);
            transform: skew(-3deg);
            right: 0.5em;
        }

        @-webkit-keyframes swing {
            0% {
                -webkit-transform: translateX(-50%) rotate(10deg);
                transform: translateX(-50%) rotate(10deg);
            }
            50% {
                -webkit-transform: translateX(-50%) rotate(-10deg) skewX(5deg) skewY(-2deg) scale(1.1);
                transform: translateX(-50%) rotate(-10deg) skewX(5deg) skewY(-2deg) scale(1.1);
            }
            100% {
                -webkit-transform: translateX(-50%) rotate(10deg);
                transform: translateX(-50%) rotate(10deg);
            }
        }

        @keyframes swing {
            0% {
                -webkit-transform: translateX(-50%) rotate(10deg);
                transform: translateX(-50%) rotate(10deg);
            }
            50% {
                -webkit-transform: translateX(-50%) rotate(-10deg) skewX(5deg) skewY(-2deg) scale(1.1);
                transform: translateX(-50%) rotate(-10deg) skewX(5deg) skewY(-2deg) scale(1.1);
            }
            100% {
                -webkit-transform: translateX(-50%) rotate(10deg);
                transform: translateX(-50%) rotate(10deg);
            }
        }
    </style>
</head>

<body>
<div class="jq22-container" style="padding-top:100px">


    <div class="polaroid"></div>
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登录</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
            <div class="login-form">
                <%--登录--%>
                <form action="${pageContext.request.contextPath}/user/doLogin.do" method="post" id="addForm"
                      onsubmit="return false">
                    <div class="sign-in-htm">
                        <div class="group">
                            <label for="username" class="label">用户名</label>
                            <input id="username" name="user_name" type="text" class="input" placeholder="请输入用户名或邮箱">

                            <div class="jUsername1"></div>
                        </div>
                        <div class="group">
                            <label for="password" class="label">密码</label>
                            <input id="password" name="user_password" type="password" class="input" data-type="password"
                                   placeholder="请输入密码">
                            <div class="jPassword2"></div>
                        </div>
                        <div class="group">
                            <div class="container">
                                <div id="captcha" style="position: relative" data-type="password"></div>
                                <div id="msg"></div>
                            </div>
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked name="checkRe" value="haschecked">
                            <label for="check"><span class="icon"></span> 记住账号</label>
                        </div>
                        <div class="group">
                            <input type="button" class="button" value="登录" id="loginIn">
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="${pageContext.request.contextPath}/miao/otherPage/forgetPass.jsp">忘记密码?</a>
                        </div>
                    </div>
                </form>
                <%--                注册页面--%>
                <form method="post" action="" name="form1" onsubmit="return register()">
                    <div class="sign-up-htm">
                        <div class="group">
                            <label for="user" class="label">用户名</label>
                            <input name="user_name" id="user" type="text" class="input">
                            <div class="jUsername"></div>
                        </div>
                        <div class="group">
                            <label for="pass" class="label">密码</label>
                            <input name="user_password" id="pass" type="password" class="input" data-type="password">
                            <div id="jPassword1"></div>
                        </div>
                        <div class="group">
                            <label for="pass_a" class="label">重复密码</label>
                            <input name="user_password1" id="pass_a" type="password" class="input" data-type="password">
                            <div id="jPassword"></div>
                        </div>
                        <div class="group">
                            <label for="qq" class="label">QQ</label>
                            <input name="user_qq" id="qq" type="text" class="input">
                            <div id="jUserQQ"></div>

                        </div>
                        <div class="group" id="qq-ma" style="display: none">
                            <input id="ma" type="text" class="input1">
                            <a class="test-ma" id="sending">发送验证码</a>

                        </div>

                        <div class="group">
                            <a><input type="submit" class="button" value="注册"></a>
                        </div>
                        <div id="judge"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/miao/js/test_ma.js"></script>
<script src="${pageContext.request.contextPath}/miao/js/jquery.min.js"></script>

<script>


    var user = $(".jUsername");  //注册
    var user1 = $(".jUsername1") //登录
    var password = $("#jPassword"); //pass_again
    var password1 = $("#jPassword1");//pass
    var password2 = $(".jPassword2");
    //登录时判断用户名是否空着
    $("#username").blur(
        function () {
            if ($("#username").val() == "") {
                user1[0].innerHTML = "用户名不能为空";
            } else {
                user1[0].innerHTML = "";
            }

        }
    );
    $("#password").blur(
        function () {
            if ($("#password").val() == "") {
                password2[0].innerHTML = "密码不能为空";
            } else {
                password2[0].innerHTML = "";
            }


        }
    );
    $.post("${pageContext.request.contextPath}/user/getCookie.do", function (e) {
        if (e != null) {
            $("#username").val(e);
        }
    });
    $("#loginIn").click(function () {
            if ($("#username").val() != "" && $("#password").val() != "") {
                var tarUrl = $("#addForm").attr("action");
                $.ajax(
                    {
                        async: false,
                        type: 'post',
                        url: tarUrl,
                        cache: false,
                        data: {
                            "user_name": $("#username").val(),
                            "user_password": $("#password").val(),
                            "reme": $("#check").attr("value")
                        },
                        dataType: 'text',
                        success: function (e) {
                            if (e) {

                                window.localStorage.setItem("success", $("#username").val());
                                if (e == "ok") {
                                    window.location.href = "${pageContext.request.contextPath}/play/index.do";
                                }
                                else{
                                    window.location.href = "${pageContext.request.contextPath}"+e;
                                }
                            } else {
                                $("#msg")[0].innerHTML = "用户名或密码错误";
                            }
                        }

                    }
                );
            } else if ($("#password").val() == "") {
                password2[0].innerHTML = "密码不能为空";

            } else if ($("#username").val() == "") {
                user1[0].innerHTML = "用户名不能为空";

            }

        }
    );

    <%--验证码框--%>
    $("#qq").click(
        function () {
            $("#qq-ma").css("display", "block");
        }
    );

    <%--  注册时判断用户名是否存在--%>

    $("#user").blur(
        function () {
            if ($("#user").val() == "") {
                user[0].innerHTML = "用户名不能为空";
                return;
            } else {
                user[0].innerHTML = "";
            }
            if ($("#user").val().length > 16) {
                user[0].innerHTML = "长度不能超过16位";
            } else {
                user[0].innerHTML = "";
            }
            $.post("${pageContext.request.contextPath}/user/judgeUserName.do", {"user_name": $("#user").val()}, function (e) {
                if (e == "ok") {
                    user[0].innerHTML = "该用户名已存在";
                }

            });

        }
    );


    //验证qq是否符合格式
    var qq = $("#jUserQQ");
    $("#qq").blur(
        function () {
            if ($("#qq").val().length == 0) {
                qq[0].innerHTML = "qq不能为空";
                return;
            } else {
                qq[0].innerHTML = "";
            }
            $.get("${pageContext.request.contextPath}/user/judgeQQ.do", {"user_qq": $("#qq").val()},
                function (e) {
                    if (e == "right") {
                        qq[0].innerHTML = "qq号格式不正确";
                    }
                });
        }
    );
    //  第一次输入密码不能为空

    $("#pass").blur(
        function () {
            if ($("#pass").val() == "") {
                password1[0].innerHTML = "密码不能为空";
            } else if ($("#pass").val().length > 16) {
                password1[0].innerHTML = "长度不能超过16位";
            } else {
                password1[0].innerHTML = "";
            }
        }
    );
    //判断两次输入的密码是否一致

    $("#pass_a").blur(
        function () {


            if ($("#pass_a").val() == "") {
                password[0].innerHTML = "密码不能为空";
            } else if ($("#pass").val() != $("#pass_a").val()) {
                password[0].innerHTML = "两次密码输入不一致";
            } else {
                password[0].innerHTML = "";
            }

        }
    );


    //判断提示是否还存在,如果还存在,说明有内容不符合
    var code;
    var flag;

    $("#ma").blur(function () {

            $.get("${pageContext.request.contextPath}/user/judgeCode.do", {"code": $("#ma").val(), "right": code},
                function (e) {
                    flag = e;


                }
            );

        }
    );

    function register() {
        if (flag == "ok") {
            alert("验证成功");

        } else {
            alert("验证码错误");
        }
        if (qq[0].innerHTML == "" && user[0].innerHTML == "" && password[0].innerHTML == "" && password1[0].innerHTML == "" && flag == "ok") {
            document.form1.action = "${pageContext.request.contextPath}/user/doRegister.do";
            return true;
        } else {
            $("#judge")[0].innerHTML = "有内容没填或不符合格式";
            return false;

        }
    }

    //    发送用户填写的验证码到sendMa.do

    $("#sending").click(
        function () {
            $.get("${pageContext.request.contextPath}/user/doSendMa.do", {
                    "getQQ": $("#qq").val()
                },
                function (e) {
                    code = e;
                    alert("发送验证码成功");

                }
            );
        }
    )


</script>
</body>
</html>