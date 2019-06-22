<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-7
  Time: 下午2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page1</title>
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
    <div class="web-width">
        <div class="for-liucheng">
            <div class="liulist for-cur"></div>
            <div class="liulist"></div>
            <div class="liulist"></div>
            <div class="liulist"></div>
            <div class="liutextbox">
                <div class="liutext for-cur"><em>1</em><br/><strong>填写账户名</strong></div>
                <div class="liutext"><em>2</em><br/><strong>验证身份</strong></div>
                <div class="liutext"><em>3</em><br/><strong>设置新密码</strong></div>
                <div class="liutext"><em>4</em><br/><strong>完成</strong></div>
            </div>
        </div>
        <!--for-liucheng/-->
        <form action="" method="post" class="forget-pwd" onsubmit="return before()" name="form1">
            <dl>
                <dt>账户名：</dt>
                <dd><input type="text" id="name"/>
                    <span class="ff"></span>
                </dd>
                <div class="clears"></div>
            </dl>
            <dl>
                <dt>验证码：</dt>
                <dd>
                    <input type="text" placeholder="请填写验证码" id="yan"/>
                    <div class="yanzma">
                        <canvas id="canvas" width="100px" height="30px"></canvas>
                    </div>
                </dd>
                <div class="clears"></div>
            </dl>
            <div class="subtijiao"><input type="submit" value="提交"/></div>
        </form>
        <!--forget-pwd/-->
    </div>
    <!--web-width/-->
</div>
<!--content/-->
<script src="../js/jquery.min.js"></script>
<script>
    var show_num = [];
    draw(show_num);

    $("#canvas").click(
        function () {
            draw(show_num);
        }
    );
    var flag;

    function before() {
        var yan = $("#yan").val();
        var num = show_num.join("");
        if (yan == "") {
            alert("请输入验证码");
            return false;
        } else if (yan == num && flag != "") {
            $("#yan").val('');
            document.form1.action = "forgetPass1.jsp";
            localStorage.setItem("qq",flag);
            localStorage.setItem("user_name",$("#name").val());

            return true;
        } else {
            alert("验证码不正确,请重新输入!");
            draw(show_num);
            return false;
        }

    }

    //判断失去焦点时的状态,辅助提交前
    $("#name").blur(
        function () {
            if ($("#name").val() == "")
                $(".ff")[0].innerHTML = "请输入用户名";
            else {
                $.post("${pageContext.request.contextPath}/forPwd/getUser.do", {"user_name": $("#name").val()},
                    function (e) {

                        if (e == "") $(".ff")[0].innerHTML = "该用户不存在";
                        else {
                            flag = e;
                            $(".ff")[0].innerHTML = "";
                        }
                    }
                );

            }

        }
    );


    // 生成图片验证码
    function draw(show_num) {
        var canvas_width = $("#canvas")[0].width;
        var canvas_height = $("#canvas")[0].height;
        var paint = $("#canvas")[0];
        var context = paint.getContext("2d");
        paint.width = canvas_width;
        paint.height = canvas_height;
        var code =
            "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
        var rCode = code.split(",");
        var length = rCode.length;
        // 生成随机的四个数字,并且随机设他的位置,把他放在画布上
        for (var i = 0; i < 4; i++) {
            var j = Math.floor(Math.random() * length);
            var deg = Math.random() - 0.4;
            var txt = rCode[j];
            show_num[i] = txt;
            var x = 10 + i * 20;
            var y = 20 + Math.random() * 8;
            context.font = "bold 23px 微软雅黑";
            context.translate(x, y);
            context.rotate(deg);

            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);
            context.rotate(-deg);
            context.translate(-x, -y);


        }
        // 显示线条
        for (var i = 0; i < 5; i++) {
            context.strokeStyle = randomColor();
            // 丢弃任何当前定义的路径并且开始一条新的路径。它把当前的点设置为 (0,0)。
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }
        //验证码上显示小点
        for (var i = 0; i <= 30; i++) {
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }


    }

    function randomColor() {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
</script>
</body>
</html>
