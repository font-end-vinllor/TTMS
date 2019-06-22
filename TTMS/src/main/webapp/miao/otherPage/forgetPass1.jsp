<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-7
  Time: 下午2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page2</title>
    <link rel="stylesheet" href="../css/forgetPass.css"/>
</head>
<body>
<div class="forget-header">
    <div class="header-left">
        <p class="sub-title sub-change">安全中心</p>
        <p class="sub-title">重置密码</p>
        <a class="sub-aga" href="${pageContext.request.contextPath}/user/register.do"">登录</a>
    </div>

</div>
<div class="content">
    <div class="web-width">
        <div class="for-liucheng">
            <div class="liulist for-cur"></div>
            <div class="liulist for-cur"></div>
            <div class="liulist"></div>
            <div class="liulist"></div>
            <div class="liutextbox">
                <div class="liutext for-cur"><em>1</em><br/><strong>填写账户名</strong></div>
                <div class="liutext for-cur"><em>2</em><br/><strong>验证身份</strong></div>
                <div class="liutext"><em>3</em><br/><strong>设置新密码</strong></div>
                <div class="liutext"><em>4</em><br/><strong>完成</strong></div>
            </div>
        </div><!--for-liucheng/-->
        <form action="forgetPass2.jsp" method="post" class="forget-pwd" onsubmit="return before()">


            <dl class="sel-yzyx">
                <dt>已验证邮箱：</dt>
                <dd><input type="text" id="mail" readonly/></dd>
                <div class="clears"></div>
            </dl>
            <dl>
                <dt>邮箱校验码：</dt>
                <dd><input type="text" id="fill"/>
                    <button id="ma">获取邮箱验证码</button>
                    <div id="warns"></div>
                </dd>
                <div class="clears"></div>
            </dl>
            <div class="subtijiao"><input type="submit" value="提交"/></div>
        </form><!--forget-pwd/-->
    </div><!--web-width/-->
</div><!--content/-->
<script src="../js/jquery.min.js"></script>
<script>
    <%--获取url后的参数--%>


    var content;
    var qq = localStorage.getItem("qq");
    $("#mail").val(qq + "@qq.com");
    $("#ma").click(
        function () {
            $.post("${pageContext.request.contextPath}/user/doSendMa.do", {"getQQ": qq},
                function (e) {
                    content = e;
                    alert("验证码已发送")
                }
            );
        }
    );

    $("#fill").blur(
        function () {
            if ($("#fill").val() == "") {

                $("#warns")[0].innerHTML = "请填写验证码";

            }

             else if($("#fill").val() != content) $("#warns")[0].innerHTML = "验证码不正确";
        }
    );


    function before() {
        if ($("#fill").val() == content) {
            $("#warns")[0].innerHTML = "";
            return true;
        }
       else
            return false;
    }
</script>
</body>
</html>
