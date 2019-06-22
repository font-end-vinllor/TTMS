<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-7
  Time: 下午2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page2</title>
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link rel="stylesheet" href="../css/forgetPass.css">
</head>
<body>
<div class="forget-header">
    <div class="header-left">
        <p class="sub-title sub-change">安全中心</p>
        <p class="sub-title">重置密码</p>
        <a class="sub-aga" href="${pageContext.request.contextPath}/user/register.do">登录</a>
    </div>

</div>
<div class="content">
    <div class="web-width">
        <div class="for-liucheng">
            <div class="liulist for-cur"></div>
            <div class="liulist for-cur"></div>
            <div class="liulist for-cur"></div>
            <div class="liulist"></div>
            <div class="liutextbox">
                <div class="liutext for-cur"><em>1</em><br/><strong>填写账户名</strong></div>
                <div class="liutext for-cur"><em>2</em><br/><strong>验证身份</strong></div>
                <div class="liutext for-cur"><em>3</em><br/><strong>设置新密码</strong></div>
                <div class="liutext"><em>4</em><br/><strong>完成</strong></div>
            </div>
        </div><!--for-liucheng/-->
        <form action="" method="post" class="forget-pwd" onsubmit="return before()" name="form2">

            <dl>
                <dt>新密码：</dt>
                <dd><input type="text" id="pass"/></dd>
                <div class="clears"></div>
                <div class="p2-pass"></div>
            </dl>
            <dl>
                <dt>确认密码：</dt>
                <dd><input type="password" id="pass-a"/></dd>
                <div class="clears"></div>
                <div class="p2-pass1"></div>
            </dl>

            <div class="subtijiao"><input type="submit" value="提交"/></div>
        </form><!--forget-pwd/-->
    </div><!--web-width/-->
</div><!--content/-->
<script src="../js/jquery.min.js"></script>
<script>
    $("#pass").blur(
        function () {
            if ($("#pass").val() == "") {
                $(".p2-pass")[0].innerHTML = "密码不能为空";
            } else {
                $(".p2-pass")[0].innerHTML = "";
            }
        }
    );


    var user_name = localStorage.getItem("user_name");

    function before() {

        if ($("#pass").val() != $("#pass-a").val()) {
            $(".p2-pass1")[0].innerHTML = "密码输入不一致";
            return false;
        }
        if ($("#pass").val() == $("#pass-a").val()&&$("#pass").val()!="" && $("#pass-a").val()!="" ) {
            $(".p2-pass1")[0].innerHTML = "";



            $.post("${pageContext.request.contextPath}/forPwd/modifyPwd.do", {
                "user_name": user_name,
                "user_pwd": $("#pass").val()
            },function(e){
                alert(e);
            });

            document.form2.action = "forgetPass3.jsp";
            return true;
        } else return false;
    }

</script>
</body>
</html>
