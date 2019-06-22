<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-7
  Time: 下午2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page3</title>
    <link rel="stylesheet" href="../css/forgetPass.css"/>
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
    <div class="for-liucheng">
        <div class="liulist for-cur"></div>
        <div class="liulist for-cur"></div>
        <div class="liulist for-cur"></div>
        <div class="liulist for-cur"></div>
        <div class="liutextbox">
            <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
            <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
            <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
            <div class="liutext for-cur"><em>4</em><br /><strong>完成</strong></div>
        </div>
    </div><!--for-liucheng/-->
    <div class="successs">
        <h3>恭喜您，修改成功！</h3>
    </div>
</div><!--web-width/-->
</div><!--content/-->
<script src="${pageContext.request.contextPath}/miao/js/jquery.min.js"></script>
<script>
    window.localStorage.removeItem("qq");
    window.localStorage.removeItem("user_name");
</script>
</body>

</html>
