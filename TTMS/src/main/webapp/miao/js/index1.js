
// 回到顶部
$(function () {
    //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
    $(function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
                $("#back-to-top").fadeIn(1500);
            } else {
                $("#back-to-top").fadeOut(1500);
            }
        });

        //当点击跳转链接后，回到页面顶部位置
        $("#back-to-top").click(function () {
            //$('body,html').animate({scrollTop:0},1000);
            if ($('html').scrollTop()) {
                $('html').animate({
                    scrollTop: 0
                }, 1000);
                return false;
            }
            $('body').animate({
                scrollTop: 0
            }, 1000);
            return false;
        });
    });
});

/*   展示七个链接对应的列表 */
var menu = document.getElementById("menu").getElementsByTagName("a");
var item = document.getElementsByClassName("item");

for (var i = 0; i < menu.length; i++) {
    menu[i].onclick = showlist;
}

function showlist() {
    for (var i = 0; i < menu.length; i++) {
        if (this === menu[i]) {
            menu[i].style.color = '#333';
            item[i].classList.remove("none");
        } else {
            item[i].classList.add("none");
            menu[i].style.color = '#0088cc';
        }
    }
}


// 全部列表的下半部分
var movie_more = $("#moviemore");
var i_more = $("#imore");
var text = i_more.html().trim();
i_more.click(
    function () {
        if (text === "<i></i>更多") {
            movie_more.removeClass("none");
            i_more.html("<i></i>收回");
            text = i_more.html();
        } else if (text === "<i></i>收回") {
            movie_more.addClass("none");
            i_more.html("<i></i>更多");
            text = i_more.html();
        }


    }
);