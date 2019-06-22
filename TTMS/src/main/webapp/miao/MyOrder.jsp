<%--
  Created by IntelliJ IDEA.
  User: jwm
  Date: 19-6-13
  Time: 下午7:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>MyOrder</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/MyOrder.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/miao/css/head_bottom.css">
  <style>

      #exitTicket{
          width: 60px;
          height: 40px;
          background-color: #00acff;
          color: #fff;
          font-size: 17px;
          font-weight: 700;
          border-radius: 25px;
      }
  </style>
</head>
<body>

<!--导航-->
<div class="header-top clearfix" id="top-fix">

    <div class="header-logo fl">
        <a href="${pageContext.request.contextPath}/play/index.do">
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
<!--主要内容-->
<div class="row " id="myVue">
    <div class="col-lg-10 col-lg-offset-1">
        <div class="layui-form">
            <table class="ShopCartTable layui-table">
                <thead>
                <tr>
                    <th class="selectLeft">
                        <span class="selectLeftGoods">电影图片</span>
                    </th>
                    <th>电影名称</th>
                    <th>单价</th>
                    <th>下单时间</th>
                    <th>操作</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td class="selectLeft">
							<span class="goodName">
								<img src="${order.play_image}" width="100px" height="150px"/>
							</span>

                        </td>
                        <td>
                            <p>${order.play_name}</p>
                        </td>
                        <td>
                            <p>￥${order.price}</p>
                        </td>
                        <td>
                            <p>${order.date}</p>
                        </td>

                        <td class="gongneng">
                            <p class="deletegoods">
                                <button onclick="deleteTicket(${order.order_id})" id="exitTicket">退票</button>

                            </p>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

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
<script src="${pageContext.request.contextPath}/miao/js/jquery.min.js"></script>
<script>
    var MyName = window.localStorage.getItem("success");
    $("#MyName")[0].innerHTML = MyName;
function deleteTicket(id){
    alert("你确定要退票吗？");
    $.get(
        "${pageContext.request.contextPath}/ticket/deleteTicket.do",
        {"order_id":id},
        function(e){
            alert("退票成功");
            $("#exitTicket")[0].innerHTML = "已退票";
        }

    );
}
</script>
</body>
</html>
